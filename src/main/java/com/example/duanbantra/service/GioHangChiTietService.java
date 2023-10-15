package com.example.duanbantra.service;

import com.example.duanbantra.entity.GioHangChiTiet;

import java.util.List;

public interface GioHangChiTietService {
    List<GioHangChiTiet> getAll(Integer id);

    void add(GioHangChiTiet ghct);

    void remove(Integer id);

    GioHangChiTiet detail(Integer id);

    void deleteAll();
}
