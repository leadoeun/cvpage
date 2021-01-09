package com.spring.board.dto;

public class EducationDto {
    private String date;
    private String institute;
    private String major;
    private double gpa;
    private String etc;

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getInstitute() {
        return institute;
    }

    public void setInstitute(String institute) {
        this.institute = institute;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public double getGpa() {
        return gpa;
    }

    public void setGpa(double gpa) {
        this.gpa = gpa;
    }

    public String getEtc() {
        return etc;
    }

    public void setEtc(String etc) {
        this.etc = etc;
    }

    @Override
    public String toString() {
        return "EducationDto{" +
                "date='" + date + '\'' +
                ", institute='" + institute + '\'' +
                ", major='" + major + '\'' +
                ", gpa=" + gpa +
                ", etc='" + etc + '\'' +
                '}';
    }
}
