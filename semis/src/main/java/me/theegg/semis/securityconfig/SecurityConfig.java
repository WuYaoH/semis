package me.theegg.semis.securityconfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.header.writers.frameoptions.XFrameOptionsHeaderWriter;
import org.springframework.security.web.header.writers.frameoptions.XFrameOptionsHeaderWriter.XFrameOptionsMode;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth,
			UserDetailsService detailsService) throws Exception {
		// auth
		// .userDetailsService(detailsService).passwordEncoder(new
		// BCryptPasswordEncoder());
		auth.userDetailsService(detailsService);

		// .passwordEncoder(
		// new BCryptPasswordEncoder());
		// .inMemoryAuthentication().withUser("admin").password("admin").roles("USER");
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();
		http.authorizeRequests()
				.antMatchers("/listemail", "/listvips", "/listcommodity",
						"/listconsume", "/listemail", "/detailvips",
						"/detailemail", "/help.html", "404.html",
						"/leftiframe.jsp", "/success.html", "/manage")
				.permitAll()
				.antMatchers("/update*")
				.hasAnyAuthority("ADMIN")
				.antMatchers("/add*")
				.hasAnyAuthority("ADMIN")
				.antMatchers("/sendemail")
				.hasAnyAuthority("ADMIN")
				.antMatchers("/listusers")
				.hasAnyAuthority("ADMIN")
				.anyRequest()
				.authenticated()

				.and()

				.logout()
				.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
				.permitAll()
				.and()
				.formLogin()
				.loginPage("/login")
				.permitAll()
				.and()
				.exceptionHandling()
				.accessDeniedPage("/403.html")

				.and()
				.headers()
				.addHeaderWriter(
						new XFrameOptionsHeaderWriter(
								XFrameOptionsMode.SAMEORIGIN));
	}
}
