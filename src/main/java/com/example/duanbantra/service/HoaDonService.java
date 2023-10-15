package com.example.duanbantra.service;

import com.example.duanbantra.entity.HoaDon;

import java.util.List;

public interface HoaDonService {
    List<HoaDon> getAll();
    void add(HoaDon hd);

    HoaDon detail(Integer id);
}
