package com.armydocs.basic.vo;

import org.springframework.http.HttpStatus;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class Rst {
    public static final String SUCCESS_MESSAGE = "성공";
    public static final String SERVER_ERROR_MESSAGE = "실패";

    private HttpStatus statusCode;
    private String message;
    private Object data;
    private int totalCount;

    public Rst(){}

    public static Rst successInstance(){
        return new Rst().success();
    }

    public Rst success(){
        statusCode = HttpStatus.OK;
        message = SUCCESS_MESSAGE;
        return this;
    }

    public Rst fail(){
        statusCode = HttpStatus.INTERNAL_SERVER_ERROR;
        message = SERVER_ERROR_MESSAGE;
        return this;
    }

    public Rst setStatusCode(HttpStatus statusCode) {
        this.statusCode = statusCode;
        return this;
    }

    public Rst setMessage(String message) {
        this.message = message;
        return this;
    }

    public Rst setTotalCount(int totalCount) {
        this.totalCount = totalCount;
        return this;
    }

    
    public Rst setData(Object data) {
    	this.data = data;
    	return this;
    }
    
    public Object getData() {
        return this.data;
    }
    
    public int getStatusCode() {
        return statusCode.value();
    }
    
}