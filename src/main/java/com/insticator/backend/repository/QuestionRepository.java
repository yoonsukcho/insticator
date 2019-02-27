/**
 * 
 */
package com.insticator.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.insticator.backend.model.*;

/** 
 * Repository of Question table
 */
public interface QuestionRepository extends JpaRepository<Question, Long>  {


}
