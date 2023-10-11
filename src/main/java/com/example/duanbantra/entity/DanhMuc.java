package com.example.duanbantra.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "danh_muc")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class DanhMuc {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;


    @Column(name = "ma")
    @NotBlank(message = "Không để trống trường này")
    private String ma;


    @Column(name = "ten")
    @NotBlank(message = "Không để trống trường này")
    private String ten;
}
