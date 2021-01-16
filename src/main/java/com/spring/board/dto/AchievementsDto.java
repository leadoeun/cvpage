package com.spring.board.dto;

public class AchievementsDto {
    private String award;
    private String awardinfo;
    private String club;
    private String clubinfo;
    private String certification;
    private String certificationinfo;

    public String getAward() {
        return award;
    }

    public void setAward(String award) {
        this.award = award;
    }

    public String getAwardinfo() {
        return awardinfo;
    }

    public void setAwardinfo(String awardinfo) {
        this.awardinfo = awardinfo;
    }

    public String getClub() {
        return club;
    }

    public void setClub(String club) {
        this.club = club;
    }

    public String getClubinfo() {
        return clubinfo;
    }

    public void setClubinfo(String clubinfo) {
        this.clubinfo = clubinfo;
    }

    public String getCertification() {
        return certification;
    }

    public void setCertification(String certification) {
        this.certification = certification;
    }

    public String getCertificationinfo() {
        return certificationinfo;
    }

    public void setCertificationinfo(String certificationinfo) {
        this.certificationinfo = certificationinfo;
    }

    @Override
    public String toString() {
        return "AchievementsDto{" +
                "Award='" + award + '\'' +
                ", Awardinfo='" + awardinfo + '\'' +
                ", Club='" + club + '\'' +
                ", Clubinfo='" + clubinfo + '\'' +
                ", Certification='" + certification + '\'' +
                ", Certificationinfo='" + certificationinfo + '\'' +
                '}';
    }
}
