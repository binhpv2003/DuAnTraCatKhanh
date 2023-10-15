package com.example.duanbantra.service.impl;

import com.example.duanbantra.entity.KhachHang;
import com.example.duanbantra.repositories.KhachHangRepository;
import com.example.duanbantra.service.KhachHangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class KhachHangServiceImpl implements KhachHangService {

    @Autowired
    private KhachHangRepository repository;

    @Override
    public List<KhachHang> getAll() {
        return repository.findAll();
    }

    @Override
    public void add(KhachHang kh) {
        repository.save(kh);
    }

    @Override
    public KhachHang detail(Integer id) {
        return repository.findById(id).get();
    }
}
