package com.insticator.backend.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.insticator.backend.model.TrxQuestion;

public interface TrxQuestionRepository extends JpaRepository<TrxQuestion, Long>  {

	@Query(value = "SELECT t1.qid FROM (SELECT id as qid from questions WHERE site_id = ?2 ) t1 " + 
			"LEFT JOIN  " + 
			"(SELECT question_id as qid, COUNT(1) as cnt " + 
			" FROM trxquestions " + 
			" where user_id = ?1 " + 
			" and site_id = ?2 " + 
			" GROUP BY question_id) t2  " + 
			" ON t1.qid = t2.qid " + 
			" ORDER BY COALESCE(t2.cnt, 0);", nativeQuery = true)
	List<Long> findLowestNumAnswer(String userId, Long siteId);
	
}
