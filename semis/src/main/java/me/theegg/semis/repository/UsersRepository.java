package me.theegg.semis.repository;

import me.theegg.semis.domain.Users;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UsersRepository extends JpaRepository<Users, String> {

}
