package com.example.test4proj.services;

import com.example.test4proj.models.article;

import java.util.List;

public interface IArticleService {
    List<article> findAll();

    Iterable<article> findByUserId(Long user_id);
    Iterable<article> findByarticleTypeId(int articleTypeId);

}
