package com.aud.pojo;

public class TeamMemberProject {
    private Integer id;

    private Integer teamMemberId;

    private Integer projectId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTeamMemberId() {
        return teamMemberId;
    }

    public void setTeamMemberId(Integer teamMemberId) {
        this.teamMemberId = teamMemberId;
    }

    public Integer getProjectId() {
        return projectId;
    }

    public void setProjectId(Integer projectId) {
        this.projectId = projectId;
    }
}