package com.abbosidev.service

import com.abbosidev.dao.StudentDao
import com.abbosidev.entity.Student
import jakarta.enterprise.context.ApplicationScoped
import jakarta.inject.Inject

@ApplicationScoped
class StudentService {

    @Inject
    private lateinit var studentDao: StudentDao

    fun getAllStudents(): Collection<Student> {
        return studentDao.getAllStudents()
    }

    fun insertStudent(student: Student) {
        studentDao.insertNewStudent(student)
    }

    fun updateStudent(student: Student) {
        studentDao.updateStudent(student)
    }

    fun deleteStudentById(id: Int) {
        studentDao.deleteStudentById(id)
    }

    fun getStudentById(id: Int): Student? {
        return studentDao.getStudentById(id)
    }
}