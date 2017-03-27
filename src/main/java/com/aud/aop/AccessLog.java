package com.aud.aop;

import java.util.Date;

import org.aspectj.lang.JoinPoint;
import org.springframework.beans.factory.annotation.Autowired;

import com.aud.mapper.LogMapper;
import com.aud.pojo.Log;

public class AccessLog {
	@Autowired
	private LogMapper logMapper;
	public Long startData;

	public void startTime() {
		startData = System.currentTimeMillis();
	}

	public void addLog(JoinPoint j) {
		if(j.getSignature().getName().equals("setNavMenus")){
			return;
		}
		Log log = new Log();
		log.setClassName(j.getSignature().getDeclaringTypeName());
		log.setMethodName(j.getSignature().getName());
		log.setExecuteTime(System.currentTimeMillis()-startData);
		StringBuilder sb=new StringBuilder("");
		for(Object object : j.getArgs()){
			sb.append(object);
		}
        log.setParameters(sb.toString());
        log.setCreateAt(new Date());
        /*logMapper.insertSelective(log);*/
	}
}