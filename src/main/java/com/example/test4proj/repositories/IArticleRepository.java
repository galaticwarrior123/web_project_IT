package com.example.test4proj.repositories;

import com.example.test4proj.models.article;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IArticleRepository extends JpaRepository<article,Long> {
    Iterable<article> findByUserId(Long user_id);
    Iterable<article> findByarticleTypeId(int articleTypeId);
}
