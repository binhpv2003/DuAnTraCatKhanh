package com.example.duanbantra.service;

import com.example.duanbantra.entity.KhachHang;

import java.util.List;

public interface KhachHangService {
    List<KhachHang> getAll();
    void add(KhachHang kh);
    KhachHang detail(Integer id);
}
