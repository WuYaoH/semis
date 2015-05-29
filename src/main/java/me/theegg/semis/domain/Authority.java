package me.theegg.semis.domain;

import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.PrePersist;
import org.springframework.security.core.GrantedAuthority;

@Entity
public class Authority implements GrantedAuthority {

	private static final long serialVersionUID = 1L;

	public Authority() {
	}

	public Authority(String authority) {
		this.authority = authority;
	}

	@Id
	private String authority;

	@ManyToMany(mappedBy = "authorities")
	private Set<Users> users;

	@Column
	private Date createdTime;

	@Override
	public String getAuthority() {
		return authority;
	}

	public Date getCreatedTime() {
		return createdTime;
	}

	@PrePersist
	protected void onCreated() {
		createdTime = new Date();
	}

	public Set<Users> getUsers() {
		return users;
	}

}
