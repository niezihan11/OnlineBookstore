package com.example.onlinebookstore.repository;

import com.example.onlinebookstore.model.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookRepository extends JpaRepository<Book, Long> {
    List<Book> findByTitleContainingOrAuthorsContaining(String title, String authors);
    List<Book> findByTitleContainingIgnoreCase(String title);
    List<Book> findByAuthorsContainingIgnoreCase(String authors);

}
