package com.onlinemplatform.dao;

import com.onlinemplatform.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleDAO extends JpaRepository<Role, Long> {
    Role findByRoleName(String roleName);
}
