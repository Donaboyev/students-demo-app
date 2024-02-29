package com.abbosidev.domain.student

import jakarta.enterprise.context.ApplicationScoped
import jakarta.transaction.Transactional

@ApplicationScoped
@Transactional
class StudentService {
    fun getAllStudents() = StudentEntity.getAll()

    fun getStudentById(id: Long) = StudentEntity.findById(id)

    fun createANewStudent(student: StudentDto) = StudentEntity.save(student)

    fun updateStudent(id: Long, student: StudentDto) = StudentEntity.updateRow(id, student)

    fun deleteStudent(id: Long) = StudentEntity.deleteById(id)
}