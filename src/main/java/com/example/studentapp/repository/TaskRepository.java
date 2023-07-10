package com.example.studentapp.repository;

import com.example.studentapp.model.Task;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public interface TaskRepository extends JpaRepository<Task, Long> {

    List<Task> findByColor(String name);

    @Modifying
    @Transactional
    @Query("UPDATE Task t SET t.description = :description WHERE t.id = :id")
    int updateDescriptionById(@Param("id") Long id, @Param("description") String description);

}
