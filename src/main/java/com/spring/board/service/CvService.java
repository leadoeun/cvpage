package com.spring.board.service;

import com.spring.board.dao.CvDao;
import com.spring.board.dto.AchievementsDto;
import com.spring.board.dto.EducationDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CvService {

    @Autowired
    private CvDao cvDao;

    public List<EducationDto> getEducation(EducationDto educationDto) {

        return cvDao.getEducation(educationDto);
    }

    public EducationDto insertEducation(EducationDto educationDto){

        EducationDto educationDto1 =new EducationDto();

        int insertCnt=0;
        insertCnt=cvDao.insertEducation(educationDto);

        if (insertCnt>0){
            educationDto1.setResult("success");
        }
        else{
            educationDto1.setResult("fail");
        }
        return educationDto1;
    }

    public EducationDto deleteEducation(EducationDto educationDto){
        EducationDto educationDto1=new EducationDto();

        int deleteCnt=cvDao.deleteEducation(educationDto);

        if (deleteCnt>0){
            educationDto1.setResult("success");
        }
        else{
            educationDto1.setResult("fail");
        }
        return educationDto1;
    }

    public List<AchievementsDto> getAchievements(AchievementsDto achievementsDto){
        return cvDao.getAchievements(achievementsDto);
    }


}
