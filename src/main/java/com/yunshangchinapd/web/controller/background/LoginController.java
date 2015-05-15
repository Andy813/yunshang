package com.yunshangchinapd.web.controller.background;

import com.yunshangchinapd.web.model.TUser;
import com.yunshangchinapd.web.service.UserServiceI;
import com.yunshangchinapd.web.util.ValidCodeUtils;
import com.yunshangchinapd.web.vo.Json;
import com.yunshangchinapd.web.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by peter on 2015/4/28.
 */

@Controller
@RequestMapping("/toor-mgr")
public class LoginController {
    @Autowired
    private UserServiceI userService;

    @RequestMapping("/validCode")
    public void getCodeValidImage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ValidCodeUtils.getImage(request, response);
    }

    @RequestMapping("/login")
    public String login() {
        return "backend/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public Json login(User user, HttpSession session) {
        Json j = new Json();
        String validCode = (String) session.getAttribute("codeValue");
        System.out.println("validCode:->"+validCode);
        if (user.getValidCode().equalsIgnoreCase(validCode)) {
            TUser tUser = new TUser();
            tUser.setUsername(user.getUsername());
            tUser.setPwd(user.getPwd());
            TUser u = userService.login(tUser);
            if (u != null) {
                session.setAttribute("user", u);
                j.setSuccess(true);
                j.setMsg("验证通过. " + u.getShowname() + ", 欢迎您!");
            } else {
                j.setSuccess(false);
                j.setMsg("验证失败!! 请检查用户名和密码.");
            }
        } else {
            j.setSuccess(false);
            j.setMsg("验证码填写错误,请检查!!");
        }
        return j;
    }

    @RequestMapping("/logout")
    public void logout(HttpSession session) {
        session.removeAttribute("user");
    }

    @RequestMapping("/changePwd")
    @ResponseBody
    public Json changePwd(TUser user,String newPwd,HttpSession session){
        TUser u = (TUser) session.getAttribute("user");
        user.setId(u.getId());
        Json j = new Json();
        if(userService.modifyPwd(u,newPwd)){
            j.setSuccess(true);
            j.setMsg("已成功修改密码,请牢记新密码.");
        }else{
            j.setSuccess(false);
            j.setMsg("旧密码输入错误! 更新密码失败!");
        }
        return j;
    }
}
