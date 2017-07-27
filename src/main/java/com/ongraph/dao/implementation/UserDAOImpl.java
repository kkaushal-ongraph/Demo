package com.ongraph.dao.implementation;

import com.ongraph.dao.UserDAO;

import com.ongraph.entities.UserEntity;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.sql.JoinType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@Repository("userDao")
public class UserDAOImpl implements UserDAO {

    @Autowired
    SessionFactory sessionfactory;

    Criteria ct;

    public Long getTotalUsersCount() throws Exception {

        Long total_users = 0L;
        ct = sessionfactory.getCurrentSession().createCriteria(UserEntity.class);
        ct.setProjection(Projections.rowCount());
        total_users = (Long)ct.uniqueResult();
        return total_users;

    }

    public Long getActiveInactiveUserCount(Boolean activeStatus) {

        Long inactive_users = 0L;
        ct = sessionfactory.getCurrentSession().createCriteria(UserEntity.class);
        ct.add(Restrictions.eq("active", activeStatus));
        ct.setProjection(Projections.rowCount());
        inactive_users = (Long)ct.uniqueResult();
        return inactive_users;
    }


    public UserEntity findUserbyEmail(String email) {

        List<UserEntity> l_user_list;
        ct = sessionfactory.getCurrentSession().createCriteria(UserEntity.class);
        ct.add(Restrictions.eq("email", email));
        l_user_list = ct.list();
        System.out.println(l_user_list.size());
        return l_user_list.get(0);
    }

    public List<UserEntity> getListofUsersBasedOnStatus(Boolean status) throws Exception {
        List<UserEntity> l_user_list;
        ct = sessionfactory.getCurrentSession().createCriteria(UserEntity.class, "user");
        ct.createAlias("user.usertypesByAccessType","userType", JoinType.INNER_JOIN);
        ct.createAlias("userType.usertypesByParent", "userTypeParent", JoinType.LEFT_OUTER_JOIN);
        ct.add(Restrictions.eq("active", status));
        l_user_list = ct.list();
        return l_user_list;
    }
}
