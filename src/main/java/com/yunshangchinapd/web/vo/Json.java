package com.yunshangchinapd.web.vo;

import java.io.Serializable;

/**
 * User: Peter
 * Date: 13-11-12
 * Time: 上午10:06
 */
public class Json implements Serializable {
    private boolean success;
    private String msg;
    private Object obj;

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getObj() {
        return obj;
    }

    public void setObj(Object obj) {
        this.obj = obj;
    }
}
