package com.insticator.backend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.insticator.backend.model.TrxAnswer;
import com.insticator.backend.repository.TrxAnswerRepository;

/** 
 * Implement class of questionAttachmentRepository interface
 */
@Service
public class TrxAnswerService {
	
	@Autowired
	TrxAnswerRepository trxAnswerRepository;

	/**
	 * save a answer transaction information on TrxAnswer table
	 * 
	 * @param  TrxAnswer trx
	 * @return void 
	 * 
	 */	
	public void save(TrxAnswer trx) {
		trxAnswerRepository.save(trx);
	}
}
