package com.example.duanbantra.service;

import com.example.duanbantra.entity.SanPham;
import org.springframework.data.domain.Page;

import java.util.List;
import java.util.Optional;

public interface SanPhamService {
    List<SanPham> getAll();
    void addSanPham(SanPham sp);

    void removeSanPham(Integer id);

    SanPham detailSanPham(Integer id);

    void updateSanPham(SanPham sp);
    Page<SanPham> findAllSanPham(int page, int size);
}
