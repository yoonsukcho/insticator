package com.insticator.backend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.insticator.backend.service.TrxQuestionService;

@RestController
@RequestMapping("/")
public class TrxQuestionController {

	@Autowired
	TrxQuestionService trxQuestionService;
}
