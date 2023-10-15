package com.example.duanbantra.service.impl;

import com.example.duanbantra.entity.GioHangChiTiet;
import com.example.duanbantra.repositories.GioHangChiTietRepository;
import com.example.duanbantra.service.GioHangChiTietService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GioHangChiTietImpl implements GioHangChiTietService {
    @Autowired
    private GioHangChiTietRepository repository;

    @Override
    public List<GioHangChiTiet> getAll(Integer id) {
        return repository.findByGioHang_Id(id);
    }

    @Override
    public void add(GioHangChiTiet ghct) {
        repository.save(ghct);
    }

    @Override
    public void remove(Integer id) {
        repository.delete(detail(id));
    }

    @Override
    public GioHangChiTiet detail(Integer id) {
        return repository.findById(id).get();
    }

    @Override
    public void deleteAll() {
        repository.deleteAll();
    }
}
