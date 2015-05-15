package com.yunshangchinapd.web.service.impl;

import com.yunshangchinapd.web.dao.UserDaoI;
import com.yunshangchinapd.web.model.TUser;
import com.yunshangchinapd.web.service.UserServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by peter on 2015/4/29.
 */
@Service("userService")
public class UserService implements UserServiceI {
    @Autowired
    private UserDaoI userDao;
    @Override
    public TUser login(TUser user) {
        String hql = "from TUser where username=:username and pwd=:pwd";
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("username", user.getUsername());
        params.put("pwd", DigestUtils.md5DigestAsHex(user.getPwd().getBytes()));
        TUser u = userDao.get(hql, params);
        /*
          User us = null;
          if (u != null) {
                us = new User();
                BeanUtils.copyProperties(u, us);
            }
        */
        return u;
    }

    @Override
    public boolean modifyPwd(TUser user, String newPwd) {
        return false;
    }

}
