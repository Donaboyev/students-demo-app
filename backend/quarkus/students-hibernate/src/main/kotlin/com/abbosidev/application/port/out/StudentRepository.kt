package com.abbosidev.application.port.out

import com.abbosidev.application.domain.entity.Student
import com.abbosidev.application.port.`in`.StudentDto

interface StudentRepository {

    fun getAllStudents(): List<Student>

    fun saveNewStudent(student: StudentDto)

    fun updateStudent(id: Long, student: StudentDto): Int

    fun deleteStudent(id: Long): Boolean

    fun getStudentById(id: Long): Student?

}