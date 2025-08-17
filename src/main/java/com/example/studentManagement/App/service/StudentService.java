package com.example.studentManagement.App.service;

import com.example.studentManagement.App.entity.Student;

import java.util.List;

public interface StudentService {
    List<Student>getAllStudents();
    Student saveStudent(Student student);
    Student getStudentById(Long id);
    Student updateStudent(Student student);
    void deleteStudentById(Long id);
}
