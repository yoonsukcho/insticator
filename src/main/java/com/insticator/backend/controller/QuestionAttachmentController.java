package com.insticator.backend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.insticator.backend.service.QuestionAttachmentService;

@RestController
@RequestMapping("/")
public class QuestionAttachmentController {
	
	@Autowired
	QuestionAttachmentService questionAttachmentDAO;
}
