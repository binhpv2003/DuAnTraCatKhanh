package com.example.duanbantra.controller;

import com.example.duanbantra.entity.GioHang;
import com.example.duanbantra.entity.GioHangChiTiet;
import com.example.duanbantra.entity.HoaDon;
import com.example.duanbantra.entity.KhachHang;
import com.example.duanbantra.entity.SanPham;
import com.example.duanbantra.service.GioHangChiTietService;
import com.example.duanbantra.service.GioHangService;
import com.example.duanbantra.service.HoaDonService;
import com.example.duanbantra.service.KhachHangService;
import com.example.duanbantra.service.SanPhamService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.util.ArrayList;
import java.sql.Date;
import java.util.List;
import java.util.Optional;

@Controller
public class ClientController {
    @Autowired
    private SanPhamService sanPhamService;

    @Autowired
    private KhachHangService khachHangService;

    @Autowired
    private GioHangService gioHangService;

    @Autowired
    private GioHangChiTietService gioHangChiTietService;


    private List<KhachHang> khachHangList = new ArrayList<>();

    private List<SanPham> sanPhamList = new ArrayList<>();

    private List<GioHang> gioHangList = new ArrayList<>();

    private List<GioHangChiTiet> gioHangChiTietList = new ArrayList<>();

    @GetMapping("/trang-chu")
    public String mainTra(Model model, HttpSession session) {
        Optional<Integer> idGet = Optional.ofNullable((Integer) session.getAttribute("id"));
        if (idGet.isPresent()) {
            KhachHang kh = khachHangService.detail(idGet.orElse(0));
            GioHang gh = gioHangService.detail(idGet.orElse(0));
            gioHangChiTietList = gioHangChiTietService.getAll(gh.getId());
            long tongTien = 0;
            for (GioHangChiTiet ghct : gioHangChiTietList) {
                tongTien += (ghct.getSanPham().getGiaBan() * ghct.getSoLuong());
            }
            model.addAttribute("tongTien", tongTien);
            model.addAttribute("listGioHang", gioHangChiTietList);
            model.addAttribute("gioHang", gh);
            model.addAttribute("checkLogin", true);
            model.addAttribute("tenAccount", kh.getHo() + " " + kh.getTen());

        } else {
            return "redirect:/login";
        }


        sanPhamList = sanPhamService.getAll();
        model.addAttribute("listSanPham", sanPhamList);

        return "/client/index";
    }

    @GetMapping("/shop")
    public String viewShop(Model model) {

        return "/client/shop";
    }

    @GetMapping("/login")
    public String viewLogin() {
        return "/client/login";
    }

    @PostMapping("/login")
    public String login(@RequestParam String phone, @RequestParam String password, Model model, HttpSession session) {
        khachHangList = khachHangService.getAll();

        for (KhachHang kh : khachHangList) {
            if (phone.equals(kh.getSdt()) && password.equals(kh.getMatKhau())) {
                session.setAttribute("id", kh.getId());
                return "redirect:/trang-chu";
            }
        }
        return "/client/login"; // Trang đăng nhập lại nếu đăng nhập không thành công

    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate(); // Xóa toàn bộ phiên (session)
        return "redirect:/login"; // Chuyển hướng đến trang đăng nhập sau khi đăng xuất
    }


    //cart

    @GetMapping("/gio-hang")
    public String viewGioHang(HttpSession session, Model model) {
        Optional<Integer> idGet = Optional.ofNullable((Integer) session.getAttribute("id"));
        if (idGet.isPresent()) {
            KhachHang kh = khachHangService.detail(idGet.orElse(0));
            GioHang gh = gioHangService.detail(idGet.orElse(0));
            gioHangChiTietList = gioHangChiTietService.getAll(gh.getId());
            long tongTien = 0;
            for (GioHangChiTiet ghct : gioHangChiTietList) {
                tongTien += (ghct.getSanPham().getGiaBan() * ghct.getSoLuong());
            }
            model.addAttribute("tongTien", tongTien);
            model.addAttribute("listGioHang", gioHangChiTietList);
            model.addAttribute("gioHang", gh);
            model.addAttribute("checkLogin", true);
            model.addAttribute("tenAccount", kh.getHo() + " " + kh.getTen());

            if (gioHangChiTietList.isEmpty()) {
                model.addAttribute("tinhTrang", true);
            } else {
                model.addAttribute("tinhTrang", false);
            }


        }


        return "/client/cart";
    }

    //Thêm giỏ hàng
    @GetMapping("/add/{id}")
    public String addGioHang(@PathVariable("id") Integer id, HttpSession session) {
        Integer idGet = (Integer) session.getAttribute("id"); // Lấy thông tin đăng nhập từ phiên
        SanPham sp = sanPhamService.detailSanPham(id);
        GioHang gh = gioHangService.detail(idGet);

        gioHangChiTietList = gioHangChiTietService.getAll(idGet);

        for (GioHangChiTiet ghct : gioHangChiTietList) {
            if (ghct.getSanPham().getId() == id) {
                ghct.setSoLuong(ghct.getSoLuong() + 1);
                gioHangChiTietService.add(ghct);
                return "redirect:/trang-chu";
            }
        }

        GioHangChiTiet ghNew = new GioHangChiTiet();
        ghNew.setGioHang(gh);
        ghNew.setSanPham(sp);
        ghNew.setSoLuong(1);
        ghNew.setDonGia(sp.getGiaBan());
        gioHangChiTietService.add(ghNew);
        sp.setSoLuong(sp.getSoLuong() - 1);
        sanPhamService.addSanPham(sp);
        return "redirect:/trang-chu";
    }

    @PostMapping("/update/{id}")
    public String updateGioHang(@PathVariable("id") Integer id, @RequestParam("soLuong") Integer soLuong) {
        if (soLuong <= 0) {
            return "redirect:/gio-hang";
        }

        GioHangChiTiet ghUpdate = gioHangChiTietService.detail(id);
        ghUpdate.setSoLuong(soLuong);
        ghUpdate.setDonGia(ghUpdate.getSanPham().getGiaBan() * soLuong);
        SanPham sp = ghUpdate.getSanPham();
        sp.setSoLuong(sp.getSoLuong() - soLuong);
        sanPhamService.addSanPham(sp);
        gioHangChiTietService.add(ghUpdate);

        return "redirect:/gio-hang";
    }


    @GetMapping("/remove/{id}")
    public String removeGioHang(@PathVariable("id") Integer id, Model model) {
        gioHangChiTietService.remove(id);

        return "redirect:/gio-hang";
    }


    @GetMapping("/checkout")
    public String checkout(HttpSession session, Model model) {
        model.addAttribute("hd1", new HoaDon());
        Optional<Integer> idGet = Optional.ofNullable((Integer) session.getAttribute("id"));
        if (idGet.isPresent()) {
            KhachHang kh = khachHangService.detail(idGet.orElse(0));
            GioHang gh = gioHangService.detail(idGet.orElse(0));
            gioHangChiTietList = gioHangChiTietService.getAll(gh.getId());
            long tongTien = 0;
            for (GioHangChiTiet ghct : gioHangChiTietList) {
                tongTien += (ghct.getSanPham().getGiaBan() * ghct.getSoLuong());
            }
            model.addAttribute("tongTien", tongTien);
            model.addAttribute("listGioHang", gioHangChiTietList);
            model.addAttribute("gioHang", gh);
            model.addAttribute("checkLogin", true);
            model.addAttribute("tenAccount", kh.getHo() + " " + kh.getTen());

        } else {
            return "redirect:/login";
        }

        return "/client/checkout";
    }


    //Hoá Đơn

    @Autowired
    private HoaDonService hoaDonService;

    private List<HoaDon> hoaDonList = new ArrayList<>();

    @PostMapping("/thanh-toan/add")
    public String thanhToan(@ModelAttribute("hd1") HoaDon hd1, BindingResult result, Model model, HttpSession session) {
        Optional<Integer> idGet = Optional.ofNullable((Integer) session.getAttribute("id"));
        KhachHang kh;
        long tongTien = 0;
        if (idGet.isPresent()) {
            kh = khachHangService.detail(idGet.orElse(0));
            GioHang gh = gioHangService.detail(idGet.orElse(0));
            gioHangChiTietList = gioHangChiTietService.getAll(gh.getId());

            for (GioHangChiTiet ghct : gioHangChiTietList) {
                tongTien += (ghct.getSanPham().getGiaBan() * ghct.getSoLuong());
            }
            model.addAttribute("tongTien", tongTien);
            model.addAttribute("listGioHang", gioHangChiTietList);
            model.addAttribute("gioHang", gh);
            model.addAttribute("checkLogin", true);
            model.addAttribute("tenAccount", kh.getHo() + " " + kh.getTen());

        } else {
            return "redirect:/login";
        }

        if (result.hasErrors()) {
            return "/client/checkout";
        }

        // Chuyển đổi LocalDate thành kiểu Date
        LocalDate localDate = LocalDate.now();

        // Chuyển đổi LocalDate thành kiểu Date
        Date sqlDate = Date.valueOf(localDate);

        hd1.setNgayTao(sqlDate);
        hd1.setKhachHang(kh);
        hd1.setTinhTrang(1);
        hd1.setTongTien(tongTien);
        hoaDonService.add(hd1);
        gioHangChiTietService.deleteAll();
        return "redirect:/trang-chu";
    }
}
