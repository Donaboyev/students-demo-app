package com.abbosidev.application.domain.service

import com.abbosidev.application.port.`in`.StudentDto
import com.abbosidev.application.port.`in`.WorkWithStudentUseCase
import com.abbosidev.application.port.out.StudentRepository
import jakarta.enterprise.context.ApplicationScoped

@ApplicationScoped
class WorkWithStudentService(private val studentRepository: StudentRepository) : WorkWithStudentUseCase {

    override fun createANewStudent(student: StudentDto) = studentRepository.saveNewStudent(student)

    override fun updateStudent(id: Long, student: StudentDto) = studentRepository.updateStudent(id, student)

    override fun deleteStudent(id: Long) = studentRepository.deleteStudent(id)

}