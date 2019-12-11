package com.team404.util.aop;

import java.util.Arrays;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LogAdvice {

	private static final Logger log = LoggerFactory.getLogger(LogAdvice.class);
	/*
	 log4j 에 선언하기
	<logger name="com.team404.util.aop">
		<level value="info"/>
	</logger>
	 */
	
	//이 프로젝트의 모든 서비스에 대해서, target, args, signature의 실행 정보를 출력하는 aop
	
	@Around("execution(* com.team404.*.service.*ServiceImpl.*(..))")
	public Object allParam(ProceedingJoinPoint jp) {

		log.info("클래스 : " + jp.getTarget());
		log.info("파라미터 : " + Arrays.toString(jp.getArgs()));
		log.info("메서드 : " + jp.getSignature());
		
		long start = System.currentTimeMillis();
		
		Object result=null;
		
		try {
			result = jp.proceed();//이 메서드를 만나야 서비스의 메서드가 실행 됨
		} catch (Throwable e) {
			e.printStackTrace();
		}

		long end = System.currentTimeMillis();
		
		log.info("메서드 수행 시간:" + (end-start)*0.01+"초");
		return result;
	}
	
	
}
