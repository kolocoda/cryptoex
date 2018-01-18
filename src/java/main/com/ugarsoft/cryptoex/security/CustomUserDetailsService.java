package com.ugarsoft.cryptoex.security;


import java.util.Collection;
import java.util.HashSet;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.ugarsoft.cryptoex.buisnesslogic.UserLogic;
import com.ugarsoft.cryptoex.model.User;




@Service()
public class CustomUserDetailsService implements UserDetailsService {

    Logger log = LoggerFactory.getLogger(CustomUserDetailsService.class);

    @Autowired
    private UserLogic userLogic;
   

    public CustomUserDetailsService() {
        super();
    }

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        try {
        	User user = userLogic.getByColName("email",email).get(0);
            if (user != null) return new CustomUserDetails(user, getAuthorities(user));
        } catch (Exception ex) {
            log.error("Exception in CustomUserDetailsService: " + ex);
        }
        return null;
    }


    private Collection<GrantedAuthority> getAuthorities(User user){
            Collection<GrantedAuthority> authorities = new HashSet<>();
            GrantedAuthority grantedAuthority = new SimpleGrantedAuthority(user.getRole().getDescription().trim());
            authorities.add(grantedAuthority); 
            return authorities;
    }
 
}