package com.onlinemplatform.model;

import java.sql.Timestamp;

public class Review {
    private int reviewId;
    private int productId;
    private int customerId;
    private int rating; // 1 to 5
    private String reviewText;
    private Timestamp createdAt;

    // Getters and Setters
}