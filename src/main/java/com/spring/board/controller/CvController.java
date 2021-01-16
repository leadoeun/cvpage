package com.spring.board.controller;

import com.spring.board.dto.AchievementsDto;
import com.spring.board.dto.BoardDto;
import com.spring.board.dto.EducationDto;
import com.spring.board.service.CvService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping(value = "/cv")
public class CvController {

    @Autowired
    private CvService cvService;

    @RequestMapping(value = "/cvpage")
    public String cvpage(HttpServletRequest request, HttpServletResponse response) {
        return "cv/cvpage";
    }

    @RequestMapping(value = "/education")
    @ResponseBody
    public HashMap<String, Object> getEducation(HttpServletRequest request, HttpServletResponse response, EducationDto educationDto) {
        List<EducationDto> educationDto1 = cvService.getEducation(educationDto);
        HashMap<String, Object> resultMap = new HashMap<String, Object>();
        resultMap.put("list", educationDto1);
        return resultMap;
    }

    @RequestMapping(value = "/educationWrite")
    public String educationWrite(HttpServletRequest request, HttpServletResponse response) {
        return "cv/educationWrite";
    }

    @RequestMapping(value="/insertEducation")
    @ResponseBody
    public EducationDto insertEducation(HttpServletRequest request, HttpServletResponse response, EducationDto educationDto){
        EducationDto educationDto1=cvService.insertEducation(educationDto);

        return educationDto1;
    }

    @RequestMapping(value="/deleteEducation")
    @ResponseBody
    public EducationDto deleteEducation(HttpServletRequest request, HttpServletResponse response, EducationDto educationDto){
        EducationDto educationDto1=cvService.deleteEducation(educationDto);

        return educationDto1;
    }

    @RequestMapping(value = "/achievements")
    @ResponseBody
    public HashMap<String, Object> getAchievements(HttpServletRequest request, HttpServletResponse response, AchievementsDto achievementsDto) {
        List<AchievementsDto> achievementsDto1 = cvService.getAchievements(achievementsDto);
        HashMap<String, Object> achresultMap = new HashMap<String, Object>();
        achresultMap.put("list", achievementsDto1);
        return achresultMap;
    }
}
