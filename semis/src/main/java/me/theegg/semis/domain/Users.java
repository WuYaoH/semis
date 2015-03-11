package me.theegg.semis.domain;

import java.util.Collection;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

import org.springframework.security.core.userdetails.UserDetails;

/*
 * 管理员
 */
@SuppressWarnings("serial")
@Entity
public class Users implements UserDetails {
	@Id
	private String username;
	@Column(nullable = false)
	private String password;
	

	@JoinTable(name = "USER_AUTH")
	@ManyToMany(fetch = FetchType.EAGER)
	private Set<Authority> authorities;


	public Users() {
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public Collection<Authority> getAuthorities() {
		return authorities;

	}
	
	public void setAuthorities(Set<Authority> authorities) {
		this.authorities = authorities;
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

	public Users(String username, String password) {
		this.username = username;
		this.password = password;
	}

}
