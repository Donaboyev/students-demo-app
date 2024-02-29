package com.abbosidev.application.port.`in`

import com.abbosidev.application.domain.entity.Student

interface GetStudentUseCase {

    fun getAllStudents(): List<Student>

    fun getStudentById(id: Long): Student?

}