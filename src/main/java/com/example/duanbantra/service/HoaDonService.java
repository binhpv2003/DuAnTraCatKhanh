package com.example.duanbantra.service;

import com.example.duanbantra.entity.HoaDon;
import com.example.duanbantra.entity.SanPham;
import org.springframework.data.domain.Page;

import java.util.List;

public interface HoaDonService {
    List<HoaDon> getAll();
    void add(HoaDon hd);

    HoaDon detail(Integer id);

    Page<HoaDon> findAllHoaDon(int page, int size);
}
