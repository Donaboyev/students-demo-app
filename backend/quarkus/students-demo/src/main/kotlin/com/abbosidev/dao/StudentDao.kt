package com.abbosidev.dao

import com.abbosidev.entity.Student

interface StudentDao {
    fun getAllStudents(): Collection<Student>

    fun insertNewStudent(student: Student)

    fun updateStudent(student: Student)

    fun deleteStudentById(id: Int)

    fun getStudentById(id: Int): Student?
}