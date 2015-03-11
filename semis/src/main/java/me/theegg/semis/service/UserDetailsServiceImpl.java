package me.theegg.semis.service;

import me.theegg.semis.repository.UsersRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	private final UsersRepository usersRepositories;

	@Autowired
	public UserDetailsServiceImpl(UsersRepository usersRepositories) {
		this.usersRepositories = usersRepositories;
	}

	@Override
	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {

		if (usersRepositories.findOne(username) == null)
			throw new UsernameNotFoundException("找不到该用户");

		return usersRepositories.findOne(username);
	}

}