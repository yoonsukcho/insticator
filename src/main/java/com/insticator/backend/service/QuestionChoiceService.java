package com.insticator.backend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.insticator.backend.model.QuestionChoice;
import com.insticator.backend.repository.QuestionChoiceRepository;

@Service
public class QuestionChoiceService {
	
	@Autowired
	QuestionChoiceRepository questionChoiceRepository;
	
	public List<QuestionChoice> findAllById(Long questionId) {
		return questionChoiceRepository.findAllById(questionId);
	}
	
}
