package com.example.duanbantra.repositories;

import com.example.duanbantra.entity.NSX;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NSXRepository extends JpaRepository<NSX,Integer> {
}
