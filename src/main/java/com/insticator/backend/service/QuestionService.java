package com.insticator.backend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.insticator.backend.model.Question;
import com.insticator.backend.repository.QuestionRepository;

@Service
public class QuestionService {

	@Autowired
	QuestionRepository questionRepository;
	
	
	public Question getOne(Long id) {
		return questionRepository.getOne(id);
	}
		
	/*
	 * public Question getQuestion(Long siteId, String userId) { return
	 * questionRepository.getQuestion(siteId, userId); }
	 */
}
