package com.spring.board.controller;

import com.spring.board.dto.BoardDto;
import com.spring.board.dto.EducationDto;
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
    public EducationDto getEducation(HttpServletRequest request, HttpServletResponse response, BoardDto boardForm){
        EducationDto educationDto = new EducationDto();
        return educationDto;
    }
}
