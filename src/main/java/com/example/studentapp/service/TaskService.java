package com.example.studentapp.service;

import com.example.studentapp.model.Task;
import com.example.studentapp.repository.TaskRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class TaskService {

    private final TaskRepository taskRepository;

    public void addTask(Task task){
        taskRepository.save(task);
    }

    public List<Task> getTasksList(){
        return taskRepository.findAll();
    }

    public Task getTaskById(Long id){
        return taskRepository.findById(id).orElse(null);
    }

    public void editTask(Task editTask){
        taskRepository.save(editTask);
    }

    public void deleteTask(Long id){
        taskRepository.deleteById(id);
    }

    public List<Task> findByColor(String name){
        List<Task> color = taskRepository.findByColor(name);
        log.info("color: {}", color);
        return color;
    }

    public void updateDescriptionById(Long id, String description){
        taskRepository.updateDescriptionById(id, description);
    }

}
