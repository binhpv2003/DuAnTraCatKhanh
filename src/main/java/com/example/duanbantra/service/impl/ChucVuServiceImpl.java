package com.example.duanbantra.service.impl;

import com.example.duanbantra.entity.ChucVu;
import com.example.duanbantra.repositories.ChucVuRepository;
import com.example.duanbantra.service.ChucVuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ChucVuServiceImpl implements ChucVuService {
    @Autowired
    private ChucVuRepository repository;

    @Override
    public List<ChucVu> getAll() {
        return repository.findAll();
    }

    @Override
    public void add(ChucVu cv) {
        repository.save(cv);
    }

    @Override
    public void remove(Integer id) {
        repository.delete(detail(id));
    }

    @Override
    public ChucVu detail(Integer id) {
        return repository.findById(id).get();
    }
}
