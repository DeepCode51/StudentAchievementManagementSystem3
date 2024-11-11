package com.demo.vo;

import java.io.Serializable;

/**
 * 成绩 （t_score表对应的Java实体类）
 */
public class Score implements Serializable {
    private Long id;//主键
    private String scoreName;//姓名
    private String scoreSex;//性别:男/女
    private String scoreClass;//班级
    private String scoreSubject;//学科
    private String scoreTeacher;//教师
    private String scoreScore;//分数
    private String scoreText;//备注

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
    public String getScoreName() {
        return scoreName;
    }

    public void setScoreName(String scoreName) {
        this.scoreName = scoreName;
    }
    public String getScoreSex() {
        return scoreSex;
    }

    public void setScoreSex(String scoreSex) {
        this.scoreSex = scoreSex;
    }
    public String getScoreClass() {
        return scoreClass;
    }

    public void setScoreClass(String scoreClass) {
        this.scoreClass = scoreClass;
    }
    public String getScoreSubject() {
        return scoreSubject;
    }

    public void setScoreSubject(String scoreSubject) {
        this.scoreSubject = scoreSubject;
    }
    public String getScoreTeacher() {
        return scoreTeacher;
    }

    public void setScoreTeacher(String scoreTeacher) {
        this.scoreTeacher = scoreTeacher;
    }
    public String getScoreScore() {
        return scoreScore;
    }

    public void setScoreScore(String scoreScore) {
        this.scoreScore = scoreScore;
    }
    public String getScoreText() {
        return scoreText;
    }

    public void setScoreText(String scoreText) {
        this.scoreText = scoreText;
    }
}
