package com.example.duanbantra.service.impl;

import com.example.duanbantra.entity.DanhMuc;
import com.example.duanbantra.repositories.DanhMucRepository;
import com.example.duanbantra.service.DanhMucService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DanhMucServiceImpl implements DanhMucService {
    @Autowired
    private DanhMucRepository repository;
    @Override
    public List<DanhMuc> getAll() {
        return repository.findAll();
    }
}
