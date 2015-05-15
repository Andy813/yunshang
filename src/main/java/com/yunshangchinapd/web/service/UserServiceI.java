package com.yunshangchinapd.web.service;

import com.yunshangchinapd.web.model.TUser;

/**
 * Created by peter on 2015/4/29.
 */
public interface UserServiceI {
    /**
     * 用户登录
     * @param user 前端输入查询的参数,用户名或密码
     * @return 用户对象,如果不存在返回null
     */
    public TUser login(TUser user);

    boolean modifyPwd(TUser user, String newPwd);

}
