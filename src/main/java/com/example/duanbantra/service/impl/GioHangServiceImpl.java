package com.example.duanbantra.service.impl;

import com.example.duanbantra.entity.GioHang;
import com.example.duanbantra.repositories.GioHangReposiroty;
import com.example.duanbantra.service.GioHangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GioHangServiceImpl implements GioHangService {
    @Autowired
    private GioHangReposiroty reposiroty;
    @Override
    public List<GioHang> getAll() {
        return null;
    }

    @Override
    public void add(GioHang gh) {
        reposiroty.save(gh);
    }

    @Override
    public GioHang detail(Integer id) {
        return reposiroty.findById(id).get();
    }
}
