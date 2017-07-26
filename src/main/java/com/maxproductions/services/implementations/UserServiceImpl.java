package com.maxproductions.services.implementations;

import com.maxproductions.entities.MeetUserEntity;
import com.maxproductions.util.ApplicationConstants;
import com.maxproductions.dao.MeetUserDao;
import com.maxproductions.dto.MoeUserDetailListDto;
import com.maxproductions.services.UserService;
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
    MeetUserDao meetUserDao;


    public MeetUserEntity findUserbyEmail(String email) {

        MeetUserEntity l_user = meetUserDao.findUserbyEmail(email);
        return l_user;
    }

    public List<MeetUserEntity> getAllActiveUsers() throws Exception {
        List<MeetUserEntity> activeUserList = meetUserDao.getListofUsersBasedOnStatus(ApplicationConstants.ACTIVE_STATUS);
        return activeUserList;
    }

    public List<MeetUserEntity> getAllInactiveUsers() throws Exception {
        List<MeetUserEntity> inactiveUserList = meetUserDao.getListofUsersBasedOnStatus(ApplicationConstants.INACTIVE_STATUS);
        return inactiveUserList;
    }

    public MoeUserDetailListDto getUserDetailList() throws Exception {

        MoeUserDetailListDto dto = new MoeUserDetailListDto();
        dto.setTotal_users(meetUserDao.getTotalUsersCount());
        dto.setTotal_active_users(meetUserDao.getActiveInactiveUserCount(ApplicationConstants.ACTIVE_STATUS));
        dto.setTotal_inactive_users(meetUserDao.getActiveInactiveUserCount(ApplicationConstants.INACTIVE_STATUS));
        dto.setActive_users(getAllActiveUsers());
        dto.setInactive_users(getAllInactiveUsers());
        return dto;
    }


}
