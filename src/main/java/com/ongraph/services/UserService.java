package com.ongraph.services;

import com.ongraph.dto.UsersDTO;
import com.ongraph.entities.UserEntity;

import java.util.List;

/**
 * Created by agarw on 05-06-2017.
 */
public interface UserService
{

    public UserEntity findUserbyEmail(String email);
    public List<UserEntity> getAllActiveUsers() throws Exception;
    public List<UserEntity> getAllInactiveUsers() throws Exception;

    public UsersDTO getUserDetailList() throws Exception;


}
