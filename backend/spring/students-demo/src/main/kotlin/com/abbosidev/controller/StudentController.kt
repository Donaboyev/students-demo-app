package com.abbosidev.controller

import com.abbosidev.entity.Student
import com.abbosidev.service.StudentService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.bind.annotation.CrossOrigin
import org.springframework.web.bind.annotation.DeleteMapping
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.PutMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/students")
@CrossOrigin
class StudentController {

    @Autowired
    private lateinit var studentService: StudentService

    @GetMapping
    fun getAllStudents(): Collection<Student> {
        println("Controller: ${studentService.getAllStudents()}")
        return studentService.getAllStudents()
    }

    @GetMapping("/{id}")
    fun getStudentById(@PathVariable("id") id: String): Student {
        val student =
            studentService.getStudentById(id)
                ?: throw RuntimeException("Student does not exist with this id!")
        return student
    }

    @DeleteMapping("/{id}")
    fun deleteStudentById(@PathVariable("id") id: String) {
        studentService.deleteStudentById(id)
    }

    @PutMapping
    fun updateStudent(@RequestBody student: Student) {
        studentService.updateStudent(student)
    }

    @PostMapping
    fun insertStudent(@RequestBody student: Student) {
        studentService.insertStudent(student)
    }
}