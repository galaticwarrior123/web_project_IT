package com.example.test4proj.services;

import com.example.test4proj.models.user;

import java.util.List;
import java.util.Optional;

public interface IUserService {
    boolean checkLogin(String username, String password);
    List<user> findAll();
    Optional<user> findByphoneNumber(String phoneNumber);
}
