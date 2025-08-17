package com.example.studentManagement.App.repository;

import com.example.studentManagement.App.entity.Student;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StudentRepository extends JpaRepository<Student,Long> {

}
