package com.insticator.backend.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.insticator.backend.model.QuestionAttachment;

public interface QuestionAttachmentRepository  extends JpaRepository<QuestionAttachment, Long>  {

	public List<QuestionAttachment> findAllById(Long questionId);
}
