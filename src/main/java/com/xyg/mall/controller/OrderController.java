package com.xyg.mall.controller;

import com.xyg.mall.pojo.Order;
import com.xyg.mall.service.OrderService;
import com.xyg.mall.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("")
public class OrderController {
    @Autowired
    OrderService orderService;

    @RequestMapping("admin_order_list")
    public String list(Page page, Model model) {
        List<Order> os = orderService.list();
        model.addAttribute("os", os);
        model.addAttribute("page", page);
        return "admin/listOrder";
    }
}
