package com.insticator.backend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.insticator.backend.model.QuestionAttachment;
import com.insticator.backend.repository.QuestionAttachmentRepository;

/** 
 * Implement class of questionAttachmentRepository interface
 */
@Service
public class QuestionAttachmentService {
	
	@Autowired
	QuestionAttachmentRepository questionAttachmentRepository;

	/**
	 * get all attachment file of given question id
	 * 
	 * @param  Long questionId
	 * @return List<QuestionAttachment> 
	 * 
	 */
	
	public List<QuestionAttachment> findAllById(Long questionId) { 
		return questionAttachmentRepository.findAllById(questionId); 
	}
	
	
}
