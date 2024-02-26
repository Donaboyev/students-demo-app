package com.abbosidev.dao

import com.abbosidev.entity.Student
import jakarta.enterprise.context.ApplicationScoped

private val students = HashMap<Int, Student>().apply {
    this.putAll(
        mapOf(
            1 to Student(1, "Abbas", "Maths"),
            2 to Student(2, "Javohir", "Physics"),
            3 to Student(3, "Dilmurod", "English"),
        )
    )
}

@ApplicationScoped
class StudentDaoImpl : StudentDao {
    override fun getAllStudents(): Collection<Student> {
        return students.values
    }

    override fun insertNewStudent(student: Student) {
        students[student.id] = student
    }

    override fun updateStudent(student: Student) {
        if (students.containsKey(student.id)) {
            val updated = students[student.id]!!.copy(
                name = student.name,
                course = student.course
            )
            students[student.id] = updated
        }
    }

    override fun deleteStudentById(id: Int) {
        if (students.containsKey(id)) {
            students.remove(id)
        }
    }

    override fun getStudentById(id: Int): Student? {
        return students[id]
    }
}