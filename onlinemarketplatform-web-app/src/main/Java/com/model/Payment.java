package com.onlinemplatform.model;

import java.sql.Timestamp;

public class Payment {
    private int paymentId;
    private int orderId;
    private String paymentMethod; // "credit_card", "paypal", "bank_transfer", "cash_on_delivery"
    private String paymentStatus; // "pending", "completed", "failed", "refunded"
    private Timestamp paymentDate;
    private double amount;

    // Getters and Setters
}