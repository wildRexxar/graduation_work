package com.example.social_network.service;

import com.example.social_network.entity.User;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

@Service
public class MailSenderService {
    private JavaMailSender mailSender;

    @Value("${spring.mail.username}")
    private String username;

    MailSenderService(){}

    MailSenderService(JavaMailSender mailSender) {
        this.mailSender = mailSender;
    }

    private void sendMessageToEmail(String emailTo, String subject, String message) {
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setFrom(username);
        mailMessage.setTo(emailTo);
        mailMessage.setSubject(subject);
        mailMessage.setText(message);
        mailSender.send(mailMessage);
    }

    public void composingEmailMessage(User user) {
        if(!StringUtils.isEmpty(user.getEmail())){
            String message = String.format(
                    "Hello, %s \n" + "Please visit this link: "+
                            "http://localhost:8080/activate/%s",
                    user.getUsername()
                    , user.getActivationCode()
            );
            sendMessageToEmail(user.getEmail(),"Activation code", message);
        }
    }
}
