package com.example.duanbantra.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class adminController {
    //admin
    @GetMapping("/admin")
    public String viewAdmin() {
        return "/admin/index";
    }

    @GetMapping("/admin/quan-ly-san-pham")
    public String viewQuanLySanPham(){
        return "/admin/view-san-pham";
    }
}
