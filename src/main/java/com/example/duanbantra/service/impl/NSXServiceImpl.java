package com.example.duanbantra.service.impl;

import com.example.duanbantra.entity.DanhMuc;
import com.example.duanbantra.entity.NSX;
import com.example.duanbantra.repositories.NSXRepository;
import com.example.duanbantra.service.NSXService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NSXServiceImpl implements NSXService {

    @Autowired
    private NSXRepository repository;

    @Override
    public List<NSX> getAll() {
        return repository.findAll();
    }

    @Override
    public void add(NSX sx) {
    repository.save(sx);
    }

    @Override
    public void remove(Integer id) {
        repository.delete(detail(id));
    }

    @Override
    public NSX detail(Integer id) {
        return repository.findById(id).get();
    }
}
