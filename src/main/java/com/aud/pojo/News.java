package com.aud.pojo;

import java.util.Arrays;
import java.util.Date;

public class News {
    private Integer id;

    private String title;

    private Date publishAt;

    private String headImg;

    private String subTitle;

    private Integer navmenueId;

    private byte[] content;

    @Override
		public String toString() {
			return "News [id=" + id + ", title=" + title + ", publishAt=" + publishAt + ", headImg=" + headImg + ", subTitle="
			    + subTitle + ", navmenueId=" + navmenueId + ", content=" + Arrays.toString(content) + "]";
		}

		public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Date getPublishAt() {
        return publishAt;
    }

    public void setPublishAt(Date publishAt) {
        this.publishAt = publishAt;
    }

    public String getHeadImg() {
        return headImg;
    }

    public void setHeadImg(String headImg) {
        this.headImg = headImg == null ? null : headImg.trim();
    }

    public String getSubTitle() {
        return subTitle;
    }

    public void setSubTitle(String subTitle) {
        this.subTitle = subTitle == null ? null : subTitle.trim();
    }

    public Integer getNavmenueId() {
        return navmenueId;
    }

    public void setNavmenueId(Integer navmenueId) {
        this.navmenueId = navmenueId;
    }

    public byte[] getContent() {
        return content;
    }

    public void setContent(byte[] content) {
        this.content = content;
    }
}