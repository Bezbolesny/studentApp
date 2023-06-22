package com.example.studentapp.controller;

import com.example.studentapp.model.Student;
import com.example.studentapp.service.StudentService;
import lombok.RequiredArgsConstructor;
import org.springframework.boot.Banner;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class StudentController {

    private final StudentService studentService;

    @GetMapping("/students")
    public String getStudentList(Model model){
        List<Student> studentList = studentService.getStudentList();
        model.addAttribute("student", studentList);
        return "persons/personList";
    }

    @GetMapping("/addStudent")
    public String getAddStudent(){
        return "persons/addNewPerson";
    }

    @PostMapping("/addStudent")
    public RedirectView postStudent(Student student){
        studentService.addStudent(student);
        return new RedirectView("/students");
    }

    @GetMapping("/editStudent/{id}")
    public String getEditStudent(@PathVariable Long id, Model model){
        Student studentById = studentService.getStudentById(id);
        model.addAttribute("student", studentById);
        return "persons/editPerson";
    }

    @PostMapping("/editStudent/{id}")
    public RedirectView postEditStudent(@PathVariable Long id, Student editStudent){
        studentService.editStudent(editStudent);
        return new RedirectView("/students");
    }

    @PostMapping("/deleteStudent/{id}")
    public RedirectView deleteStudent(@PathVariable Long id){
        studentService.deleteStudent(id);
        return new RedirectView("/students");
    }

}
