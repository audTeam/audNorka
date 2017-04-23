package com.aud.pojo;

public class Demo {
    private String nage;

    private Integer age;

    public String getNage() {
        return nage;
    }

    public void setNage(String nage) {
        this.nage = nage == null ? null : nage.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }
}