package com.example.duanbantra.repositories;

import com.example.duanbantra.entity.GioHangChiTiet;
import com.example.duanbantra.entity.HoaDonChiTiet;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface HoaDonChiTietRepository extends JpaRepository<HoaDonChiTiet,Integer> {
    List<HoaDonChiTiet> findByHoaDon_Id(Integer id);
}
