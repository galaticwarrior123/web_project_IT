package com.example.test4proj.services;

import com.example.test4proj.models.user;
import com.example.test4proj.repositories.IUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UserService implements IUserService{
    @Autowired
    IUserRepository userRepository;
    @Override
    public boolean checkLogin(String username, String password) {
        Optional<user> user = userRepository.findByphoneNumber(username);
        if(user.isPresent() && user.get().getPassWord().equals(password)){
            return true;
        }
        return false;
    }

    @Override
    public List<user> findAll() {
        return userRepository.findAll();
    }

    @Override
    public Optional<user> findByphoneNumber(String phoneNumber) {
        return userRepository.findByphoneNumber(phoneNumber);
    }
}
