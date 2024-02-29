package com.abbosidev.application.domain.service

import com.abbosidev.application.domain.entity.Student
import com.abbosidev.application.port.`in`.GetStudentUseCase
import com.abbosidev.application.port.out.StudentRepository
import jakarta.enterprise.context.ApplicationScoped

@ApplicationScoped
class GetStudentService(private val studentRepository: StudentRepository) : GetStudentUseCase {

    override fun getAllStudents(): List<Student> = studentRepository.getAllStudents()

    override fun getStudentById(id: Long) = studentRepository.getStudentById(id)

}