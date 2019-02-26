package com.insticator.backend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.insticator.backend.model.TrxAnswer;
import com.insticator.backend.repository.TrxAnswerRepository;

@Service
public class TrxAnswerService {
	
	@Autowired
	TrxAnswerRepository trxAnswerRepository;
	
	public void save(TrxAnswer trx) {
		trxAnswerRepository.save(trx);
	}
}
