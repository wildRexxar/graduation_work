package com.example.graduation_project.aspects;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class Logging {
    String username = null;
    private static Logger logger = LoggerFactory.getLogger(Logging.class);

    @Pointcut("execution(void composingEmailMessage(*))")
    private void allMethodsFromMailSenderMessage() {
    }

    @Pointcut("execution(* findAllMessages())")
    private void findAllMessageMethod() {
    }

    @Pointcut("execution(* findMessageByTag(*))")
    private void findMessageByTagMethod() {
    }

    @Pointcut("execution(void saveMessage(*))")
    private void saveMessageMethod() {
    }

    @Pointcut("execution(void saveFile(*, *))")
    private void saveFileMethod() {
    }

    @Pointcut("findAllMessageMethod() || findMessageByTagMethod() || saveMessageMethod() || saveFileMethod()")
    private void allMethodsFromMessageService() {
    }

    @Pointcut("execution(* loadUserByUsername(*))")
    private void loadUserByUsernameMethod() {
    }

    @Pointcut("execution(boolean *User(*))")
    private void addUserMethod() {
    }

    @Pointcut("execution(* findAllUsers())")
    private void findAllUsersMethod() {
    }

    @Pointcut("execution(void saveUser(..))")
    private void saveUserMethod() {
    }

    @Pointcut("execution(void updateUserProfile(..))")
    private void updateUserProfileMethod (){}

    @Pointcut("execution(void subscribeSave(*,*))")
    private void subscribeSaveMethod (){}

    @Pointcut("execution(void unsubscribeSave(*,*))")
    private void unsubbscriveSaveMethod(){}

    @Pointcut("loadUserByUsernameMethod() || addUserMethod() ||findAllUsersMethod()" +
            "|| saveUserMethod() || updateUserProfileMethod() || subscribeSaveMethod()" +
            "|| unsubbscriveSaveMethod()")
    private void allMethodsFromUserService() {
    }

    @Pointcut(" allMethodsFromMailSenderMessage() || allMethodsFromMessageService() || allMethodsFromUserService()")
    private void allMethods() {
    }

    @Around("allMethods()")
    public Object aspectForMailSenderService(ProceedingJoinPoint proceedingJoinPoint)
            throws Throwable {

        MethodSignature methodSignature = (MethodSignature) proceedingJoinPoint.getSignature();

        if(methodSignature.getName().equals("loadUserByUsername")){
            Object[]arguments=proceedingJoinPoint.getArgs();
            username=(String) arguments[0];
        }

        logger.info("User : " + username);
        logger.info("Begin method : methodSignature = " + methodSignature + ";");
        Object targetMethodResult = null;
        try {
            targetMethodResult = proceedingJoinPoint.proceed();
        } catch (Exception e) {
            logger.info("Exception seen " + e);
            throw e;
        }
        logger.info("Method complete successful;");
        logger.info("------------------------------------------------------------\n");
        return targetMethodResult;
    }
}