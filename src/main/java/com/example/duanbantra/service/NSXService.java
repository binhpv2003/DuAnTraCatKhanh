package com.example.duanbantra.service;

import com.example.duanbantra.entity.DanhMuc;
import com.example.duanbantra.entity.NSX;

import java.util.List;

public interface NSXService {
    List<NSX> getAll();
    void add(NSX sx);
    void remove(Integer id);

    NSX detail(Integer id);
}

