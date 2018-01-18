package com.ugarsoft.cryptoex.security;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;



import java.util.Collection;

public class CustomUserDetails extends User {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private  com.ugarsoft.cryptoex.model.User user;

	

    public CustomUserDetails(com.ugarsoft.cryptoex.model.User user, Collection<? extends GrantedAuthority> authorities) {
        super(user.getEmail(), user.getPassword(), authorities);
        this.user = user;
    }

   
    public CustomUserDetails(com.ugarsoft.cryptoex.model.User user, boolean enabled, boolean accountNonExpired, boolean credentialsNonExpired, boolean accountNonLocked, Collection<? extends GrantedAuthority> authorities) {
        super(user.getEmail(), user.getPassword(), enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
        this.user = user;
    }

    public com.ugarsoft.cryptoex.model.User  getUser() {
        return user;
    }
}