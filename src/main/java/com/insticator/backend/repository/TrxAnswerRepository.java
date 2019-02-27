package com.insticator.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.insticator.backend.model.TrxAnswer;

/** 
 * Repository of TrxAnswers table
 */
public interface TrxAnswerRepository extends JpaRepository<TrxAnswer, Long>  {


}
