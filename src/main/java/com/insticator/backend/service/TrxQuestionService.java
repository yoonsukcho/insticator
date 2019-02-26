package com.insticator.backend.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.insticator.backend.model.TrxQuestion;
import com.insticator.backend.repository.TrxQuestionRepository;

@Service
public class TrxQuestionService {
	
	@Autowired
	TrxQuestionRepository trxQuestionRepository;
	
	public void save(TrxQuestion trx) {
		trxQuestionRepository.save(trx);
	}
	
	public List<Long> findLowestNumAnswer(String userId, Long siteId) {
		return trxQuestionRepository.findLowestNumAnswer(userId, siteId);
	}
	
	
}
