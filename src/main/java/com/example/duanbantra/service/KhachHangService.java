package com.example.duanbantra.service;

import com.example.duanbantra.entity.KhachHang;
import com.example.duanbantra.entity.NhanVien;
import org.springframework.data.domain.Page;

import java.util.List;

public interface KhachHangService {
    List<KhachHang> getAll();
    void add(KhachHang kh);
    KhachHang detail(Integer id);
    Page<KhachHang> findAllKhachHang(int page, int size);
}
