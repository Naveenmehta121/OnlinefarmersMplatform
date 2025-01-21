package com.onlinemplatform.model;

import java.sql.Timestamp;

public class Address {
    private int addressId;
    private int userId;
    private String addressLine1;
    private String addressLine2;
    private String city;
    private String state;
    private String postalCode;
    private String country;
    private String addressType; // "shipping", "billing", "other"
    private Timestamp createdAt;
    private Timestamp updatedAt;

    // Getters and Setters
}