-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2022 at 02:22 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_repository_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_portal`
--

CREATE TABLE `admin_portal` (
  `Admin_Username` varchar(25) NOT NULL,
  `Admin_Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_portal`
--

INSERT INTO `admin_portal` (`Admin_Username`, `Admin_Password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `attendees_detail`
--

CREATE TABLE `attendees_detail` (
  `Attende_ID` int(11) NOT NULL,
  `Event_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Days_Attended` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendees_detail`
--

INSERT INTO `attendees_detail` (`Attende_ID`, `Event_ID`, `User_ID`, `Days_Attended`) VALUES
(1, 56, 5, 5),
(2, 27, 8, 2),
(3, 30, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `competition`
--

CREATE TABLE `competition` (
  `CEvent_ID` int(11) NOT NULL,
  `No_of_participants` int(11) NOT NULL,
  `No_of_evaluators` int(11) NOT NULL,
  `Prize` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `competition`
--

INSERT INTO `competition` (`CEvent_ID`, `No_of_participants`, `No_of_evaluators`, `Prize`) VALUES
(31, 1200, 30, 0);

-- --------------------------------------------------------

--
-- Table structure for table `evaluator`
--

CREATE TABLE `evaluator` (
  `EUser_ID` int(11) NOT NULL,
  `ContactNo` varchar(12) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Organization` varchar(80) NOT NULL,
  `Designation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `evaluator`
--

INSERT INTO `evaluator` (`EUser_ID`, `ContactNo`, `Email`, `Organization`, `Designation`) VALUES
(7, '0331-4452425', 'zubairyousuf00@gmail.com', 'FAST University', 'Professor'),
(8, '0333-5568070', 'faisalkhan23@gmail.com', 'IBA', 'Professor');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `Event_ID` int(11) NOT NULL,
  `Event_Name` varchar(100) NOT NULL,
  `Venue_Name` varchar(100) NOT NULL,
  `Floor_No` int(2) NOT NULL,
  `Block_No` varchar(10) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Postal_code` int(5) DEFAULT NULL,
  `Event_StartDate` date NOT NULL DEFAULT current_timestamp(),
  `Event_EndDate` date NOT NULL DEFAULT current_timestamp(),
  `Event_Description` varchar(500) NOT NULL,
  `Seminar` varchar(1) NOT NULL,
  `Guest_Speaker_Session` varchar(1) NOT NULL,
  `Workshop` varchar(1) NOT NULL,
  `Competition` varchar(1) NOT NULL,
  `Image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`Event_ID`, `Event_Name`, `Venue_Name`, `Floor_No`, `Block_No`, `City`, `Postal_code`, `Event_StartDate`, `Event_EndDate`, `Event_Description`, `Seminar`, `Guest_Speaker_Session`, `Workshop`, `Competition`, `Image`) VALUES
(27, 'Webinar on Entrepreneurship', 'Zoom meeting', 0, '0', 'Karachi', 0, '2022-11-13', '2022-11-16', 'An educational and interactive session with Zara Shah Jahan, the owner of ZSJ Clothing Store.', 'Y', 'N', 'N', 'N', 'card4.jpg'),
(30, 'Virtual Reality Workshop', 'Programming Lab 2', 2, 'D', 'Karachi', 74600, '2022-11-09', '2022-11-12', 'Weekly introductory workshops to kickstart your knowledge about VR/AR development with Unity. ', 'N', 'N', 'Y', 'N', 'card3.jpg'),
(31, 'JTech 2021', 'Event Hall', 3, 'A', 'Karachi', 74600, '2022-11-01', '2022-11-05', 'JTECH is a technology extravaganza where students of JUW exhibit their final year projects.', 'N', 'N', 'N', 'Y', 'card2.jpg'),
(32, 'Women in Computing', 'Zoom meeting', 0, '0', 'Karachi', 0, '2022-11-19', '2022-11-19', 'An event joined by leading professionals from esteemed organizations and institutions.', 'Y', 'N', 'N', 'N', 'card1.jpg'),
(56, 'Women In Cyber Security (WiCyS) Pakistan Affiliate', 'Programming Lab 2', 2, 'D', 'Karachi', 74600, '2022-09-14', '2022-09-16', 'First Successful session of WiCyS on Cybersecurity was conducted today at Jinnah University for Women by Department of Computer Science and Software Engineering today after signing ceremony. WiCyS is a global community of women, allies and advocates dedicated to bringing talented women together to celebrate and foster their passion and drive for cybersecurity.', 'Y', 'N', 'N', 'N', 'card5.jpg'),
(57, 'abc', 'abc', 2, 'B', 'Karachi', 11103, '2022-11-22', '2022-11-25', 'test', 'Y', 'N', 'N', 'N', 'card1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `FUser_ID` int(11) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`FUser_ID`, `Department`, `Role`) VALUES
(1, 'CS', 'Lecturer'),
(2, 'CS', 'Assistant Professor');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_form`
--

CREATE TABLE `feedback_form` (
  `feed_id` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_form`
--

INSERT INTO `feedback_form` (`feed_id`, `email`, `message`) VALUES
(1, 'fizahashfaq12@gmail.', 'Very informative seminar on Entrepreneurship, would love to attend more session like this.'),
(2, 'mariumkhan15@gmail.c', 'JTech 2021 was great! Nice and innovative projects displayed.'),
(3, 'talhatahir75@gmail.c', 'Great session!');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `GUser_ID` int(11) NOT NULL,
  `ContactNo` varchar(12) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Type` varchar(20) NOT NULL,
  `Organization` varchar(80) NOT NULL,
  `Designation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`GUser_ID`, `ContactNo`, `Email`, `Type`, `Organization`, `Designation`) VALUES
(5, '0330-3422165', 'mariumfatima@gmail.com', 'Attendee', 'IBA', 'Associate Professor'),
(6, '0332-2273500', 'ayeshakhan12@gmail.com', 'Speaker', 'Jinnah University For Women', 'Lecturer');

-- --------------------------------------------------------

--
-- Table structure for table `guest_speaker_session`
--

CREATE TABLE `guest_speaker_session` (
  `GEvent_ID` int(11) NOT NULL,
  `Mode` varchar(10) NOT NULL,
  `Nature` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `organizer_detail`
--

CREATE TABLE `organizer_detail` (
  `Organizer_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Event_ID` int(11) NOT NULL,
  `Role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organizer_detail`
--

INSERT INTO `organizer_detail` (`Organizer_ID`, `User_ID`, `Event_ID`, `Role`) VALUES
(1, 6, 31, 'volunteer'),
(2, 2, 30, 'photographer'),
(3, 5, 27, 'volunteer');

-- --------------------------------------------------------

--
-- Table structure for table `post_event_docs`
--

CREATE TABLE `post_event_docs` (
  `PostE_ID` int(11) NOT NULL,
  `No_of_attendees` int(11) NOT NULL,
  `Total_Expenses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pre_event_docs`
--

CREATE TABLE `pre_event_docs` (
  `PreE_ID` int(11) NOT NULL,
  `Event_StartDate` date NOT NULL,
  `Event_EndDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seminar`
--

CREATE TABLE `seminar` (
  `SEvent_ID` int(11) NOT NULL,
  `Mode` varchar(10) NOT NULL,
  `Nature` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seminar`
--

INSERT INTO `seminar` (`SEvent_ID`, `Mode`, `Nature`) VALUES
(27, 'Online', 'Entrepreneurship'),
(32, 'Online', 'Computing'),
(56, 'Offline', 'Cyber Security'),
(57, 'Online', 'Programming');

-- --------------------------------------------------------

--
-- Table structure for table `sponsor`
--

CREATE TABLE `sponsor` (
  `Sponsor_ID` int(11) NOT NULL,
  `Sponsor_Name` varchar(50) NOT NULL,
  `Sponsor_Organization` varchar(80) NOT NULL,
  `Sponsor_ContactNo` varchar(12) NOT NULL,
  `Sponsor_Email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sponsor`
--

INSERT INTO `sponsor` (`Sponsor_ID`, `Sponsor_Name`, `Sponsor_Organization`, `Sponsor_ContactNo`, `Sponsor_Email`) VALUES
(2, 'Contour Software', 'Constellation Software Inc (CSI)', '0330-1234567', 'info@contour-software.com'),
(3, '10Pearls', '10Pearls University', '0333-1244104', 'info@10pearls.com');

-- --------------------------------------------------------

--
-- Table structure for table `sponsor_detail`
--

CREATE TABLE `sponsor_detail` (
  `Sponsor_Detail_ID` int(11) NOT NULL,
  `Event_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Sponsor_ID` int(11) NOT NULL,
  `Contribution` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sponsor_detail`
--

INSERT INTO `sponsor_detail` (`Sponsor_Detail_ID`, `Event_ID`, `User_ID`, `Sponsor_ID`, `Contribution`) VALUES
(6, 31, 5, 2, 'Silver Package'),
(7, 30, 5, 3, 'Gold Package'),
(9, 32, 6, 2, 'Gold Package');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `SUser_ID` int(11) NOT NULL,
  `Batch` varchar(20) NOT NULL,
  `Department` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`SUser_ID`, `Batch`, `Department`) VALUES
(3, '2021', 'CS'),
(4, '2021', 'CS'),
(9, '2020', 'SE');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` int(11) NOT NULL,
  `User_Name` varchar(50) NOT NULL,
  `User_Type` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `User_Name`, `User_Type`) VALUES
(1, 'Sana Khan', 'F'),
(2, 'Bilal Yusuf', 'F'),
(3, 'S. Urooba Amjad', 'S'),
(4, 'Ashfia Binte Waqar', 'S'),
(5, 'Mariam Fatima', 'G'),
(6, 'Ayesha Khan', 'G'),
(7, 'Zubair Yousuf', 'E'),
(8, 'Faisal Khan', 'E'),
(9, 'Safah Ashfaq', 'S');

-- --------------------------------------------------------

--
-- Table structure for table `workshop`
--

CREATE TABLE `workshop` (
  `WEvent_ID` int(11) NOT NULL,
  `Mode` varchar(10) NOT NULL,
  `Nature` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workshop`
--

INSERT INTO `workshop` (`WEvent_ID`, `Mode`, `Nature`) VALUES
(30, 'Offline', 'Programming');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendees_detail`
--
ALTER TABLE `attendees_detail`
  ADD PRIMARY KEY (`Attende_ID`),
  ADD KEY `Event_ID` (`Event_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `competition`
--
ALTER TABLE `competition`
  ADD KEY `Referential1` (`CEvent_ID`);

--
-- Indexes for table `evaluator`
--
ALTER TABLE `evaluator`
  ADD KEY `EUser_ID` (`EUser_ID`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`Event_ID`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD KEY `FUser_ID` (`FUser_ID`);

--
-- Indexes for table `feedback_form`
--
ALTER TABLE `feedback_form`
  ADD PRIMARY KEY (`feed_id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD KEY `guest_ibfk_1` (`GUser_ID`);

--
-- Indexes for table `guest_speaker_session`
--
ALTER TABLE `guest_speaker_session`
  ADD KEY `Referential3` (`GEvent_ID`);

--
-- Indexes for table `organizer_detail`
--
ALTER TABLE `organizer_detail`
  ADD PRIMARY KEY (`Organizer_ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Event_ID` (`Event_ID`);

--
-- Indexes for table `post_event_docs`
--
ALTER TABLE `post_event_docs`
  ADD PRIMARY KEY (`PostE_ID`);

--
-- Indexes for table `pre_event_docs`
--
ALTER TABLE `pre_event_docs`
  ADD PRIMARY KEY (`PreE_ID`);

--
-- Indexes for table `seminar`
--
ALTER TABLE `seminar`
  ADD KEY `Referential` (`SEvent_ID`);

--
-- Indexes for table `sponsor`
--
ALTER TABLE `sponsor`
  ADD PRIMARY KEY (`Sponsor_ID`);

--
-- Indexes for table `sponsor_detail`
--
ALTER TABLE `sponsor_detail`
  ADD PRIMARY KEY (`Sponsor_Detail_ID`),
  ADD KEY `sponsor_detail_ibfk_1` (`Event_ID`),
  ADD KEY `sponsor_detail_ibfk_2` (`Sponsor_ID`),
  ADD KEY `sponsor_detail_ibfk_3` (`User_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD KEY `student_ibfk_1` (`SUser_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indexes for table `workshop`
--
ALTER TABLE `workshop`
  ADD KEY `Referential2` (`WEvent_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendees_detail`
--
ALTER TABLE `attendees_detail`
  MODIFY `Attende_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `Event_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `feedback_form`
--
ALTER TABLE `feedback_form`
  MODIFY `feed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `organizer_detail`
--
ALTER TABLE `organizer_detail`
  MODIFY `Organizer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `post_event_docs`
--
ALTER TABLE `post_event_docs`
  MODIFY `PostE_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pre_event_docs`
--
ALTER TABLE `pre_event_docs`
  MODIFY `PreE_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sponsor`
--
ALTER TABLE `sponsor`
  MODIFY `Sponsor_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sponsor_detail`
--
ALTER TABLE `sponsor_detail`
  MODIFY `Sponsor_Detail_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendees_detail`
--
ALTER TABLE `attendees_detail`
  ADD CONSTRAINT `attendees_detail_ibfk_1` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendees_detail_ibfk_2` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `competition`
--
ALTER TABLE `competition`
  ADD CONSTRAINT `Referential1` FOREIGN KEY (`CEvent_ID`) REFERENCES `event` (`Event_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `evaluator`
--
ALTER TABLE `evaluator`
  ADD CONSTRAINT `evaluator_ibfk_1` FOREIGN KEY (`EUser_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`FUser_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `guest`
--
ALTER TABLE `guest`
  ADD CONSTRAINT `guest_ibfk_1` FOREIGN KEY (`GUser_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `guest_speaker_session`
--
ALTER TABLE `guest_speaker_session`
  ADD CONSTRAINT `Referential3` FOREIGN KEY (`GEvent_ID`) REFERENCES `event` (`Event_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `organizer_detail`
--
ALTER TABLE `organizer_detail`
  ADD CONSTRAINT `organizer_detail_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `organizer_detail_ibfk_2` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seminar`
--
ALTER TABLE `seminar`
  ADD CONSTRAINT `Referential` FOREIGN KEY (`SEvent_ID`) REFERENCES `event` (`Event_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sponsor_detail`
--
ALTER TABLE `sponsor_detail`
  ADD CONSTRAINT `sponsor_detail_ibfk_1` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`),
  ADD CONSTRAINT `sponsor_detail_ibfk_2` FOREIGN KEY (`Sponsor_ID`) REFERENCES `sponsor` (`Sponsor_ID`),
  ADD CONSTRAINT `sponsor_detail_ibfk_3` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`SUser_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `workshop`
--
ALTER TABLE `workshop`
  ADD CONSTRAINT `Referential2` FOREIGN KEY (`WEvent_ID`) REFERENCES `event` (`Event_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
