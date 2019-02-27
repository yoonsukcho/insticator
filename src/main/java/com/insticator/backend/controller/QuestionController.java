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

@Controller
@RequestMapping("/")
public class QuestionController {
	
	//Logger logger = LoggerFactory.getLogger(LoggingController.class);

	@Autowired
	QuestionService questionService;

	@Autowired
	QuestionChoiceService questionChoiceService;

	@Autowired
	TrxQuestionService trxQuestionService;

	@Autowired
	TrxAnswerService trxAnswerService;

	@Autowired
	QuestionAttachmentService questionAttachmentService;

	@GetMapping("/")
	public String getQuestion(HttpServletRequest request) {
		List<Long> ids = trxQuestionService.findLowestNumAnswer("testUser", 1L);

		Long id = (ids.size() == 0)? 1: Long.valueOf(""+ids.get(0));

		request.setAttribute("question", questionService.getOne(id));
		request.setAttribute("choices", questionChoiceService.findAllById(id));
		request.setAttribute("imgs", questionAttachmentService.findAllById(id));
		
		return "index";
	}
	
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
