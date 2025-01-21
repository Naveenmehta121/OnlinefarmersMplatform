package com.onlinemplatform.dao;

import com.onlinemplatform.model.Review;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ReviewDAO extends JpaRepository<Review, Long> {

    // Find reviews by product
    List<Review> findByProductId(Long productId);
    
    // Other custom queries can be added as needed
}
