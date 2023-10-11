package com.example.duanbantra.service.impl;

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
}
