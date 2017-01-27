package com.aud.pojo;

public class HistoryIntroduce {
    private Integer id;

    private String companyHistory;

    private String cooperationCompany;

    private String video;

    private String headImg;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCompanyHistory() {
        return companyHistory;
    }

    public void setCompanyHistory(String companyHistory) {
        this.companyHistory = companyHistory == null ? null : companyHistory.trim();
    }

    public String getCooperationCompany() {
        return cooperationCompany;
    }

    public void setCooperationCompany(String cooperationCompany) {
        this.cooperationCompany = cooperationCompany == null ? null : cooperationCompany.trim();
    }


    public String getVideo() {
		return video;
	}

	public void setVideo(String video) {
		this.video = video;
	}

	public String getHeadImg() {
        return headImg;
    }

    public void setHeadImg(String headImg) {
        this.headImg = headImg == null ? null : headImg.trim();
    }
}