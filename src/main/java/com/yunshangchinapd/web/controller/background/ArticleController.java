package com.yunshangchinapd.web.controller.background;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Togo on 2015/5/5.
 */
@Controller
@RequestMapping("/toor-mgr/article")
public class ArticleController {

    @RequestMapping("/list")
    public String list() {
        return "backend/articles";
    }
}
