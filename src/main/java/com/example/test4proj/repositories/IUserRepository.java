package com.example.test4proj.repositories;

import com.example.test4proj.models.article;
import com.example.test4proj.models.user;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface IUserRepository extends JpaRepository<user,Long> {
    Optional<user> findByphoneNumber(String phongNumber);
    Long findTopByUserId(Long userId);
}
