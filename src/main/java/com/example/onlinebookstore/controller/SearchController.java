package com.example.onlinebookstore.controller;

import com.example.onlinebookstore.model.Book;
import com.example.onlinebookstore.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Collections;
import java.util.List;

@Controller
public class SearchController {

    @Autowired
    private BookService bookService;

    @GetMapping("/search")
    public String searchBooks(@RequestParam(value = "query", required = false) String query,
                              @RequestParam(value = "type", required = false) String type,
                              Model model) {
        if (query == null || query.trim().isEmpty()) {
            model.addAttribute("books", Collections.emptyList()); // 返回空列表
            return "search"; // 返回搜索页面
        }

        List<Book> books;
        if ("author".equalsIgnoreCase(type)) {
            books = bookService.searchBooksByAuthor(query);
        } else {
            books = bookService.searchBooksByTitle(query);
        }

        model.addAttribute("books", books);
        model.addAttribute("query", query);
        model.addAttribute("type", type);
        return "search";
    }
}
