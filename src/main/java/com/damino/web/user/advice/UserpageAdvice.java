package com.damino.web.user.advice;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class UserpageAdvice {

	@ExceptionHandler(Exception.class)
	public String errorPage(Exception e) {
		e.printStackTrace();
		
		return "error";
	}
}
