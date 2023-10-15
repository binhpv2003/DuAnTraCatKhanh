package com.example.duanbantra.service;

import com.example.duanbantra.entity.GioHang;

import java.util.List;

public interface GioHangService {
    List<GioHang> getAll();
    void add(GioHang gh);

    GioHang detail(Integer id);
}
