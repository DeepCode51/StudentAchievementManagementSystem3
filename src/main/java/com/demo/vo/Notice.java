package com.demo.vo;

import java.io.Serializable;

/**
 * 公告 （t_notice表对应的Java实体类）
 */
public class Notice implements Serializable {
    private Long id;//主键
    private String noticeName;//标题
    private String noticeText;//内容
    private String noticeType;//类型
    private String createDate;//创建时间

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
    public String getNoticeName() {
        return noticeName;
    }

    public void setNoticeName(String noticeName) {
        this.noticeName = noticeName;
    }
    public String getNoticeText() {
        return noticeText;
    }

    public void setNoticeText(String noticeText) {
        this.noticeText = noticeText;
    }
    public String getNoticeType() {
        return noticeType;
    }

    public void setNoticeType(String noticeType) {
        this.noticeType = noticeType;
    }
    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }
}
