package com.example.duanbantra.service.impl;

import com.example.duanbantra.entity.HoaDon;
import com.example.duanbantra.repositories.HoaDonRepository;
import com.example.duanbantra.service.HoaDonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HoaDonServiceImpl implements HoaDonService {
    @Autowired
    private HoaDonRepository repository;

    @Override
    public List<HoaDon> getAll() {
        return repository.findAll();
    }

    @Override
    public void add(HoaDon hd) {
        repository.save(hd);
    }

    @Override
    public HoaDon detail(Integer id) {
        return repository.findById(id).get();
    }

    @Override
    public Page<HoaDon> findAllHoaDon(int page, int size) {
        return repository.findAll(PageRequest.of(page,size, Sort.by("id").descending()));
    }
}
