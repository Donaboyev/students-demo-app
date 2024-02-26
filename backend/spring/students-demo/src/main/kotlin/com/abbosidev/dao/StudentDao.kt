package com.abbosidev.dao

import com.abbosidev.entity.Student

interface StudentDao {
    fun getAllStudents(): Collection<Student>

    fun getStudentById(id: Int): Student?

    fun deleteStudentById(id: Int)

    fun updateStudent(student: Student)

    fun insertNewStudent(student: Student)
}