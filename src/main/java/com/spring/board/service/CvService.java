package com.spring.board.service;

import com.spring.board.dao.CvDao;
import com.spring.board.dto.EducationDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CvService {

    @Autowired
    private CvDao educationDao;

    public List<EducationDto> getEducation(EducationDto educationDto) {

        return educationDao.getEducation(educationDto);
    }


}
