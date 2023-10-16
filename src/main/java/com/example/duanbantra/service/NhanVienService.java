package com.example.duanbantra.service;

import com.example.duanbantra.entity.NhanVien;
import com.example.duanbantra.entity.SanPham;
import org.springframework.data.domain.Page;

import java.util.List;
import java.util.Optional;

public interface NhanVienService {
    List<NhanVien> getAll();

    void add(NhanVien nv);

    NhanVien detail(Integer id);

    Page<NhanVien> findAllNhanVien(int page, int size);


}
