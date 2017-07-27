package com.ongraph.dto;

import com.ongraph.entities.UserEntity;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by agarw on 05-06-2017.
 */
public class UsersDTO {

    //Data Members
    private long total_users;
    private long total_active_users;
    private long total_inactive_users;
    private List<UserEntity> active_users = new ArrayList<UserEntity>();
    private List<UserEntity> inactive_users = new ArrayList<UserEntity>();

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

    public List<UserEntity> getActive_users() {
        return active_users;
    }

    public void setActive_users(List<UserEntity> active_users) {
        this.active_users = active_users;
    }

    public List<UserEntity> getInactive_users() {
        return inactive_users;
    }

    public void setInactive_users(List<UserEntity> inactive_users) {
        this.inactive_users = inactive_users;
    }

    public long getTotal_inactive_users() {
        return total_inactive_users;
    }

    public void setTotal_inactive_users(long total_inactive_users) {
        this.total_inactive_users = total_inactive_users;
    }
}
