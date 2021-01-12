package com.spring.board.controller;

import com.spring.board.dto.BoardDto;
import com.spring.board.dto.EducationDto;
import com.spring.board.service.CvService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value = "/cv")
public class CvController {

    @Autowired
    private CvService cvService;

    @RequestMapping(value = "/cvpage")
    public String cvpage (HttpServletRequest request, HttpServletResponse response){
        return "cv/cvpage";
    }

    @RequestMapping(value="/education")
    @ResponseBody
    public EducationDto getEducation(HttpServletRequest request, HttpServletResponse response, EducationDto educationDto){
        EducationDto educationDto1 = cvService.getEducation(educationDto);
        return educationDto1;
    }
}
