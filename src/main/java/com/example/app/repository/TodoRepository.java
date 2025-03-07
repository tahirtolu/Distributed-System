package com.example.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.app.entity.Todo;

public interface TodoRepository extends JpaRepository<Todo, Long> {
} 