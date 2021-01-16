package com.spring.board.dto;

public class AchievementsDto {
    private String Award;
    private String Awardinfo;
    private String Club;
    private String Clubinfo;
    private String Certification;
    private String Certificationinfo;

    public String getAward() {
        return Award;
    }

    public void setAward(String award) {
        Award = award;
    }

    public String getAwardinfo() {
        return Awardinfo;
    }

    public void setAwardinfo(String awardinfo) {
        Awardinfo = awardinfo;
    }

    public String getClub() {
        return Club;
    }

    public void setClub(String club) {
        Club = club;
    }

    public String getClubinfo() {
        return Clubinfo;
    }

    public void setClubinfo(String clubinfo) {
        Clubinfo = clubinfo;
    }

    public String getCertification() {
        return Certification;
    }

    public void setCertification(String certification) {
        Certification = certification;
    }

    public String getCertificationinfo() {
        return Certificationinfo;
    }

    public void setCertificationinfo(String certificationinfo) {
        Certificationinfo = certificationinfo;
    }

    @Override
    public String toString() {
        return "AchievementsDto{" +
                "Award='" + Award + '\'' +
                ", Awardinfo='" + Awardinfo + '\'' +
                ", Club='" + Club + '\'' +
                ", Clubinfo='" + Clubinfo + '\'' +
                ", Certification='" + Certification + '\'' +
                ", Certificationinfo='" + Certificationinfo + '\'' +
                '}';
    }
}
