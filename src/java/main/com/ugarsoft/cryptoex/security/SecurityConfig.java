package com.ugarsoft.cryptoex.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.authentication.AuthenticationTrustResolverImpl;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

import com.ugarsoft.cryptoex.model.Role;







/**
 * @EnableGlobalAuthentication annotates:
 * @EnableWebSecurity
 * @EnableWebMvcSecurity
 * @EnableGlobalMethodSecurity Passing in 'prePostEnabled = true' allows:
 * <p>
 * Pre/Post annotations such as:
 * @PreAuthorize("hasRole('ROLE_USER')")
 */


@EnableWebSecurity
@ComponentScan("com.ugarsoft.cryptoex")
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private CustomUserDetailsService customUserDetailsService;

    /**
     * Login, Logout, Success, and Access Denied beans/handlers
     */

    @Bean
    public AccessDeniedHandler accessDeniedHandler() {
        return new CustomAccessDeniedHandler();
    }

    @Bean
    public LogoutSuccessHandler logoutSuccessHandler() {
        return new CustomLogoutSuccessHandler();
    }

    @Bean
    public AuthenticationSuccessHandler loginSuccessHandler() {
        return new CustomLoginSuccessHandler();
    }

    /**
     * Authentication beans
     */

    @Bean
    public PasswordEncoder encoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public DaoAuthenticationProvider authenticationProvider(){
        final DaoAuthenticationProvider bean = new CustomDaoAuthenticationProvider();
        bean.setUserDetailsService(customUserDetailsService);
        bean.setPasswordEncoder(encoder());
        return bean;
    }

    /**
     * Order of precedence is very important.
     * <p>
     * Matching occurs from top to bottom - so, the topmost match succeeds first.
     */
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
               .authorizeRequests()
               .antMatchers("/user/**", "/**")
               .permitAll()
                .and()
                .formLogin()
                .loginPage("/").permitAll()
                .usernameParameter("username")
                .passwordParameter("password")
                .loginProcessingUrl("/authenticate")
                .successHandler(loginSuccessHandler())
                .failureUrl("/").permitAll()
                .and()
                .logout()
               //.logoutUrl("/logout")
                .deleteCookies("JSESSIONID")
                .logoutSuccessHandler(logoutSuccessHandler())
                .and()
                .exceptionHandling()
                .accessDeniedHandler(accessDeniedHandler())
//                /**
//                 * Applies to User Roles - not to login failures or unauthenticated access attempts.
//                 */
                .and()
                .authenticationProvider(authenticationProvider());
        /** Disabled for local testing */
        http
                .csrf().disable();

        /** This is solely required to support H2 console viewing in Spring MVC with Spring Security */
        http
                .headers()
                .frameOptions()
                .disable();
    }
  
    
    
    @Override
    protected void configure(final AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(authenticationProvider());
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
    web.ignoring().antMatchers("/resources/**");
    }


}
