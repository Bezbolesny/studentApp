package com.example.studentapp.service;

import com.example.studentapp.model.Student;
import com.example.studentapp.repository.StudentRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class StudentService {

    private final StudentRepository studentRepository;

    public void addStudent(Student student){
        studentRepository.save(student);
    }

    public List<Student> getStudentList(){
        return studentRepository.findAll();
    }

    public Student getStudentById(Long id){
        return studentRepository.findById(id).orElse(null);
    }

    public void editStudent(Student editStudent){
        studentRepository.save(editStudent);
    }

    public void deleteStudent(Long id){
        studentRepository.deleteById(id);
    }

    public Page<Student> getAllStudent(Pageable pageable){
        return studentRepository.findAll(pageable);
    }

}
