package com.aud.pojo;

public class NavMenu {
    private Integer id;

    private String name;

    private String lang;

    private Integer parentnav;
    
    @Override
		public String toString() {
			return "NavMenu [id=" + id + ", name=" + name + ", lang=" + lang + ", parentnav=" + parentnav + "]";
		}

		public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getLang() {
        return lang;
    }

    public void setLang(String lang) {
        this.lang = lang == null ? null : lang.trim();
    }

    public Integer getParentnav() {
        return parentnav;
    }

    public void setParentnav(Integer parentnav) {
        this.parentnav = parentnav;
    }
}