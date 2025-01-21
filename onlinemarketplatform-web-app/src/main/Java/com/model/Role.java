package com.onlinemplatform.model;

import java.sql.Timestamp;

public class Role {
    private int userId;
    private String username;
    private String email;
    private String passwordHash;
    private String firstName;
    private String lastName;
    private String phoneNumber;
    private String userType; // "customer" or "seller"
    private int roleId;
    private Timestamp createdAt;
    private Timestamp updatedAt;

    // Getters and Setters
}