-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-12-10 08:46:32
-- 伺服器版本： 10.4.24-MariaDB
-- PHP 版本： 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `s350f`
--

-- --------------------------------------------------------

--
-- 資料表結構 `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `course_id` varchar(10) NOT NULL,
  `assignment_title` varchar(255) NOT NULL,
  `assignment_material` varchar(255) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'In Progress'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `course_id`, `assignment_title`, `assignment_material`, `due_date`, `status`) VALUES
(1014, 'COMPS312F', 'COMPS312F-Assignment 1', 'Ch1 Introduction.pdf', '2024-01-31', 'In Progress'),
(1015, 'COMPS320F', 'COMPS320F-Assignment 5', 'Ch2 SW Processes.pdf', '2024-01-11', 'In Progress'),
(1016, 'COMPS350F', 'COMPS350F-Assignment 2', 'Ch3 Agile SW Devlopment_2.pdf', '2024-01-30', 'In Progress'),
(1017, 'COMPS312F', 'Test 1', 'Ch7 Implementation_3.pdf', '2023-12-09', 'In Progress');

-- --------------------------------------------------------

--
-- 資料表結構 `course`
--

CREATE TABLE `course` (
  `course_id` varchar(10) NOT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `teacher_id` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `teacher_id`) VALUES
('COMPS312F', 'Java Application Development', 't1234567'),
('COMPS320F', 'Database Management', 't1234567'),
('COMPS350F', 'Software Engineering', 't1234567'),
('COMPS381F', 'Server-side Technologies And Cloud Computing', 't1234567');

-- --------------------------------------------------------

--
-- 資料表結構 `courseselection`
--

CREATE TABLE `courseselection` (
  `id` int(10) NOT NULL,
  `stu_id` varchar(8) DEFAULT NULL,
  `course_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `courseselection`
--

INSERT INTO `courseselection` (`id`, `stu_id`, `course_id`) VALUES
(1001, '12345111', 'COMPS312F'),
(1003, '12345111', 'COMPS350F'),
(1004, '12345222', 'COMPS312F'),
(1005, '12345222', 'COMPS350F'),
(1007, '12345111', 'COMPS320F'),
(1008, '12345111', 'COMPS381F');

-- --------------------------------------------------------

--
-- 資料表結構 `it_staff`
--

CREATE TABLE `it_staff` (
  `staffId` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `it_staff`
--

INSERT INTO `it_staff` (`staffId`, `password`) VALUES
('i1234567', '123456');

-- --------------------------------------------------------

--
-- 資料表結構 `studend_score`
--

CREATE TABLE `studend_score` (
  `id` int(11) NOT NULL,
  `course_id` varchar(10) NOT NULL,
  `stu_id` varchar(8) NOT NULL,
  `category` varchar(10) NOT NULL,
  `score_category` varchar(10) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `full_mark` varchar(10) NOT NULL,
  `getMark` double NOT NULL,
  `grade_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `studend_score`
--

INSERT INTO `studend_score` (`id`, `course_id`, `stu_id`, `category`, `score_category`, `grade`, `full_mark`, `getMark`, `grade_id`) VALUES
(1028, 'COMPS312F', '12345111', 'OCAS', 'Test1', 'B', '20', 12, 1000),
(1035, 'COMPS312F', '12345111', 'OES', 'Exam', 'B', '70', 40, 1000),
(1038, 'COMPS312F', '12345111', 'OCAS', 'Test2', 'C+', '10', 5, 1000),
(1039, 'COMPS350F', '12345111', 'OCAS', 'Lab', 'A', '30', 30, 1001),
(1040, 'COMPS350F', '12345111', 'OES', 'Exam', 'A', '70', 70, 1001),
(1041, 'COMPS320F', '12345111', 'OCAS', 'Test1', 'C+', '30', 15, 1002),
(1042, 'COMPS320F', '12345111', 'OCAS', 'Test2', 'F', '30', 10, 1002),
(1045, 'COMPS320F', '12345111', 'OES', 'Exam', 'C+', '40', 20, 1002);

-- --------------------------------------------------------

--
-- 資料表結構 `student`
--

CREATE TABLE `student` (
  `stu_id` varchar(8) NOT NULL,
  `stu_name` varchar(20) NOT NULL,
  `year` varchar(10) NOT NULL DEFAULT 'Year1',
  `personal_email` varchar(20) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `age` int(3) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone_number` int(8) NOT NULL,
  `major_subject` varchar(10) NOT NULL,
  `stu_aid` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `student`
--

INSERT INTO `student` (`stu_id`, `stu_name`, `year`, `personal_email`, `gender`, `age`, `address`, `phone_number`, `major_subject`, `stu_aid`) VALUES
('12345111', 'Kevin Tong', 'Year3', '12345111@gmail.com', 'M', 21, 'aaa     ', 12345678, 'CS    ', 's1234511'),
('12345222', 'Kevin', 'Year3', '12345222@gmail.com', 'M', 21, '', 52335033, 'CS', 's1234522');

-- --------------------------------------------------------

--
-- 資料表結構 `studentassignment`
--

CREATE TABLE `studentassignment` (
  `id` int(11) NOT NULL,
  `assignment_id` int(11) DEFAULT NULL,
  `stu_id` varchar(8) DEFAULT NULL,
  `assignment` varchar(255) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Not submitted ',
  `submit_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `studentassignment`
--

INSERT INTO `studentassignment` (`id`, `assignment_id`, `stu_id`, `assignment`, `status`, `submit_time`) VALUES
(1005, 1014, '12345111', 'Ch9 Evolution.pdf', 'submitted', '2023-12-10 00:00:00'),
(1006, 1014, '12345222', NULL, 'Not submitted ', NULL),
(1008, 1015, '12345111', NULL, 'Not submitted ', NULL),
(1009, 1016, '12345111', 'Ch9 Evolution.pdf', 'submitted', '2023-12-10 00:00:00'),
(1010, 1016, '12345222', NULL, 'Not submitted ', NULL),
(1011, 1017, '12345111', NULL, 'Not submitted ', NULL),
(1012, 1017, '12345222', NULL, 'Not submitted ', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `student_account`
--

CREATE TABLE `student_account` (
  `stu_aid` varchar(8) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `student_account`
--

INSERT INTO `student_account` (`stu_aid`, `password`) VALUES
('s1234511', '1'),
('s1234522', '1');

-- --------------------------------------------------------

--
-- 資料表結構 `student_grade`
--

CREATE TABLE `student_grade` (
  `id` int(11) NOT NULL,
  `course_id` varchar(255) NOT NULL,
  `student_id` varchar(8) NOT NULL,
  `grade` varchar(10) DEFAULT 'Not filled',
  `Status` varchar(255) NOT NULL DEFAULT 'Not filled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `student_grade`
--

INSERT INTO `student_grade` (`id`, `course_id`, `student_id`, `grade`, `Status`) VALUES
(1000, 'COMPS312F', '12345111', 'B-', 'Finish'),
(1001, 'COMPS350F', '12345111', 'A', 'Finish'),
(1002, 'COMPS320F', '12345111', 'C+', 'Finish'),
(1003, 'COMPS381F', '12345111', 'Not filled', 'Not filled'),
(1004, 'COMPS312F', '12345222', 'Not filled', 'Not filled'),
(1005, 'COMPS350F', '12345222', 'Not filled', 'Not filled');

-- --------------------------------------------------------

--
-- 資料表結構 `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` varchar(8) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `password`, `name`) VALUES
('t1234567', '123456', 'Tong King Hsuan');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`),
  ADD KEY `fk_cs` (`course_id`);

--
-- 資料表索引 `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- 資料表索引 `courseselection`
--
ALTER TABLE `courseselection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `stu_id` (`stu_id`);

--
-- 資料表索引 `it_staff`
--
ALTER TABLE `it_staff`
  ADD PRIMARY KEY (`staffId`);

--
-- 資料表索引 `studend_score`
--
ALTER TABLE `studend_score`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_scs` (`course_id`),
  ADD KEY `fk_scss` (`stu_id`),
  ADD KEY `fk_grade_id` (`grade_id`);

--
-- 資料表索引 `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`),
  ADD KEY `fk_student_stu_aid` (`stu_aid`);

--
-- 資料表索引 `studentassignment`
--
ALTER TABLE `studentassignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkaid` (`assignment_id`),
  ADD KEY `fk_assStu` (`stu_id`);

--
-- 資料表索引 `student_account`
--
ALTER TABLE `student_account`
  ADD PRIMARY KEY (`stu_aid`);

--
-- 資料表索引 `student_grade`
--
ALTER TABLE `student_grade`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1018;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `courseselection`
--
ALTER TABLE `courseselection`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1009;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `studend_score`
--
ALTER TABLE `studend_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1046;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `studentassignment`
--
ALTER TABLE `studentassignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1014;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `student_grade`
--
ALTER TABLE `student_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `fk_cs` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);

--
-- 資料表的限制式 `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);

--
-- 資料表的限制式 `courseselection`
--
ALTER TABLE `courseselection`
  ADD CONSTRAINT `courseselection_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `courseselection_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `courseselection_ibfk_3` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`);

--
-- 資料表的限制式 `studend_score`
--
ALTER TABLE `studend_score`
  ADD CONSTRAINT `fk_grade_id` FOREIGN KEY (`grade_id`) REFERENCES `student_grade` (`id`),
  ADD CONSTRAINT `fk_scs` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `fk_scss` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`);

--
-- 資料表的限制式 `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_student_stu_aid` FOREIGN KEY (`stu_aid`) REFERENCES `student_account` (`stu_aid`);

--
-- 資料表的限制式 `studentassignment`
--
ALTER TABLE `studentassignment`
  ADD CONSTRAINT `fk_assStu` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`),
  ADD CONSTRAINT `fkaid` FOREIGN KEY (`assignment_id`) REFERENCES `assignment` (`assignment_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
