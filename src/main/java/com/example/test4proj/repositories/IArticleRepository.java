package com.example.test4proj.repositories;

import com.example.test4proj.models.article;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import java.util.List;


public interface IArticleRepository extends JpaRepository<article,Long> {
    Iterable<article> findByUserId(Long user_id);
    Iterable<article> findByarticleTypeId(int articleTypeId);

    List<article> findBySubjectContains(String filter);
    @Query(value = "SELECT coalesce(max(articleId), 0) FROM article")
    public Long getMaxId();
}
