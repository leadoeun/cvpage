package com.spring.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value = "/cv")
public class CvController {
    @RequestMapping(value = "/cvpage")
    public String cvpage (HttpServletRequest request, HttpServletResponse response){
        return "cv/cvpage";
    }
}
