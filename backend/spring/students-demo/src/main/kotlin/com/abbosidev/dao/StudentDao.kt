package com.abbosidev.dao

import com.abbosidev.entity.Student

interface StudentDao {
    fun getAllStudents(): Collection<Student>

    fun getStudentById(id: String): Student?

    fun deleteStudentById(id: String)

    fun updateStudent(student: Student)

    fun insertNewStudent(student: Student)
}