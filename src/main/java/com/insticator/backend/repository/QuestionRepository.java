/**
 * 
 */
package com.insticator.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.insticator.backend.model.*;

/**
 * @author yoons
 *
 */
public interface QuestionRepository extends JpaRepository<Question, Long>  {

	/*
	 * public Question getQuestion(Long siteId, String userId);
	 */
	

}
