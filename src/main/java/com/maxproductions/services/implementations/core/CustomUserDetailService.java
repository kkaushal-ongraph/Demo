package com.maxproductions.services.implementations.core;

import com.maxproductions.dao.MeetUserDao;
import com.maxproductions.entities.MeetUserEntity;
import com.maxproductions.entities.MeetUsertypesEntity;
import com.sun.org.apache.regexp.internal.RE;
import org.apache.commons.lang.StringUtils;
import org.hibernate.boot.jaxb.SourceType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by agarw on 06-06-2017.
 */
@Service("userDetailService")
public class CustomUserDetailService implements UserDetailsService{

    @Autowired
    MeetUserDao meetUserDao;

    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        System.out.println("email :"  + email);
        MeetUserEntity l_user = meetUserDao.findUserbyEmail(email);
        MeetUsertypesEntity usertypesEntity = l_user.getUsertypesByAccessType();
        List<GrantedAuthority> authorities = buildUserforAuthorities(usertypesEntity);
        UserDetails authUser = buildUsersforAuthentication(l_user, authorities);

        return authUser;
    }

    private UserDetails buildUsersforAuthentication(MeetUserEntity l_user, List<GrantedAuthority> authorities)
        {
            return new User(l_user.getEmail(), l_user.getPassword(), l_user.getActive(),
                    true, true, true, authorities);
    }


    private List<GrantedAuthority> buildUserforAuthorities(MeetUsertypesEntity subtypeEntity) {

        Set<GrantedAuthority> setAuths = new HashSet<GrantedAuthority>();

        // Build user's authorities
            setAuths.add(new SimpleGrantedAuthority(StringUtils.upperCase(subtypeEntity.getTypeName())));
            System.out.println("Auth size: " + setAuths.size());
            MeetUsertypesEntity parent_role = subtypeEntity.getUsertypesByParent();
            if(null != parent_role)
                setAuths.add(new SimpleGrantedAuthority(parent_role.getTypeName()));

        List<GrantedAuthority> Result = new ArrayList<GrantedAuthority>(setAuths);
        System.out.println("Result Size" + Result.size()) ;
        System.out.println("ROLE :" +  Result.get(0).getAuthority() );


        return Result;
    }
}
