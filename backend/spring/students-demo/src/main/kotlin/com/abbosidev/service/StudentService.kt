package com.abbosidev.service

import com.abbosidev.dao.StudentDao
import com.abbosidev.entity.Student
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

@Service
class StudentService {

    @Autowired
    private lateinit var studentDao: StudentDao

    fun getAllStudents(): Collection<Student> {
        return studentDao.getAllStudents()
    }

    fun getStudentById(id: String): Student? {
        return studentDao.getStudentById(id)
    }

    fun deleteStudentById(id: String) {
        return studentDao.deleteStudentById(id)
    }

    fun updateStudent(student: Student) {
        return studentDao.updateStudent(student)
    }

    fun insertStudent(student: Student) {
        return studentDao.insertNewStudent(student)
    }
}