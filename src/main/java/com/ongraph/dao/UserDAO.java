package com.ongraph.dao;

import com.ongraph.entities.UserEntity;

import java.util.List;

/**
 * Created by agarw on 05-06-2017.
 */
public interface UserDAO {

    public Long getTotalUsersCount() throws Exception;
    public Long getActiveInactiveUserCount(Boolean activeStatus);
    public UserEntity findUserbyEmail(String email);
    public List<UserEntity> getListofUsersBasedOnStatus(Boolean status) throws Exception;

}
