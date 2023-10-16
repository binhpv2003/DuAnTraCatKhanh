package com.example.duanbantra.service.impl;

import com.example.duanbantra.entity.HoaDonChiTiet;
import com.example.duanbantra.repositories.HoaDonChiTietRepository;
import com.example.duanbantra.service.HoaDonChiTietService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HoaDonChiTietServiceImpl implements HoaDonChiTietService {
    @Autowired
    private HoaDonChiTietRepository repository;
    @Override
    public List<HoaDonChiTiet> getAll(Integer id) {
        return repository.findByHoaDon_Id(id);
    }

    @Override
    public void add(HoaDonChiTiet hd) {
        repository.save(hd);
    }
}
