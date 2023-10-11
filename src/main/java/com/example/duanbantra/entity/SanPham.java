package com.example.duanbantra.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "san_pham")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class SanPham {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "ma")
    private String maSp;

    @Column(name = "hinh_anh")
    private String hinhAnh;

    @Column(name = "tensp")
    private String tenSp;

    @Column(name = "hansd")
    private int hanSD;

    @Column(name = "mo_ta")
    private String moTa;

    @Column(name = "so_luong_ton")
    private int soLuong;

    @Column(name = "gia_nhap")
    private Long giaNhap;

    @Column(name = "gia_ban")
    private Long giaBan;

    @Column(name = "trang_thai")
    private Boolean trangThai;


    @ManyToOne
    @JoinColumn(name = "Id_danh_muc",referencedColumnName = "Id")
    private DanhMuc dm;
    @ManyToOne
    @JoinColumn(name = "Id_nsx",referencedColumnName = "Id")
    private NSX nsx;


}
