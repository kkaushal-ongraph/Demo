package com.maxproductions.services;

import com.maxproductions.dto.MoeUserDetailListDto;
import com.maxproductions.entities.MeetUserEntity;

import java.util.List;

/**
 * Created by agarw on 05-06-2017.
 */
public interface UserService
{

    public MeetUserEntity findUserbyEmail(String email);
    public List<MeetUserEntity> getAllActiveUsers() throws Exception;
    public List<MeetUserEntity> getAllInactiveUsers() throws Exception;

    public MoeUserDetailListDto getUserDetailList() throws Exception;


}
