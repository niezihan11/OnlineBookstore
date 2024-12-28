package com.example.onlinebookstore.controller;

import com.example.onlinebookstore.model.Admin;
import com.example.onlinebookstore.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private AdminService adminService;

    @PostMapping("/login")
    public Admin loginAdmin(@RequestBody Admin admin) {
        Admin existingAdmin = adminService.findByUsername(admin.getUsername());
        if (existingAdmin != null && existingAdmin.getPassword().equals(admin.getPassword())) {
            return existingAdmin;
        } else {
            throw new RuntimeException("Invalid username or password");
        }
    }

    @PostMapping("/add")
    public Admin addAdmin(@RequestBody Admin admin) {
        return adminService.saveAdmin(admin);
    }

    @GetMapping("/admin/login")
    public String showAdminLoginPage() {
        return "admin-login";
    }

    @PostMapping("/admin/login")
    public String loginAdmin(@RequestParam String username, @RequestParam String password) {
        // 验证管理员用户名和密码
        if ("admin".equals(username) && "password".equals(password)) {
            return "redirect:/admin/orders";
        } else {
            return "redirect:/admin/login?error";
        }
    }


}


