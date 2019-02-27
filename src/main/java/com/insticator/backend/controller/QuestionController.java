package com.insticator.backend.controller;

import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.insticator.backend.model.TrxAnswer;
import com.insticator.backend.model.TrxQuestion;
import com.insticator.backend.service.QuestionAttachmentService;
import com.insticator.backend.service.QuestionChoiceService;
import com.insticator.backend.service.QuestionService;
import com.insticator.backend.service.TrxAnswerService;
import com.insticator.backend.service.TrxQuestionService;

/** 
 * Main controller of process question
 */

@Controller
@RequestMapping("/")
public class QuestionController {
	
	//Logger logger = LoggerFactory.getLogger(LoggingController.class);

	@Autowired
	QuestionService questionService;   // table questions handling

	@Autowired
	QuestionChoiceService questionChoiceService;   // table questionChoices handling

	@Autowired
	TrxQuestionService trxQuestionService;   // table rxQuestions handling

	@Autowired
	TrxAnswerService trxAnswerService;   // table trxAnswers handling

	@Autowired
	QuestionAttachmentService questionAttachmentService;   // table questionAttachments handling

	/**
	 * get a initial question depends on Website and user
	 * 
	 * @param  HttpServletRequest request
	 * @return redirect page name 
	 * 
	 */
	
	@GetMapping("/")
	public String getQuestion(HttpServletRequest request) {
		List<Long> ids = trxQuestionService.findLowestNumAnswer("testUser", 1L);

		Long id = (ids.size() == 0)? 1: Long.valueOf(""+ids.get(0));

		request.setAttribute("question", questionService.getOne(id));
		request.setAttribute("choices", questionChoiceService.findAllById(id));
		request.setAttribute("imgs", questionAttachmentService.findAllById(id));
		
		return "index";
	}
	
	/**
	 * get a next question depends on Website and user on result screen 
	 * 
	 * @param  Long siteId
	 * @param  String userId
	 * @param  HttpServletRequest request
	 * @return redirect page name 
	 * 
	 */	
	@PostMapping("/next")
	public String getNextQuestion(@RequestParam Long siteId,
								  @RequestParam String userId,
								  HttpServletRequest request) {

		List<Long> ids = trxQuestionService.findLowestNumAnswer(userId, siteId);
		
		Long id = (ids.size() == 0)? 1: Long.valueOf(""+ids.get(0));
		request.setAttribute("question", questionService.getOne(id));
		request.setAttribute("choices", questionChoiceService.findAllById(id));
		request.setAttribute("imgs", questionAttachmentService.findAllById(id));
		request.setAttribute("questionId", id);
		request.setAttribute("lastUserId", userId);
		request.setAttribute("lastSiteId", siteId);		
		return "index";
	}	

	/**
	 * submit a answer and show the result screen and the right answer 
	 * 
	 * @param  TrxQuestion trx
	 * @param  Long answer
	 * @param  String rightAnswer
	 * @param  HttpServletRequest request
	 * @return redirect page name 
	 * 
	 */	
	@PostMapping("/submit-answer")
	public String saveTask( @ModelAttribute TrxQuestion trx, 
							@RequestParam Long answer,
							@RequestParam Long rightAnswer,
							HttpServletRequest request) {
		
		if (answer == rightAnswer) trx.setCorrect(true);
		else trx.setCorrect(false);
		
		trx.setModifiedAt(new Date());
		
		trxQuestionService.save(trx);
		
		TrxAnswer trxA = new TrxAnswer();
		trxA.setChoiceId(answer);
		trxA.setTrxId(trx.getId());
		trxA.setModifiedAt(new Date());
		
		trxAnswerService.save(trxA);
		
		request.setAttribute("mode", "SHOW_ANSWER");

		Long id = trx.getQuestionId();
		request.setAttribute("question", questionService.getOne(id));
		request.setAttribute("choices", questionChoiceService.findAllById(id));
		request.setAttribute("imgs", questionAttachmentService.findAllById(id));
		request.setAttribute("lastUserId", trx.getUserId());
		request.setAttribute("lastSiteId", trx.getSiteId());
		
		return "index";
	}	
	
	
}
