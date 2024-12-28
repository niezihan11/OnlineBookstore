package com.example.onlinebookstore.controller;

import com.example.onlinebookstore.model.Book;
import com.example.onlinebookstore.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

@RestController
@RequestMapping("/books")
public class BookController {
    @Autowired
    private BookService bookService;

    // 添加图片
    private static String UPLOAD_DIR = "src/main/resources/static/images/";

    @PostMapping("/{bookId}/uploadImage")
    public Book uploadImage(@PathVariable Long bookId, @RequestParam("image") MultipartFile image) {
    Book book = bookService.findById(bookId);
    if (book != null) {
        try {
            byte[] bytes = image.getBytes();
            Path path = Paths.get(UPLOAD_DIR + image.getOriginalFilename());
            Files.write(path, bytes);
            book.setImageUrl("/images/" + image.getOriginalFilename());
            return bookService.saveBook(book);
        } catch (IOException e) {
            throw new RuntimeException("Failed to upload image", e);
        }
    } else {
        throw new RuntimeException("Book not found");
    }
}


    @GetMapping
    public List<Book> getAllBooks() {
        return bookService.getAllBooks();
    }

    @GetMapping("/{id}")
    public Book getBookById(@PathVariable Long id) {
        return bookService.findById(id);
    }

    @PostMapping
    public Book createBook(@RequestBody Book book) {
        return bookService.saveBook(book);
    }

    @PutMapping("/{id}")
    public Book updateBook(@PathVariable Long id, @RequestBody Book book) {
        Book existingBook = bookService.findById(id);
        if (existingBook != null) {
            existingBook.setTitle(book.getTitle());
            existingBook.setIsbn(book.getIsbn());
            existingBook.setPublishDate(book.getPublishDate());
            existingBook.setAuthors(book.getAuthors());
            existingBook.setPublisher(book.getPublisher());
            existingBook.setPrice(book.getPrice());
            existingBook.setDescription(book.getDescription());
            existingBook.setOnShelf(book.isOnShelf());
            existingBook.setImageUrl(book.getImageUrl());
            return bookService.saveBook(existingBook);
        } else {
            throw new RuntimeException("Book not found");
        }
    }

    @DeleteMapping("/{id}")
    public void deleteBook(@PathVariable Long id) {
        bookService.deleteBook(id);
    }
}
