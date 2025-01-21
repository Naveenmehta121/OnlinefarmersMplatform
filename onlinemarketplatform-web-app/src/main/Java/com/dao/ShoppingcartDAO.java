package com.onlinemplatform.dao;

import com.onlinemplatform.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ShoppingCartDAO extends JpaRepository<ShoppingCart, Long> {
    ShoppingCart findByCustomerIdAndProductId(Long customerId, Long productId);
}
