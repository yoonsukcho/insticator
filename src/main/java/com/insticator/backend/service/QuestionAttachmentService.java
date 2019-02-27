package com.insticator.backend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.insticator.backend.model.QuestionAttachment;
import com.insticator.backend.repository.QuestionAttachmentRepository;

@Service
public class QuestionAttachmentService {
	
	@Autowired
	QuestionAttachmentRepository questionAttachmentRepository;
	
	public List<QuestionAttachment> findAllById(Long questionId) { 
		return questionAttachmentRepository.findAllById(questionId); 
	}
	
	
}
