package com.example.duanbantra.repositories;

import com.example.duanbantra.entity.GioHangChiTiet;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface GioHangChiTietRepository extends JpaRepository<GioHangChiTiet,Integer> {
    List<GioHangChiTiet> findByGioHang_Id(Integer id);
}
