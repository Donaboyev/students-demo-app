package com.abbosidev.dao

import com.abbosidev.entity.Student
import jakarta.enterprise.context.ApplicationScoped
import java.util.*
import kotlin.collections.HashMap

private val students = HashMap<String, Student>().apply {
    val firstId = UUID.randomUUID().toString()
    val secondId = UUID.randomUUID().toString()
    val thirdId = UUID.randomUUID().toString()
    this.putAll(
        mapOf(
            firstId to Student(firstId, "Abbas", "Maths"),
            secondId to Student(secondId, "Javohir", "Physics"),
            thirdId to Student(thirdId, "Dilmurod", "English"),
        )
    )
}

@ApplicationScoped
class StudentDaoImpl : StudentDao {
    override fun getAllStudents(): Collection<Student> {
        return students.values
    }

    override fun insertNewStudent(student: Student) {
        val id = UUID.randomUUID().toString()
        println("New student: $id")
        students[id] = student.copy(id = id)
    }

    override fun updateStudent(student: Student) {
        if (students.containsKey(student.id)) {
            val updated = students[student.id]!!.copy(
                name = student.name,
                course = student.course
            )
            students[student.id!!] = updated
        }
    }

    override fun deleteStudentById(id: String) {
        if (students.containsKey(id)) {
            students.remove(id)
        }
    }

    override fun getStudentById(id: String): Student? {
        return students[id]
    }
}