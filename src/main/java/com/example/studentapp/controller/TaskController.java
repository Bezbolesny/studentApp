package com.example.studentapp.controller;

import org.springframework.web.bind.annotation.GetMapping;

public class TaskController {

    @GetMapping("/tasks")
    public String getAllTasks(){
        return "tasks/tasks";
    }

    @GetMapping("/addTask")
    public String getAddTask(){
        return "tasks/addTask";
    }

}
