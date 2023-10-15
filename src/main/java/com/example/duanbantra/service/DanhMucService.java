package com.example.duanbantra.service;

import com.example.duanbantra.entity.DanhMuc;

import java.util.List;

public interface DanhMucService {
    List<DanhMuc> getAll();

    void add(DanhMuc dm);

    void update(Integer id);

    void remove(Integer id);

    DanhMuc detail(Integer id);
}
