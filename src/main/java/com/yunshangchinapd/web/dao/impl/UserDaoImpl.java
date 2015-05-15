package com.yunshangchinapd.web.dao.impl;

import com.yunshangchinapd.web.dao.UserDaoI;
import com.yunshangchinapd.web.model.TUser;
import org.springframework.stereotype.Repository;

/**
 * Created by peter on 2015/4/29.
 */
@Repository("userDao")
public class UserDaoImpl extends  BaseDaoImpl<TUser> implements UserDaoI {
}
