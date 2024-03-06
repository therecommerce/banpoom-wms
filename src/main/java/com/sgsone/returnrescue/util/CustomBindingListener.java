package com.sgsone.returnrescue.util;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
 
 
public class CustomBindingListener implements HttpSessionListener {
    private int userCount;
 
 
    public void sessionCreated(HttpSessionEvent se)  {
    }
 
 
    public void sessionDestroyed(HttpSessionEvent se)  {
        System.out.printf("제거된 SESSIONID %s \n",  se.getSession().getId());
        System.out.printf("로그인된 사용자 수 : %d \n", userCount);
    }
     
}
