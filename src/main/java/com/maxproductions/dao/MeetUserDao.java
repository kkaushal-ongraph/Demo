package com.maxproductions.dao;

import com.maxproductions.entities.MeetUserEntity;
import com.sun.org.apache.xpath.internal.operations.Bool;

import java.util.List;

/**
 * Created by agarw on 05-06-2017.
 */
public interface MeetUserDao {

    public Long getTotalUsersCount() throws Exception;
    public Long getActiveInactiveUserCount(Boolean activeStatus);
    public MeetUserEntity findUserbyEmail(String email);
    public List<MeetUserEntity> getListofUsersBasedOnStatus(Boolean status) throws Exception;

}
