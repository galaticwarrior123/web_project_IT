package com.example.test4proj.services;

import com.example.test4proj.models.article;
import com.example.test4proj.repositories.IArticleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ArticleService implements IArticleService{
    @Autowired
    IArticleRepository articleRepository;
    @Override
    public List<article> findAll() {
        return articleRepository.findAll();
    }

    @Override
    public Iterable<article> findByUserId(Long user_id) {
        return articleRepository.findByUserId(user_id);
    }

    @Override
    public Iterable<article> findByarticleTypeId(int articleTypeId) {
        return articleRepository.findByarticleTypeId(articleTypeId);
    }
}
