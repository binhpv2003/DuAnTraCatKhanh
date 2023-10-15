package com.example.duanbantra.service;

import com.example.duanbantra.entity.NhanVien;

import java.util.List;
import java.util.Optional;

public interface NhanVienService {
    List<NhanVien> getAll();

    void add(NhanVien nv);

    NhanVien detail(Integer id);


}
