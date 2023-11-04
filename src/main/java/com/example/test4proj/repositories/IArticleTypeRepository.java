package com.example.test4proj.repositories;

import com.example.test4proj.models.articleType;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IArticleTypeRepository extends JpaRepository<articleType, Integer> {
}
