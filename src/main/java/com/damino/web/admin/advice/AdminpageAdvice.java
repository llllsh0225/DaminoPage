package com.damino.web.admin.advice;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class AdminpageAdvice {
	/**
	@ResponseStatus(HttpStatus.NOT_FOUND)
	@ExceptionHandler(Exception.class)
	public String notFountErrorPage(Exception e) {
		System.out.println("404 error");
		e.printStackTrace();
		return "error_404";
	}
	


	@ResponseStatus(HttpStatus.UNAUTHORIZED)
	@ExceptionHandler(Exception.class)
	public String unauthorizedError(Exception e) {
		System.out.println("401 error");
		e.printStackTrace();
		return "error_401";
	}
	

	@ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(Exception.class)
	public String serverError(Exception e) {
		System.out.println("500 error");
		e.printStackTrace();
		return "error_500";
	}
	*/

}
