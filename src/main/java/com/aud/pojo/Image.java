package com.aud.pojo;

public class Image {
    private Integer id;

    private String imgUrl;

    private Integer resourceId;

    @Override
	public String toString() {
		return "Image [id=" + id + ", imgUrl=" + imgUrl + ", resourceId=" + resourceId + "]";
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl == null ? null : imgUrl.trim();
    }

    public Integer getResourceId() {
        return resourceId;
    }

    public void setResourceId(Integer resourceId) {
        this.resourceId = resourceId;
    }
}