CREATE TABLE tblRecords (
    recordId BIGINT AUTO_INCREMENT PRIMARY KEY,
    studentId BIGINT,
    teacherId BIGINT,
    subjectId BIGINT,
    classroomId BIGINT,
    totalTrials INT,
    correctResponse INT,
    date DATE,
    FOREIGN KEY (studentId) REFERENCES tblStudents(studentId) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (teacherId) REFERENCES tblTeachers(teacherId) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (subjectId) REFERENCES tblSubjects(subjectId) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (classroomId) REFERENCES tblClassrooms(classRoomId) ON DELETE CASCADE ON UPDATE CASCADE
);