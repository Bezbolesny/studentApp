package com.example.studentapp.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class Auth extends WebSecurityConfigurerAdapter {

    @Bean
    protected PasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication()
                .withUser("test").password(passwordEncoder().encode("test")).roles("USER")
                .and()
                .withUser("admin").password(passwordEncoder().encode("admin")).roles("ADMIN");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeHttpRequests()
                .antMatchers("/students") // mają dostęp wszyscy użytkownicy z rolą ROLE_USER
                .hasAnyAuthority("ROLE_USER")
                .antMatchers("/tasks") // mają dostęp wszyscy użytkownicy z rolą ROLE_ADMIN
                .hasAnyAuthority("ROLE_ADMIN")
                .antMatchers("/")
                .permitAll()
                .and()
                .csrf().disable() // wyłączenie zabezpieczenia w celu używania Postmana
                .headers().frameOptions().disable()
                .and()
                .formLogin() // wskazuję, że teraz będę konfigurował formularz uwierzytleniania
                .loginPage("/login")
                .usernameParameter("username")  // nadajemy nazwę jaka będzie jako name w inpucie loginu formularza
                .passwordParameter("password") // nadajemy nazwę jaka będzie jako name w inpucie hasła formularza
                .loginProcessingUrl("/login")
                .failureForwardUrl("/login?error") // co się stanie w momencie błędnych danych
                .defaultSuccessUrl("/") // co się stanie w momencie prawidłowego wpisania loginu i hasła
                .and()
                .logout() // mówimy springowi, że przechodzimy do obsłużenia logout
                .logoutSuccessUrl("/"); // przekieruje mnie w ten adres jak prawidłowo się wyloguje
    }
}
