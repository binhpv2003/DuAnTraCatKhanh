package com.example.duanbantra.service.impl;

import com.example.duanbantra.entity.NhanVien;
import com.example.duanbantra.repositories.NhanVienRepository;
import com.example.duanbantra.service.NhanVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class NhanVienServiceImpl implements NhanVienService {

    @Autowired
    private NhanVienRepository repository;
    @Override
    public List<NhanVien> getAll() {
        return repository.findAll();
    }

    @Override
    public void add(NhanVien nv) {
    repository.save(nv);
    }

    @Override
    public NhanVien detail(Integer id) {
      return  repository.findById(id).get();
    }
}
