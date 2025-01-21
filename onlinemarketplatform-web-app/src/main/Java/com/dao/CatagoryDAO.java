package com.onlinemplatform.dao;

import com.onlinemplatform.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryDAO extends JpaRepository<Category, Long> {
    Category findByCategoryName(String categoryName);
}
