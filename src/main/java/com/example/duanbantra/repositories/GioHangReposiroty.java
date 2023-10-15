package com.example.duanbantra.repositories;

import com.example.duanbantra.entity.GioHang;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface GioHangReposiroty extends JpaRepository<GioHang,Integer> {
}
