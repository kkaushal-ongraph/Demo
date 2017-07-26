package com.maxproductions.dto;

import com.maxproductions.entities.MeetUserEntity;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by agarw on 05-06-2017.
 */
public class MoeUserDetailListDto {

    //Data Members
    private long total_users;
    private long total_active_users;
    private long total_inactive_users;
    private List<MeetUserEntity> active_users = new ArrayList<MeetUserEntity>();
    private List<MeetUserEntity> inactive_users = new ArrayList<MeetUserEntity>();

    //Getters and Setters
    public long getTotal_users() {
        return total_users;
    }

    public void setTotal_users(long total_users) {
        this.total_users = total_users;
    }

    public long getTotal_active_users() {
        return total_active_users;
    }

    public void setTotal_active_users(long total_active_users) {
        this.total_active_users = total_active_users;
    }

    public List<MeetUserEntity> getActive_users() {
        return active_users;
    }

    public void setActive_users(List<MeetUserEntity> active_users) {
        this.active_users = active_users;
    }

    public List<MeetUserEntity> getInactive_users() {
        return inactive_users;
    }

    public void setInactive_users(List<MeetUserEntity> inactive_users) {
        this.inactive_users = inactive_users;
    }

    public long getTotal_inactive_users() {
        return total_inactive_users;
    }

    public void setTotal_inactive_users(long total_inactive_users) {
        this.total_inactive_users = total_inactive_users;
    }
}
