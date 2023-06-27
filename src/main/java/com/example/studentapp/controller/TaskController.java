package com.example.studentapp.controller;

import com.example.studentapp.model.Student;
import com.example.studentapp.model.Task;
import com.example.studentapp.service.StudentService;
import com.example.studentapp.service.TaskService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class TaskController {

    private final TaskService taskService;
    private final StudentService studentService;

    @GetMapping("/tasks")
    public String getTaskList(Model model){
        List<Task> list = taskService.getTasksList();
        model.addAttribute("task", list);
        return "tasks/tasks";
    }

    @GetMapping("/addTask")
    public String getAddTask(Model model){
        List<Student> list = studentService.getStudentList();
        model.addAttribute("student", list);
        return "tasks/addTask";
    }

    @PostMapping ("/addTask")
    public RedirectView postAddTask(Task task){
        taskService.addTask(task);
        return new RedirectView("/tasks");
    }

    @GetMapping("/editTask/{id}")
    public String getEditTask(@PathVariable Long id, Model model){
        Task taskById = taskService.getTaskById(id);
        model.addAttribute("task", taskById);
        return "tasks/editTask";
    }

    @PostMapping("/editTask/{id}")
    public RedirectView postEditTask(@PathVariable Long id, Task editTask){
        taskService.editTask(editTask);
        return new RedirectView("/tasks");
    }


    @PostMapping("/deleteTask/{id}")
    public RedirectView deleteTask(@PathVariable Long id){
        taskService.deleteTask(id);
        return new RedirectView("/tasks");
    }

}
