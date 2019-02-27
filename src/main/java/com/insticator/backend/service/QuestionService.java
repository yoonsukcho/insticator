package com.insticator.backend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.insticator.backend.model.Question;
import com.insticator.backend.repository.QuestionRepository;

/** 
 * Implement class of questionRepository interface 
 */
@Service
public class QuestionService {

	@Autowired
	QuestionRepository questionRepository;
	
	/**
	 * get one Question of given question id
	 * 
	 * @param  Long id
	 * @return Question 
	 * 
	 */	
	public Question getOne(Long id) {
		return questionRepository.getOne(id);
	}
		
}
