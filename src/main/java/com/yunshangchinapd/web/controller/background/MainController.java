package com.yunshangchinapd.web.controller.background;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Togo on 2015/5/4.
 */
@Controller
@RequestMapping("/toor-mgr")
public class MainController {
    @RequestMapping("/main")
    public String mainPage() {
        return "backend/main";
    }
}
