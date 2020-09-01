package com.damino.web.user.board;

import javax.mail.MessagingException;

public interface MailService {

	public void sendMail(MailVO vo) throws MessagingException;
}
