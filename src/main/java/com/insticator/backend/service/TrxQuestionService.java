package com.insticator.backend.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.insticator.backend.model.TrxQuestion;
import com.insticator.backend.repository.TrxQuestionRepository;

/** 
 * Implement class of trxQuestionRepository interface
 */
@Service
public class TrxQuestionService {
	
	@Autowired
	TrxQuestionRepository trxQuestionRepository;

	/**
	 * save a question transaction information on TrxQuestion table
	 * 
	 * @param  TrxQuestion trx
	 * @return void 
	 * 
	 */	
	public void save(TrxQuestion trx) {
		trxQuestionRepository.save(trx);
	}

	/**
	 * get a next Question id using previous answer data by website and user id
	 * get a list of question id which rarely asked
	 * 
	 * @param  String userId
	 * @param  Long siteId
	 * @return List<Long> 
	 * 
	 */
	public List<Long> findLowestNumAnswer(String userId, Long siteId) {
		return trxQuestionRepository.findLowestNumAnswer(userId, siteId);
	}
	
	
}
