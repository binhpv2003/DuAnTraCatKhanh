package com.example.duanbantra.controller;

import com.example.duanbantra.entity.ChucVu;
import com.example.duanbantra.entity.DanhMuc;
import com.example.duanbantra.entity.GioHang;
import com.example.duanbantra.entity.HoaDon;
import com.example.duanbantra.entity.KhachHang;
import com.example.duanbantra.entity.NSX;
import com.example.duanbantra.entity.NhanVien;
import com.example.duanbantra.entity.SanPham;
import com.example.duanbantra.service.ChucVuService;
import com.example.duanbantra.service.DanhMucService;
import com.example.duanbantra.service.GioHangService;
import com.example.duanbantra.service.HoaDonService;
import com.example.duanbantra.service.KhachHangService;
import com.example.duanbantra.service.NSXService;
import com.example.duanbantra.service.NhanVienService;
import com.example.duanbantra.service.SanPhamService;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.Random;

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
    public String viewAdmin(Model model,HttpSession session) {
        Integer id = (Integer) session.getAttribute("id"); // Lấy thông tin đăng nhập từ phiên
        if (id != null) {
            NhanVien nv = nhanVienService.detail(id);
            model.addAttribute("checkLogin", 1);
            model.addAttribute("Id", nv.getTen());
            return "/admin/index";
        }
        return "/admin/login";
    }

    @GetMapping("/quan-ly-san-pham")
    public String viewQuanLySanPham(Model model,HttpSession session) {
        Integer id = (Integer) session.getAttribute("id"); // Lấy thông tin đăng nhập từ phiên
        if (id != null) {
            NhanVien nv = nhanVienService.detail(id);
            model.addAttribute("checkLogin", 1);
            model.addAttribute("Id", nv.getTen());

        }else {
            return "/admin/login";
        }


        listSanPham = serviceSanPham.getAll();
        danhMucList = danhMucService.getAll();
        model.addAttribute("listDanhMuc", danhMucList);
        model.addAttribute("listSanPham", listSanPham);

        return "/admin/view-san-pham";
    }

    @GetMapping("/view-add")
    public String viewAdd(Model model,HttpSession session) {
        Integer id = (Integer) session.getAttribute("id"); // Lấy thông tin đăng nhập từ phiên
        if (id != null) {
            NhanVien nv = nhanVienService.detail(id);
            model.addAttribute("checkLogin", 1);
            model.addAttribute("Id", nv.getTen());

        }else {
            return "/admin/login";
        }

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
    public String viewAdd(@PathVariable("id") Integer id, Model model,HttpSession session) {
        Integer idGet = (Integer) session.getAttribute("id"); // Lấy thông tin đăng nhập từ phiên
        if (idGet != null) {
            NhanVien nv = nhanVienService.detail(idGet);
            model.addAttribute("checkLogin", 1);
            model.addAttribute("Id", nv.getTen());

        }else {
            return "/admin/login";
        }

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

    //Danh Mục

    @GetMapping("/danh-muc")
    public String viewDanhMuc(Model model,HttpSession session) {
        Integer idGet = (Integer) session.getAttribute("id"); // Lấy thông tin đăng nhập từ phiên
        if (idGet != null) {
            NhanVien nv = nhanVienService.detail(idGet);
            model.addAttribute("checkLogin", 1);
            model.addAttribute("Id", nv.getTen());

        }else {
            return "/admin/login";
        }

        model.addAttribute("dm1", new DanhMuc());
        danhMucList = danhMucService.getAll();
        model.addAttribute("listDanhMuc", danhMucList);
        return "/admin/viewDanhMuc";
    }

    @PostMapping("/add-danh-muc")
    public String addDanhMuc(@Valid @ModelAttribute("dm1") DanhMuc dm1, BindingResult result, Model model) {
        if (result.hasErrors()) {
            danhMucList = danhMucService.getAll();
            model.addAttribute("listDanhMuc", danhMucList);
            return "/admin/viewDanhMuc";
        }
        danhMucService.add(dm1);
        return "redirect:/admin/danh-muc";
    }

    @GetMapping("/remove-danhmuc/{id}")
    public String removeDanhMuc(@PathVariable("id") Integer id) {
        danhMucService.remove(id);
        return "redirect:/admin/danh-muc";
    }

    @GetMapping("/detail-danhmuc/{id}")
    public String detailDanhMuc(@PathVariable("id") Integer id, Model model) {
        model.addAttribute("dm1", danhMucService.detail(id));
        danhMucList = danhMucService.getAll();
        model.addAttribute("listDanhMuc", danhMucList);
        return "/admin/viewDanhMuc";
    }

    //NSX

    @GetMapping("/nsx")
    public String viewNsx(Model model,HttpSession session) {
        Integer idGet = (Integer) session.getAttribute("id"); // Lấy thông tin đăng nhập từ phiên
        if (idGet != null) {
            NhanVien nv = nhanVienService.detail(idGet);
            model.addAttribute("checkLogin", 1);
            model.addAttribute("Id", nv.getTen());

        }else {
            return "/admin/login";
        }

        nsxList = nsxService.getAll();
        model.addAttribute("sx1", new NSX());
        model.addAttribute("listNSX", nsxList);
        return "/admin/viewNSX";
    }

    @PostMapping("/add-nsx")
    public String addNsx(@Valid @ModelAttribute("sx1") NSX sx1, BindingResult result, Model model) {
        if (result.hasErrors()) {
            nsxList = nsxService.getAll();
            model.addAttribute("listNSX", nsxList);
            return "/admin/viewDanhMuc";
        }
        nsxService.add(sx1);
        return "redirect:/admin/nsx";
    }

    @GetMapping("/remove-nsx/{id}")
    public String removeNsx(@PathVariable("id") Integer id) {
        nsxService.remove(id);
        return "redirect:/admin/nsx";
    }

    @GetMapping("/detail-nsx/{id}")
    public String detailNsx(@PathVariable("id") Integer id, Model model) {
        model.addAttribute("sx1", nsxService.detail(id));
        nsxList = nsxService.getAll();
        model.addAttribute("listNSX", nsxList);
        return "/admin/viewNSX";
    }

//Nhan vien

    @Autowired
    private NhanVienService nhanVienService;

    @Autowired
    private ChucVuService chucVuService;
    private List<NhanVien> nhanVienList = new ArrayList<>();
    private List<ChucVu> chucVuList = new ArrayList<>();

    @GetMapping("/nhan-vien")
    public String hienThiNhanVien(Model model,HttpSession session) {
        Integer idGet = (Integer) session.getAttribute("id"); // Lấy thông tin đăng nhập từ phiên
        if (idGet != null) {
            NhanVien nv = nhanVienService.detail(idGet);
            model.addAttribute("checkLogin", 1);
            model.addAttribute("Id", nv.getTen());

        }else {
            return "/admin/login";
        }
        nhanVienList = nhanVienService.getAll();
        model.addAttribute("listNhanVien", nhanVienList);
        return "/admin/view-nhan-vien";
    }


    @GetMapping("/nhan-vien/view-add")
    public String viewAddNhanVien(Model model,HttpSession session) {
        Integer idGet = (Integer) session.getAttribute("id"); // Lấy thông tin đăng nhập từ phiên
        if (idGet != null) {
            NhanVien nv = nhanVienService.detail(idGet);
            model.addAttribute("checkLogin", 1);
            model.addAttribute("Id", nv.getTen());

        }else {
            return "/admin/login";
        }
        chucVuList = chucVuService.getAll();
        model.addAttribute("nv1", new NhanVien());
        model.addAttribute("listChucVu", chucVuList);

        return "/admin/view-add-nhan-vien";
    }

    @PostMapping("/nhan-vien/add")
    public String addNhanVien(@ModelAttribute("nv1") NhanVien nv1, BindingResult result, Model model) {
        if (result.hasErrors()) {
            chucVuList = chucVuService.getAll();
            model.addAttribute("listChucVu", chucVuList);
            return "/admin/view-add-nhan-vien";
        }
        nhanVienService.add(nv1);

        return "redirect:/admin/nhan-vien";
    }

    @GetMapping("/nhan-vien/view-update/{id}")
    public String viewUpdateNhanVien(@PathVariable("id") Integer id, Model model,HttpSession session) {
        Integer idGet = (Integer) session.getAttribute("id"); // Lấy thông tin đăng nhập từ phiên
        if (idGet != null) {
            NhanVien nv = nhanVienService.detail(idGet);
            model.addAttribute("checkLogin", 1);
            model.addAttribute("Id", nv.getTen());

        }else {
            return "/admin/login";
        }
        model.addAttribute("nv1", nhanVienService.detail(id));
        chucVuList = chucVuService.getAll();
        model.addAttribute("listChucVu", chucVuList);
        return "/admin/view-add-nhan-vien";
    }

    @GetMapping("/nhan-vien/remove/{id}")
    public String deleteNhanVien(@PathVariable("id") Integer id, Model model) {
        NhanVien nv = nhanVienService.detail(id);
        if (nv.getTrangThai() == false) {
            nv.setTrangThai(true);
        } else {
            nv.setTrangThai(false);
        }
        nhanVienService.add(nv);
        return "redirect:/admin/nhan-vien";
    }


    //Phân Trang
    @GetMapping("/phan-trang")
    public String phanTrang(@RequestParam(value = "page", defaultValue = "0") int page, Model model) {
        listSanPham = serviceSanPham.findAllSanPham(page, 2).getContent();
        danhMucList = danhMucService.getAll();
        model.addAttribute("listDanhMuc", danhMucList);
        model.addAttribute("listSanPham", listSanPham);
        model.addAttribute("sp1", new SanPham());
        return "/admin/view-san-pham";
    }

    //Chức Vụ

    @GetMapping("/chuc-vu")
    public String viewChucVu(Model model,HttpSession session) {
        Integer idGet = (Integer) session.getAttribute("id"); // Lấy thông tin đăng nhập từ phiên
        if (idGet != null) {
            NhanVien nv = nhanVienService.detail(idGet);
            model.addAttribute("checkLogin", 1);
            model.addAttribute("Id", nv.getTen());

        }else {
            return "/admin/login";
        }
        model.addAttribute("cv1", new ChucVu());
        chucVuList = chucVuService.getAll();
        model.addAttribute("listChucVu", chucVuList);
        return "/admin/viewChucVu";
    }

    @PostMapping("/chuc-vu/add")
    public String addChucVu(@ModelAttribute("cv1") ChucVu cv1, BindingResult result, Model model) {
        if (result.hasErrors()) {
            chucVuList = chucVuService.getAll();
            model.addAttribute("listChucVu", chucVuList);
            return "/admin/viewChucVu";
        }
        chucVuService.add(cv1);
        return "redirect:/admin/chuc-vu";
    }

    //Khách Hàng

    @Autowired
    private KhachHangService khachHangService;



    private List<KhachHang> khachHangList = new ArrayList<>();



    @GetMapping("/khach-hang")
    public String hienThiKhachHang(Model model,HttpSession session) {
        Integer idGet = (Integer) session.getAttribute("id"); // Lấy thông tin đăng nhập từ phiên
        if (idGet != null) {
            NhanVien nv = nhanVienService.detail(idGet);
            model.addAttribute("checkLogin", 1);
            model.addAttribute("Id", nv.getTen());

        }else {
            return "/admin/login";
        }

        khachHangList = khachHangService.getAll();
        model.addAttribute("listKhachHang", khachHangList);
        return "/admin/view-khach-hang";
    }

    @Autowired
    private GioHangService gioHangService;
    @GetMapping("/khach-hang/view-add")
    public String viewAddKhachHang(Model model,HttpSession session) {
        Integer idGet = (Integer) session.getAttribute("id"); // Lấy thông tin đăng nhập từ phiên
        if (idGet != null) {
            NhanVien nv = nhanVienService.detail(idGet);
            model.addAttribute("checkLogin", 1);
            model.addAttribute("Id", nv.getTen());

        }else {
            return "/admin/login";
        }
        model.addAttribute("kh1", new KhachHang());
        return "/admin/view-add-khach-hang";
    }

    @PostMapping("/khach-hang/add")
    public String addKhachhang(@ModelAttribute("kh1") KhachHang kh1, BindingResult result, Model model) {
        if (result.hasErrors()) {

            return "/admin/view-add-khach-hang";
        }
        khachHangService.add(kh1);
        GioHang gh = new GioHang();
        gh.setMa(kh1.getMa());
        gh.setKhachHang(kh1);
        Long thanhTien = Long.valueOf("0");
        gh.setThanhTien(thanhTien);
        gh.setTinhTrang(1);
        gioHangService.add(gh);

        return "redirect:/admin/khach-hang";

    }

    @GetMapping("/khach-hang/view-update/{id}")
    public String viewUpdateKhachHang(@PathVariable("id") Integer id, Model model,HttpSession session) {
        Optional<Integer> idGet = Optional.ofNullable((Integer) session.getAttribute("id"));
        if (idGet.isPresent()) {

            NhanVien nv = nhanVienService.detail(idGet.orElse(0));
            model.addAttribute("checkLogin", 1);
            model.addAttribute("Id", nv.getTen());


        }else {
            return "redirect:/admin/login";
        }

        model.addAttribute("kh1", khachHangService.detail(id));
        khachHangList = khachHangService.getAll();
        model.addAttribute("listKhachHang", khachHangList);
        return "/admin/view-add-khach-hang";
    }

    @GetMapping("/khach-hang/remove/{id}")
    public String deleteKhachHang(@PathVariable("id") Integer id, Model model) {
        KhachHang kh = khachHangService.detail(id);
        if (kh.getTrangThai() == false) {
            kh.setTrangThai(true);
        } else {
            kh.setTrangThai(false);
        }
        khachHangService.add(kh);
        return "redirect:/admin/khach-hang";
    }


    //Login
    @GetMapping("/login")
    public String viewLogin(Model model) {
        return "/admin/login";
    }


    @PostMapping("/login")
    public String login(@RequestParam String phone, @RequestParam String password, Model model, HttpSession session) {
        nhanVienList = nhanVienService.getAll();

        for (NhanVien nv : nhanVienList) {
            if (phone.equals(nv.getSdt()) && password.equals(nv.getMatKhau())) {
                session.setAttribute("id", nv.getId());
                return "redirect:/admin";
            }
        }
        return "/admin/login"; // Trang đăng nhập lại nếu đăng nhập không thành công

    }
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate(); // Xóa toàn bộ phiên (session)
        return "redirect:/admin/login"; // Chuyển hướng đến trang đăng nhập sau khi đăng xuất
    }


    //Hóa Đơn

    @Autowired
    private HoaDonService hoaDonService;

    private List<HoaDon>hoaDonList = new ArrayList<>();

    @GetMapping("/don-hang")
    public String viewDonHang(Model model,HttpSession session){
        Optional<Integer> idGet = Optional.ofNullable((Integer) session.getAttribute("id"));
        if (idGet.isPresent()) {

            NhanVien nv = nhanVienService.detail(idGet.orElse(0));
            model.addAttribute("checkLogin", 1);
            model.addAttribute("Id", nv.getTen());


        }else {
            return "redirect:/admin/login";
        }
        hoaDonList = hoaDonService.getAll();
        model.addAttribute("listHoaDon",hoaDonList);

        return "/admin/view-don-hang";
    }

    @GetMapping("/confirm/{id}")
    public String confirmDonHang(@PathVariable("id")Integer id,Model model,HttpSession session){
        Optional<Integer> idGet = Optional.ofNullable((Integer) session.getAttribute("id"));
        NhanVien nv;
        if (idGet.isPresent()) {

           nv = nhanVienService.detail(idGet.orElse(0));
            model.addAttribute("checkLogin", 1);
            model.addAttribute("Id", nv.getTen());


        }else {
            return "redirect:/admin/login";
        }
        HoaDon hd = hoaDonService.detail(id);
        hd.setNhanVien(nv);

        // Chuyển đổi LocalDate thành kiểu Date
        LocalDate localDate = LocalDate.now();

        // Chuyển đổi LocalDate thành kiểu Date
        Date sqlDate = Date.valueOf(localDate);
        hd.setNgayThanhToan(sqlDate);
        hd.setTinhTrang(2);
        hoaDonService.add(hd);
        return "redirect:/admin/don-hang";

    }

}
