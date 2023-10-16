package com.example.duanbantra.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotEmpty;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.sql.Date;

@Entity
@Table(name = "nhan_vien")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class NhanVien {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "ma")
    @NotEmpty(message = "không để trống trường này")
    private String ma;

    @Column(name = "ten")
    @NotEmpty(message = "không để trống trường này")
    private String ten;

    @Column(name = "ten_dem")
    @NotEmpty(message = "không để trống trường này")
    private String tenDem;

    @Column(name = "ho")
    @NotEmpty(message = "không để trống trường này")
    private String ho;

    @Column(name = "gioi_tinh")
    private Boolean gioiTinh;

    @Column(name = "ngay_sinh")
    private Date ngaySinh;

    @Column(name = "dia_chi")
    @NotEmpty(message = "không để trống trường này")
    private String diaChi;

    @Column(name = "sdt")
    @NotEmpty(message = "không để trống trường này")
    private String sdt;

    @Column(name = "mat_khau")
    @NotEmpty(message = "không để trống trường này")
    private String matKhau;


    @Column(name = "trang_thai")
    private Boolean trangThai;

    @ManyToOne
    @JoinColumn(name = "idcv",referencedColumnName = "id")
    private ChucVu cv;
}
