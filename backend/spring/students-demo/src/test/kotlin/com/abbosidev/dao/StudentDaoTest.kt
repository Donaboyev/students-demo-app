package com.abbosidev.dao

import com.abbosidev.entity.Student
import org.assertj.core.api.AssertionsForClassTypes.assertThat
import org.junit.jupiter.api.Order
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest

@SpringBootTest
class StudentDaoTest {

    @Autowired
    private lateinit var studentDao: StudentDao

    private val studentName = "TEST NAME"
    private val studentCourse = "TEST COURSE"

    @Test
    @Order(1)
    fun isAddingNewStudent() {
        val studentsCount = studentDao.getAllStudents().size
        val newStudent = Student(id = null, name = studentName, course = studentCourse)
        studentDao.insertNewStudent(newStudent)
        val expected = studentsCount + 1 == studentDao.getAllStudents().size
        assertThat(expected).isTrue()
//
//        val savedStudent = studentDao.getStudentById(studentId)
//        assertThat(savedStudent != null).isTrue()
//
//        val expectedName = savedStudent?.name == studentName
//        assertThat(expectedName).isTrue()
//
//        val expectedCourse = savedStudent?.course == studentCourse
//        assertThat(expectedCourse).isTrue()
    }
}