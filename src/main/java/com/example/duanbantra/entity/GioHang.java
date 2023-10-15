package com.example.duanbantra.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@Entity
@Table(name="gio_hang")
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class GioHang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "ma")
    private String ma;

    @Column(name = "thanh_tien")
    private Long thanhTien;

    @Column(name = "tinh_trang")
    private int tinhTrang;

    @ManyToOne
    @JoinColumn(name = "idkh",referencedColumnName = "id")
    private  KhachHang khachHang;;

}
