package com.spring.board.dao;

import com.spring.board.dto.EducationDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository
public class CvDao {
    @Resource(name = "sqlSession")
    private SqlSession sqlSession;

    private static final String NAMESPACE = "com.spring.board.cvMapper";

    public List<EducationDto> getEducation(EducationDto educationDto) {
        return sqlSession.selectList(NAMESPACE + ".getEducation", educationDto);
    }
}
