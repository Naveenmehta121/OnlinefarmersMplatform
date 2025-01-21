package com.onlinemplatform.dao;

import com.onlinemplatform.model.Order;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface OrderDAO extends JpaRepository<Order, Long> {

    // Find all orders by customerId
    List<Order> findByCustomerId(Long customerId);
    
    // Other custom queries can be added as needed
}
