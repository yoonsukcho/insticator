package com.insticator.backend.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.insticator.backend.model.*;

/** 
 * Repository of QuestionChoices table
 */
public interface QuestionChoiceRepository extends JpaRepository<QuestionChoice, Long>   {
	
	/**
	 * get multiple choices of question using question ID
	 * 
	 * @param  Long questionId
	 * @return List<QuestionChoice> 
	 * 
	 */
	@Query(value = "select * from QuestionChoices qc where qc.question_id = ?1", nativeQuery = true)
	List<QuestionChoice> findAllById(Long questionId);

}
