package com.abbosidev.application.port.`in`

interface WorkWithStudentUseCase {

    fun createANewStudent(student: StudentDto)

    fun updateStudent(id: Long, student: StudentDto): Int

    fun deleteStudent(id: Long): Boolean

}