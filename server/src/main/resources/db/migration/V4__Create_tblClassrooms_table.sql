CREATE TABLE tblClassrooms (
    classRoomId BIGINT AUTO_INCREMENT PRIMARY KEY,
    roomName VARCHAR(255) NOT NULL,
    startDate DATE NOT NULL,
    endDate DATE NOT NULL
);

CREATE TABLE tblClassroomTeachers (
    classRoomId BIGINT,
    teacherId BIGINT,
    PRIMARY KEY (classRoomId, teacherId),
    FOREIGN KEY (classRoomId) REFERENCES tblClassrooms(classRoomId) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (teacherId) REFERENCES tblTeachers(teacherId) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE tblClassroomStudents (
    classRoomId BIGINT,
    studentId BIGINT,
    PRIMARY KEY (classRoomId, studentId),
    FOREIGN KEY (classRoomId) REFERENCES tblClassrooms(classRoomId) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (studentId) REFERENCES tblStudents(studentId) ON DELETE CASCADE ON UPDATE CASCADE
);