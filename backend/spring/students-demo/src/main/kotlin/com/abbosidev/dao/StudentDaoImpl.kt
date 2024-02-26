package com.abbosidev.dao

import com.abbosidev.entity.Student
import org.springframework.stereotype.Repository
import java.util.UUID

private val students = HashMap<String, Student>().apply {
    val firstId = UUID.randomUUID().toString()
    val secondId = UUID.randomUUID().toString()
    val thirdId = UUID.randomUUID().toString()
    this.putAll(
        mapOf(
            firstId to Student(firstId, "Abbas", "Computer Science"),
            secondId to Student(secondId, "Sarvar", "Maths"),
            thirdId to Student(thirdId, "Temur", "Physics"),
        )
    )
}


@Repository
class StudentDaoImpl : StudentDao {

    override fun getAllStudents(): Collection<Student> {
        return students.values
    }

    override fun getStudentById(id: String): Student? {
        return students[id]
    }

    override fun deleteStudentById(id: String) {
        if (students.containsKey(id)) {
            students.remove(id)
        }
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

    override fun insertNewStudent(student: Student) {
        val id = UUID.randomUUID().toString()
        println("New student $id")
        students[id] = student.copy(id = id)
    }

}