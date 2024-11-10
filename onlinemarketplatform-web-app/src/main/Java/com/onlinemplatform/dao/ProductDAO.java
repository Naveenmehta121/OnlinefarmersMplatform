package com.onlinemplatform.dao;

import com.onlinemplatform.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface ProductDAO extends JpaRepository<Product, Long> {
    
    // Find products by category (assuming the Product has a category_id foreign key)
    List<Product> findByCategoryId(Long categoryId);
    
    // Other custom queries can be added as needed
}
