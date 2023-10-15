package com.example.duanbantra.service.impl;

import com.example.duanbantra.entity.SanPham;
import com.example.duanbantra.repositories.SanPhamRepository;
import com.example.duanbantra.service.SanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class SanPhamServiceImpl implements SanPhamService {
    @Autowired
    private SanPhamRepository repository;
    @Override
    public List<SanPham> getAll() {
        return repository.findAll();
    }

    @Override
    public void addSanPham(SanPham sp) {
        repository.save(sp);
    }

    @Override
    public void removeSanPham(Integer id) {
        repository.delete(repository.findById(id).get());
    }

    @Override
    public SanPham detailSanPham(Integer id) {
        return repository.findById(id).get();
    }

    @Override
    public void updateSanPham(SanPham sp) {
    repository.save(sp);
    }

    @Override
    public Page<SanPham> findAllSanPham(int p, int size){
        Pageable pageable = PageRequest.of(p, size);
        return repository.findAll(pageable);
    }
}
