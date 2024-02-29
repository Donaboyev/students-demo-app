package com.abbosidev.adapter.out

import com.abbosidev.application.domain.entity.Student
import com.abbosidev.application.port.`in`.StudentDto
import com.abbosidev.application.port.out.StudentRepository
import jakarta.enterprise.context.ApplicationScoped
import jakarta.transaction.Transactional

@ApplicationScoped
@Transactional
class StudentRepositoryImpl : StudentRepository {

    override fun getAllStudents(): List<Student> = Student.getAll()

    override fun saveNewStudent(student: StudentDto) = Student.save(student)

    override fun updateStudent(id: Long, student: StudentDto) = Student.updateRow(id, student)


    override fun deleteStudent(id: Long) = Student.deleteById(id)

    override fun getStudentById(id: Long) = Student.findById(id)

}