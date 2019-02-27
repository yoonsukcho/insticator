package com.insticator.backend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.insticator.backend.model.QuestionChoice;
import com.insticator.backend.repository.QuestionChoiceRepository;

/** 
 * Implement class of trxAnswerRepository interface
 */
@Service
public class QuestionChoiceService {
	
	@Autowired
	QuestionChoiceRepository questionChoiceRepository;

	/**
	 * get all multiple choices of given question id
	 * 
	 * @param  Long questionId
	 * @return List<QuestionChoice> 
	 * 
	 */
	public List<QuestionChoice> findAllById(Long questionId) {
		return questionChoiceRepository.findAllById(questionId);
	}
	
}
