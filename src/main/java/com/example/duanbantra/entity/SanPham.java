package com.example.duanbantra.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "san_pham")
public class SanPham {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "HanSD")
    private int hanSD;

    @Column(name = "hinhAnh")
    private String hinhAnh;

    @Column(name = "moTa")
    private String moTa;

    @Column(name = "SoLuongTon")
    private int soLuong;

    @Column(name = "GiaNhap")
    private Long giaNhap;

    @Column(name = "GiaBan")
    private Long giaBan;

    @Main

}
