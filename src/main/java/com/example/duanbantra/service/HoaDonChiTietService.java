package com.example.duanbantra.service;

import com.example.duanbantra.entity.HoaDonChiTiet;
import com.example.duanbantra.entity.NhanVien;
import org.springframework.data.domain.Page;

import java.util.List;

public interface HoaDonChiTietService {
    List<HoaDonChiTiet> getAll(Integer id);

    void add(HoaDonChiTiet hd);
}

