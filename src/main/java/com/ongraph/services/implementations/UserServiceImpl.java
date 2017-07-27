package com.ongraph.services.implementations;

import com.ongraph.entities.UserEntity;
import com.ongraph.util.ApplicationConstants;
import com.ongraph.dao.UserDAO;
import com.ongraph.dto.UsersDTO;
import com.ongraph.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by agarw on 05-06-2017.
 */
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{

    @Autowired
    UserDAO userDAO;


    public UserEntity findUserbyEmail(String email) {

        UserEntity l_user = userDAO.findUserbyEmail(email);
        return l_user;
    }

    public List<UserEntity> getAllActiveUsers() throws Exception {
        List<UserEntity> activeUserList = userDAO.getListofUsersBasedOnStatus(ApplicationConstants.ACTIVE_STATUS);
        return activeUserList;
    }

    public List<UserEntity> getAllInactiveUsers() throws Exception {
        List<UserEntity> inactiveUserList = userDAO.getListofUsersBasedOnStatus(ApplicationConstants.INACTIVE_STATUS);
        return inactiveUserList;
    }

    public UsersDTO getUserDetailList() throws Exception {

        UsersDTO dto = new UsersDTO();
        dto.setTotal_users(userDAO.getTotalUsersCount());
        dto.setTotal_active_users(userDAO.getActiveInactiveUserCount(ApplicationConstants.ACTIVE_STATUS));
        dto.setTotal_inactive_users(userDAO.getActiveInactiveUserCount(ApplicationConstants.INACTIVE_STATUS));
        dto.setActive_users(getAllActiveUsers());
        dto.setInactive_users(getAllInactiveUsers());
        return dto;
    }


}
