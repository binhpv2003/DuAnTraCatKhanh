package com.example.duanbantra.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ClientController {
    //client
    @GetMapping("/trang-chu")
    public String mainTra() {

        return "/client/index";
    }

    @GetMapping("/shop")
    public String viewShop() {
        return "/client/shop";
    }

   


}
