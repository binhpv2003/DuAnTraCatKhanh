package com.example.duanbantra.controller;

import com.example.duanbantra.entity.DanhMuc;
import com.example.duanbantra.entity.NSX;
import com.example.duanbantra.entity.SanPham;
import com.example.duanbantra.service.DanhMucService;
import com.example.duanbantra.service.NSXService;
import com.example.duanbantra.service.SanPhamService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class adminController {
    @Autowired
    private SanPhamService serviceSanPham;

    @Autowired
    private DanhMucService danhMucService;

    @Autowired
    private NSXService nsxService;

    private List<SanPham> listSanPham = new ArrayList<>();
    private List<DanhMuc> danhMucList = new ArrayList<>();

    private List<NSX> nsxList = new ArrayList<>();

    //admin
    @GetMapping("")
    public String viewAdmin() {
        return "/admin/index";
    }

    @GetMapping("/quan-ly-san-pham")
    public String viewQuanLySanPham(Model model) {
        listSanPham = serviceSanPham.getAll();
        danhMucList = danhMucService.getAll();
        model.addAttribute("listDanhMuc", danhMucList);
        model.addAttribute("listSanPham", listSanPham);
        return "/admin/view-san-pham";
    }

    @GetMapping("/view-add")
    public String viewAdd(Model model) {
        model.addAttribute("sp1", new SanPham());
        danhMucList = danhMucService.getAll();
        nsxList = nsxService.getAll();
        model.addAttribute("listDanhMuc", danhMucList);
        model.addAttribute("listNsx", nsxList);
        return "/admin/view-add";
    }

    @PostMapping("/add")
    public String addSanPham(@ModelAttribute("sp1") SanPham sp1, BindingResult result, Model model) {
        if (result.hasErrors()) {
            danhMucList = danhMucService.getAll();
            nsxList = nsxService.getAll();
            model.addAttribute("listDanhMuc", danhMucList);
            model.addAttribute("listNsx", nsxList);
            return "view-add";
        }
        serviceSanPham.addSanPham(sp1);
        return "redirect:/admin/quan-ly-san-pham";
    }

    @GetMapping("/remove/{id}")
    public String removeSanPham(@PathVariable("id") Integer id) {
        serviceSanPham.removeSanPham(id);
        return "redirect:/admin/quan-ly-san-pham";
    }

    @GetMapping("/view-update/{id}")
    public String viewAdd(@PathVariable("id") Integer id, Model model) {
        model.addAttribute("sp1", serviceSanPham.detailSanPham(id));
        danhMucList = danhMucService.getAll();
        nsxList = nsxService.getAll();
        model.addAttribute("listDanhMuc", danhMucList);
        model.addAttribute("listNsx", nsxList);
        return "/admin/viewUpdate";
    }

    @PostMapping("/update")
    public String updateSanPham(@ModelAttribute("sp1") SanPham sp1, BindingResult result, Model model) {
        if (result.hasErrors()) {
            danhMucList = danhMucService.getAll();
            nsxList = nsxService.getAll();
            model.addAttribute("listDanhMuc", danhMucList);
            model.addAttribute("listNsx", nsxList);
            return "/admin/viewUpdate";
        }
        serviceSanPham.updateSanPham(sp1);
        return "redirect:/admin/quan-ly-san-pham";
    }
    @GetMapping("/san-pham")
    public Page<SanPham> getSanPham(@RequestParam(defaultValue ="0") int page,@RequestParam(defaultValue = "10") int size){
        return  serviceSanPham.findAllSanPham(page,size);
    }

    //Danh Mục

    @GetMapping("/danh-muc")
    public String viewDanhMuc(Model model){
        model.addAttribute("dm1",new DanhMuc());
        danhMucList = danhMucService.getAll();
        model.addAttribute("listDanhMuc", danhMucList);
        return "/admin/viewDanhMuc";
    }

    @PostMapping("/add-danh-muc")
    public String addDanhMuc(@Valid @ModelAttribute("dm1")DanhMuc dm1, BindingResult result, Model model){
        if(result.hasErrors()){
            danhMucList = danhMucService.getAll();
            model.addAttribute("listDanhMuc", danhMucList);
            return "/admin/viewDanhMuc";
        }
        danhMucService.add(dm1);
        return "redirect:/admin/danh-muc";
    }

    @GetMapping("/remove-danhmuc/{id}")
    public String removeDanhMuc(@PathVariable("id")Integer id){
        danhMucService.remove(id);
        return "redirect:/admin/danh-muc";
    }

}
