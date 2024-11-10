package com.onlinemplatform.dao;

import com.onlinemplatform.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PaymentDAO extends JpaRepository<Payment, Long> {
    List<Payment> findByOrderId(Long orderId);
}
