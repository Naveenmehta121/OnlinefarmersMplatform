package com.onlinemplatform.model;

import java.sql.Timestamp;

public class Order {
    private int orderId;
    private int customerId;
    private double totalAmount;
    private String status; // "pending", "completed", "shipped", "cancelled", "refunded"
    private Timestamp createdAt;
    private Timestamp updatedAt;

    // Getters and Setters
}