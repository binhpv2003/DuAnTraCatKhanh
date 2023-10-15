package com.example.duanbantra.service;

import com.example.duanbantra.entity.ChucVu;

import java.util.List;

public interface ChucVuService {
    List<ChucVu> getAll();
    void add(ChucVu cv);

    void remove(Integer id);

    ChucVu detail(Integer id);
}
