package com.insticator.backend.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.insticator.backend.model.QuestionAttachment;

/** 
 * Repository of QuestionAttachments table
 */
public interface QuestionAttachmentRepository  extends JpaRepository<QuestionAttachment, Long>  {
	
	/**
	 * get QuestionAttachments information by question Id
	 * 
	 * @param  Long questionId
	 * @return List<QuestionAttachment> 
	 * 
	 */
	public List<QuestionAttachment> findAllById(Long questionId);
}
