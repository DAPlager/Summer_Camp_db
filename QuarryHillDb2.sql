"QuarryHillDb1.sql written by D.A. Plager, CS385, WSU-R, Fall 2019"

CREATE DATABASE IF NOT EXISTS QuarryHillDb1;
USE QuarryHillDb1;


DROP TABLE IF EXISTS Camps;
CREATE TABLE Camps
(campID varchar(8) PRIMARY KEY,
 campTitle varchar(35),
 campDescrip varchar(1000),
 camperAgeGrade varchar(35),
 memberFee numeric(4,0) CHECK( memberFee >= 0 ),
 nonmemberFee numeric(4,0) CHECK( nonmemberFee >= 0 ),
 maxEnroll numeric(3,0)
);
INSERT INTO Camps VALUES('camp1','Hello, Little Blue','Description for Camp1 (HLB)','3-4 y/o with adult', 12, 15, 25);
INSERT INTO Camps VALUES('camp2','Backyard Camper','Description for Camp2 (BC)','3-4 y/o with adult', 12, 15, 25);
INSERT INTO Camps VALUES('camp3','Mighty Spidey','Description for Camp3 (MS)','3-4 y/o with adult', 12, 15, 25);
INSERT INTO Camps VALUES('camp4','Busy Buzzy Bee','Description for Camp4 (BBB)','3-4 y/o with adult', 12, 15, 25);
INSERT INTO Camps VALUES('camp5','Toadstool Town','Description for Camp5 (TT)','3-4 y/o with adult', 12, 15, 25);
INSERT INTO Camps VALUES('camp6','Gimme Shell-ter','Description for Camp6 (GS)','3-4 y/o with adult', 12, 15, 25);
INSERT INTO Camps VALUES('camp7','The Bugliest Bugs','Description for Camp7 (TBB)','3-4 y/o with adult', 12, 15, 25);
INSERT INTO Camps VALUES('camp8','Adventure Biker','Description for Camp8 (AB)','Entering grade 7+', 158, 168, 20);
INSERT INTO Camps VALUES('camp9','Wild Caving','Description for Camp9 (WC)','Entering grade 7+', 48, 58, 10);
INSERT INTO Camps VALUES('camp10','Kayak Paddle Trip','Description for Camp10 (KPT)','Entering grade 8+', 48, 58, 10);
INSERT INTO Camps VALUES('camp11','Amazing Race','Description for Camp11 (AR)','Entering grade 7+', 88, 98, 10);
INSERT INTO Camps VALUES('camp12','Crazy Crayfish','Description for Camp12 (CF)','Entering grade 7+', 88, 98, 20);
INSERT INTO Camps VALUES('camp13','Woodworking for Wildlife','Description for Camp13 (WW)','Entering grade 7+', 108, 118, 15);
INSERT INTO Camps VALUES('camp14','Falconry and Raptors','Description for Camp14 (FR)','Entering grade 7+', 98, 108, 20);
INSERT INTO Camps VALUES('camp15','Teen Nature Photography','Description for Camp15 (TNP)','Entering grade 7+', 98, 108, 10);
INSERT INTO Camps VALUES('camp16','Animal Discoveries','Description for Camp16 (AD)','4 y/o', 78, 88, 20);
INSERT INTO Camps VALUES('camp17','Senses and Defenses','Description for Camp17 (SD)','Entering grades 1 & 2', 78, 88, 20);
INSERT INTO Camps VALUES('camp18','Pollinator Power','Description for Camp18 (PW)','Entering grades 1 & 2', 78, 88, 20);
INSERT INTO Camps VALUES('camp19','Catching Critters','Description for Camp19 (CC)','Entering grades 3 & 4', 78, 88, 20);
INSERT INTO Camps VALUES('camp20','Archaeology Adventures','Description for Camp20 (AA)','Entering grades 3 & 4', 78, 88, 20);
INSERT INTO Camps VALUES('camp21','Hangin with the Birds','Description for Camp21 (HB)','Entering grades 5 & 6', 78, 88, 20);
INSERT INTO Camps VALUES('camp22','Nature Art','Description for Camp22 (NA)','Entering grades 5 & 6', 78, 88, 20);
INSERT INTO Camps VALUES('camp23','Nature Biker','Description for Camp23 (NB)','Entering grades 5 & 6', 98, 108, 10);
INSERT INTO Camps VALUES('camp24','Nature Photography','Description for Camp24 (NP)','Entering grades 5 & 6', 98, 108, 10);


DROP TABLE IF EXISTS CampSessions;
CREATE TABLE CampSessions
(campSessID varchar(15) PRIMARY KEY,
 campID varchar(8),
 sessionID varchar(6),
 year numeric(4,0) CHECK( year > 2000 ),
 dateRange varchar(16),
 rainDate varchar(16),
 sessionTime varchar(15),
 FOREIGN KEY (campID) REFERENCES Camps (campID)
);
INSERT INTO CampSessions VALUES('1_HLB1_2019','camp1','HLB1','2019','June 11','following Thursday', '9:30-11:00am');
INSERT INTO CampSessions VALUES('2_BC1_2019','camp2','BC1','2019','June 18','following Thursday', '9:30-11:00am');
INSERT INTO CampSessions VALUES('3_MS1_2019','camp3','MS1','2019','June 25','following Thursday', '9:30-11:00am');
INSERT INTO CampSessions VALUES('4_BBB1_2019','camp4','BBB1','2019','July 9','following Thursday', '9:30-11:00am');
INSERT INTO CampSessions VALUES('5_TT1_2019','camp5','TT1','2019','July 23','following Thursday', '9:30-11:00am');
INSERT INTO CampSessions VALUES('6_GS1_2019','camp6','GS1','2019','August 6','following Thursday', '9:30-11:00am');
INSERT INTO CampSessions VALUES('7_TBB1_2019','camp7','TBB1','2019','August 13','following Thursday', '9:30-11:00am');
INSERT INTO CampSessions VALUES('8_AB1_2019','camp8','AB1','2019','June 3-7','none', '9:00am-3:00pm');
INSERT INTO CampSessions VALUES('8_AB3_2019','camp8','AB3','2019','June 10-14','none', '9:00am-3:00pm');
INSERT INTO CampSessions VALUES('8_AB7_2019','camp8','AB7','2019','June 24-28','none', '9:00am-3:00pm');
INSERT INTO CampSessions VALUES('8_AB11_2019','camp8','AB11','2019','July 15-19','none', '9:00am-3:00pm');
INSERT INTO CampSessions VALUES('8_AB15_2019','camp8','AB15','2019','July 29-Aug 2','none', '9:00am-3:00pm');
INSERT INTO CampSessions VALUES('8_AB19_2019','camp8','AB19','2019','Aug 12-16','none', '9:00am-3:00pm');
INSERT INTO CampSessions VALUES('9_WC1_2019','camp9','WC1','2019','July 1','none', '9:00am-1:30pm');
INSERT INTO CampSessions VALUES('10_KPT1_2019','camp10','KPT1','2019','July 2','none', '9:00am-3:00pm');
INSERT INTO CampSessions VALUES('11_AR5_2019','camp11','AR5','2019','June 17-21','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('11_AR9_2019','camp11','AR9','2019','July 8-12','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('11_AR10_2019','camp11','AR10','2019','July 8-12','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('11_AR13_2019','camp11','AR13','2019','July 22-26','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('11_AR18_2019','camp11','AR18','2019','Aug 5-9','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('12_CF6_2019','camp12','CF6','2019','June 17-21','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('12_CF14_2019','camp12','CF14','2019','July 22-26','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('13_WW4_2019','camp13','WW4','2019','June 10-14','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('14_FR2_2019','camp14','FR2','2019','June 3-7','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('14_FR3_2019','camp14','FR3','2019','June 10-14','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('14_FR15_2019','camp14','FR15','2019','July 19-Aug 2','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('15_TNP5_2019','camp15','TNP5','2019','June 17-21','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('15_TNP8_2019','camp15','TNP8','2019','June 24-28','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('15_TNP10_2019','camp15','TNP10','2019','July 8-12','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('15_TNP11_2019','camp15','TNP11','2019','July 15-19','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('15_TNP13_2019','camp15','TNP13','2019','July 22-26','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('15_TNP16_2019','camp15','TNP16','2019','July 29-Aug 2','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('16_AD5_2019','camp16','AD5','2019','June 17-21','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('16_AD7_2019','camp16','AD7','2019','June 24-28','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('16_AD8_2019','camp16','AD8','2019','June 24-28','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('16_AD9_2019','camp16','AD9','2019','July 8-12','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('16_AD10_2019','camp16','AD10','2019','July 8-12','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('16_AD11_2019','camp16','AD11','2019','July 15-19','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('16_AD12_2019','camp16','AD12','2019','July 15-19','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('16_AD13_2019','camp16','AD13','2019','July 22-26','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('16_AD14_2019','camp16','AD14','2019','July 22-26','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('16_AD15_2019','camp16','AD15','2019','July 29-Aug 2','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('17_SD1_2019','camp17','SD1','2019','June 3-7','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('17_SD2_2019','camp17','SD2','2019','June 3-7','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('17_SD3_2019','camp17','SD3','2019','June 10-14','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('17_SD4_2019','camp17','SD4','2019','June 10-14','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('17_SD5_2019','camp17','SD5','2019','June 17-21','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('17_SD6_2019','camp17','SD6','2019','June 17-21','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('17_SD7_2019','camp17','SD7','2019','June 24-28','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('17_SD8_2019','camp17','SD8','2019','June 24-28','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('17_SD9_2019','camp17','SD9','2019','July 8-12','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('17_SD10_2019','camp17','SD10','2019','July 8-12','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('17_SD11_2019','camp17','SD11','2019','July 15-19','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('17_SD12_2019','camp17','SD12','2019','July 15-19','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('18_PW13_2019','camp18','PW13','2019','July 22-26','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('18_PW14_2019','camp18','PW14','2019','July 22-26','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('18_PW15_2019','camp18','PW15','2019','July 29-Aug 2','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('18_PW16_2019','camp18','PW16','2019','July 29-Aug 2','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('18_PW17_2019','camp18','PW17','2019','Aug 5-9','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('18_PW18_2019','camp18','PW18','2019','Aug 5-9','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('18_PW19_2019','camp18','PW19','2019','Aug 12-16','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('19_CC1_2019','camp19','CC1','2019','June 3-7','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('19_CC2_2019','camp19','CC2','2019','June 3-7','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('19_CC3_2019','camp19','CC3','2019','June 10-14','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('19_CC4_2019','camp19','CC4','2019','June 10-14','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('19_CC5_2019','camp19','CC5','2019','June 17-21','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('19_CC6_2019','camp19','CC6','2019','June 17-21','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('19_CC7_2019','camp19','CC7','2019','June 24-28','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('19_CC8_2019','camp19','CC8','2019','June 24-28','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('19_CC9_2019','camp19','CC9','2019','July 8-12','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('19_CC10_2019','camp19','CC10','2019','July 8-12','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('19_CC11_2019','camp19','CC11','2019','July 15-19','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('19_CC12_2019','camp19','CC12','2019','July 15-19','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('19_CC13_2019','camp19','CC13','2019','July 22-26','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('19_CC14_2019','camp19','CC14','2019','July 22-26','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('19_CC15_2019','camp19','CC15','2019','July 19-Aug 2','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('19_CC16_2019','camp19','CC16','2019','July 19-Aug 2','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('19_CC17_2019','camp19','CC17','2019','Aug 5-9','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('19_CC18_2019','camp19','CC18','2019','Aug 5-9','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('19_CC19_2019','camp19','CC19','2019','Aug 12-16','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('20_AA3_2019','camp20','AA3','2019','June 10-14','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('20_AA4_2019','camp20','AA4','2019','June 10-14','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('20_AA7_2019','camp20','AA7','2019','June 24-28','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('20_AA8_2019','camp20','AA8','2019','June 24-28','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('20_AA15_2019','camp20','AA15','2019','July 29-Aug 2','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('20_AA16_2019','camp20','AA16','2019','July 29-Aug 2','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('20_AA19_2019','camp20','AA19','2019','Aug 12-16','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('21_HB1_2019','camp21','HB1','2019','June 3-7','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('21_HB2_2019','camp21','HB2','2019','June 3-7','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('21_HB3_2019','camp21','HB3','2019','June 10-14','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('21_HB4_2019','camp21','HB4','2019','June 10-14','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('21_HB5_2019','camp21','HB5','2019','June 17-21','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('21_HB6_2019','camp21','HB6','2019','June 17-21','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('21_HB7_2019','camp21','HB7','2019','June 24-28','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('21_HB8_2019','camp21','HB8','2019','June 24-28','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('21_HB9_2019','camp21','HB9','2019','July 8-12','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('21_HB10_2019','camp21','HB10','2019','July 8-12','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('21_HB11_2019','camp21','HB11','2019','July 15-19','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('21_HB12_2019','camp21','HB12','2019','July 15-19','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('21_HB13_2019','camp21','HB13','2019','July 22-26','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('21_HB14_2019','camp21','HB14','2019','July 22-26','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('21_HB15_2019','camp21','HB15','2019','July 29-Aug 2','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('21_HB16_2019','camp21','HB16','2019','July 29-Aug 2','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('21_HB17_2019','camp21','HB17','2019','Aug 5-9','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('21_HB18_2019','camp21','HB18','2019','Aug 5-9','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('21_HB19_2019','camp21','HB19','2019','Aug 12-16','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('22_NA5_2019','camp22','NA5','2019','June 17-21','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('22_NA10_2019','camp22','NA10','2019','July 8-12','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('22_NA11_2019','camp22','NA11','2019','July 15-19','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('23_NB1_2019','camp23','NB1','2019','June 3-7','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('23_NB5_2019','camp23','NB5','2019','June 17-21','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('23_NB6_2019','camp23','NB6','2019','June 17-21','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('23_NB8_2019','camp23','NB8','2019','June 24-28','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('23_NB9_2019','camp23','NB9','2019','July 8-12','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('23_NB10_2019','camp23','NB10','2019','July 8-12','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('23_NB13_2019','camp23','NB13','2019','July 22-26','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('23_NB14_2019','camp23','NB14','2019','July 22-26','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('23_NB17_2019','camp23','NB17','2019','Aug 5-9','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('24_NP3_2019','camp24','NP3','2019','June 10-14','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('24_NP4_2019','camp24','NP4','2019','June 10-14','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('24_NP6_2019','camp24','NP6','2019','June 17-21','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('24_NP7_2019','camp24','NP7','2019','June 24-28','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('24_NP9_2019','camp24','NP9','2019','July 8-12','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('24_NP12_2019','camp24','NP12','2019','July 15-19','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('24_NP14_2019','camp24','NP14','2019','July 22-26','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('24_NP15_2019','camp24','NP15','2019','July 29-Aug 2','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('24_NP17_2019','camp24','NP17','2019','Aug 5-9','none', '9:00am-11:30am');
INSERT INTO CampSessions VALUES('24_NP18_2019','camp24','NP18','2019','Aug 5-9','none', '12:30pm-3:00pm');
INSERT INTO CampSessions VALUES('24_NP19_2019','camp24','NP19','2019','Aug 12-16','none', '9:00am-11:30am');


DROP TABLE IF EXISTS Requirements;
CREATE TABLE Requirements
(reqmntID varchar(10) PRIMARY KEY,
 reqdItem varchar(45)
);
INSERT INTO Requirements VALUES('reqmnt1','adult companion');
INSERT INTO Requirements VALUES('reqmnt2','bike - 24in, 3-speed');
INSERT INTO Requirements VALUES('reqmnt3','bike');
INSERT INTO Requirements VALUES('reqmnt4','biking helmet');
INSERT INTO Requirements VALUES('reqmnt5','sack lunch');
INSERT INTO Requirements VALUES('reqmnt6','water bottle');
INSERT INTO Requirements VALUES('reqmnt7','physical capacity - 1mi/6min, 10+mi/day');
INSERT INTO Requirements VALUES('reqmnt8','physical capacity - 1mi/8min, 10mi/day');


DROP TABLE IF EXISTS CampReqs;
CREATE TABLE CampReqs
(campID varchar(8) NOT NULL,
 reqmntID varchar(10) NOT NULL,
 PRIMARY KEY (campID, reqmntID),
 FOREIGN KEY (campID) REFERENCES Camps (campID),
 FOREIGN KEY (reqmntID) REFERENCES Requirements (reqmntID)
);
INSERT INTO CampReqs VALUES('camp1','reqmnt1');
INSERT INTO CampReqs VALUES('camp2','reqmnt1');
INSERT INTO CampReqs VALUES('camp3','reqmnt1');
INSERT INTO CampReqs VALUES('camp4','reqmnt1');
INSERT INTO CampReqs VALUES('camp5','reqmnt1');
INSERT INTO CampReqs VALUES('camp6','reqmnt1');
INSERT INTO CampReqs VALUES('camp7','reqmnt1');
INSERT INTO CampReqs VALUES('camp8','reqmnt2');
INSERT INTO CampReqs VALUES('camp8','reqmnt4');
INSERT INTO CampReqs VALUES('camp8','reqmnt5');
INSERT INTO CampReqs VALUES('camp8','reqmnt6');
INSERT INTO CampReqs VALUES('camp8','reqmnt7');
INSERT INTO CampReqs VALUES('camp10','reqmnt5');
INSERT INTO CampReqs VALUES('camp10','reqmnt6');
INSERT INTO CampReqs VALUES('camp23','reqmnt3');
INSERT INTO CampReqs VALUES('camp23','reqmnt4');
INSERT INTO CampReqs VALUES('camp23','reqmnt6');
INSERT INTO CampReqs VALUES('camp23','reqmnt8');


DROP TABLE IF EXISTS Instructors;
CREATE TABLE  Instructors
(instrID varchar(10) PRIMARY KEY,
 firstName varchar(15) NOT NULL,
 lastName varchar(20) NOT NULL,
 email varchar(50),
 phone varchar(15)
);
INSERT INTO Instructors VALUES('instr1','Ann','Zane','AZane@QH.org', '507-285-1111');
INSERT INTO Instructors VALUES('instr2','Bobby','Yale','BYale@QH.org', '507-285-2222');
INSERT INTO Instructors VALUES('instr3','Cam','Xavier','CXavier@QH.org', '507-285-3333');
INSERT INTO Instructors VALUES('instr4','Doug','Walker','DWalker@QH.org', '507-285-4444');
INSERT INTO Instructors VALUES('instr5','Eva','Vonn','EVonn@QH.org', '507-285-5555');
INSERT INTO Instructors VALUES('instr6','Fred','Ulman','FUlman@QH.org', '507-285-6666');
INSERT INTO Instructors VALUES('instr7','Gary','Tate','BYale@QH.org', '507-285-7777');
INSERT INTO Instructors VALUES('instr8','Heather','Small','HSmall@QH.org', '507-285-8888');
INSERT INTO Instructors VALUES('instr9','Isabelle','Reed','IReed@QH.org', '507-285-9999');
INSERT INTO Instructors VALUES('instr10','John','Quant','JQuant@QH.org', '507-285-0000');
INSERT INTO Instructors VALUES('instr11','Kim','Paulson','KPaulson@QH.org', '507-289-0101');
INSERT INTO Instructors VALUES('instr12','Karl','Paulson','KPaulson@QH.org', '507-289-0202');
INSERT INTO Instructors VALUES('instr13','Larry','Olsen','LOlsen@QH.org', '507-289-0303');
INSERT INTO Instructors VALUES('instr14','Mark','Nash','MNash@QH.org', '507-289-0404');
INSERT INTO Instructors VALUES('instr15','Nancy','Markle','NMarkle@QH.org', '507-289-0505');
INSERT INTO Instructors VALUES('instr16','Oliver','Larsen','OLarsen@QH.org', '507-289-0606');
INSERT INTO Instructors VALUES('instr17','Paul','Kalb','PKalb@QH.org', '507-289-0707');
INSERT INTO Instructors VALUES('instr18','Quinton','Jones','QJones@QH.org', '507-289-0808');
INSERT INTO Instructors VALUES('instr19','Renee','Iverson','RIverson@QH.org', '507-289-0909');
INSERT INTO Instructors VALUES('instr20','Samantha','Hill','SHill@QH.org', '507-289-1010');
INSERT INTO Instructors VALUES('instr21','Tammy','Grant','TGrant@QH.org', '507-289-2020');
INSERT INTO Instructors VALUES('instr22','Uma','Francis','UFrancis@QH.org', '507-289-3030');
INSERT INTO Instructors VALUES('instr23','Vince','Evans','VEvans@QH.org', '507-289-4040');
INSERT INTO Instructors VALUES('instr24','Will','Donovan','WDonovan@QH.org', '507-289-5050');
INSERT INTO Instructors VALUES('instr25','Xavier','Collins','XCollins@QH.org', '507-289-6060');
INSERT INTO Instructors VALUES('instr26','Yolanda','Barker','YBarker@QH.org', '507-289-7070');
INSERT INTO Instructors VALUES('instr27','Zach','Adams','ZAdams@QH.org', '507-289-8080');
INSERT INTO Instructors VALUES('instr28','Ann','Barker','ABarker@QH.org', '507-289-9090');
INSERT INTO Instructors VALUES('instr29','Brian','Cruz','BCruz@QH.org', '507-289-1234');
INSERT INTO Instructors VALUES('instr30','Carl','Dove','CDove@QH.org', '507-289-2345');
INSERT INTO Instructors VALUES('instr31','Doug','Eller','DEller@QH.org', '507-289-3456');
INSERT INTO Instructors VALUES('instr32','Eric','Field','EField@QH.org', '507-289-4567');
INSERT INTO Instructors VALUES('instr33','Francine','Gall','FGall@QH.org', '507-289-5678');
INSERT INTO Instructors VALUES('instr34','Gail','Hail','GHail@QH.org', '507-289-6789');


DROP TABLE IF EXISTS Instruction;
CREATE TABLE Instruction
(campSessID varchar(15) NOT NULL,
 instrID varchar(10) NOT NULL,
 PRIMARY KEY (campSessID, instrID)
 FOREIGN KEY (campSessID) REFERENCES CampSessions (campSessID),
 FOREIGN KEY (instrID) REFERENCES Instructors (instrID)
);
INSERT INTO Instruction VALUES('1_HLB1_2019','instr1');
INSERT INTO Instruction VALUES('1_HLB1_2019','instr4');
INSERT INTO Instruction VALUES('2_BC1_2019','instr2');
INSERT INTO Instruction VALUES('2_BC1_2019','instr5');
INSERT INTO Instruction VALUES('3_MS1_2019','instr3');
INSERT INTO Instruction VALUES('3_MS1_2019','instr6');
INSERT INTO Instruction VALUES('4_BBB1_2019','instr1');
INSERT INTO Instruction VALUES('4_BBB1_2019','instr6');
INSERT INTO Instruction VALUES('5_TT1_2019','instr2');
INSERT INTO Instruction VALUES('5_TT1_2019','instr4');
INSERT INTO Instruction VALUES('6_GS1_2019','instr3');
INSERT INTO Instruction VALUES('6_GS1_2019','instr5');
INSERT INTO Instruction VALUES('7_TBB1_2019','instr1');
INSERT INTO Instruction VALUES('7_TBB1_2019','instr5');
INSERT INTO Instruction VALUES('8_AB1_2019','instr7');
INSERT INTO Instruction VALUES('8_AB1_2019','instr8');
INSERT INTO Instruction VALUES('8_AB3_2019','instr9');
INSERT INTO Instruction VALUES('8_AB3_2019','instr10');
INSERT INTO Instruction VALUES('8_AB7_2019','instr7');
INSERT INTO Instruction VALUES('8_AB7_2019','instr8');
INSERT INTO Instruction VALUES('8_AB11_2019','instr9');
INSERT INTO Instruction VALUES('8_AB11_2019','instr10');
INSERT INTO Instruction VALUES('8_AB15_2019','instr7');
INSERT INTO Instruction VALUES('8_AB15_2019','instr8');
INSERT INTO Instruction VALUES('8_AB19_2019','instr9');
INSERT INTO Instruction VALUES('8_AB19_2019','instr10');
INSERT INTO Instruction VALUES('9_WC1_2019','instr11');
INSERT INTO Instruction VALUES('10_KPT1_2019','instr11');
INSERT INTO Instruction VALUES('9_WC1_2019','instr12');
INSERT INTO Instruction VALUES('10_KPT1_2019','instr12');
INSERT INTO Instruction VALUES('11_AR5_2019','instr13');
INSERT INTO Instruction VALUES('11_AR5_2019','instr14');
INSERT INTO Instruction VALUES('12_CF6_2019','instr15');
INSERT INTO Instruction VALUES('12_CF6_2019','instr16');
INSERT INTO Instruction VALUES('13_WW4_2019','instr13');
INSERT INTO Instruction VALUES('13_WW4_2019','instr14');
INSERT INTO Instruction VALUES('14_FR2_2019','instr15');
INSERT INTO Instruction VALUES('14_FR2_2019','instr16');
INSERT INTO Instruction VALUES('15_TNP5_2019','instr17');
INSERT INTO Instruction VALUES('15_TNP5_2019','instr18');
INSERT INTO Instruction VALUES('15_TNP8_2019','instr17');
INSERT INTO Instruction VALUES('15_TNP8_2019','instr18');
INSERT INTO Instruction VALUES('16_AD5_2019','instr19');
INSERT INTO Instruction VALUES('16_AD5_2019','instr20');
INSERT INTO Instruction VALUES('16_AD7_2019','instr19');
INSERT INTO Instruction VALUES('16_AD7_2019','instr20');
INSERT INTO Instruction VALUES('16_AD8_2019','instr19');
INSERT INTO Instruction VALUES('16_AD8_2019','instr20');
INSERT INTO Instruction VALUES('17_SD1_2019','instr21');
INSERT INTO Instruction VALUES('17_SD1_2019','instr22');
INSERT INTO Instruction VALUES('17_SD2_2019','instr21');
INSERT INTO Instruction VALUES('17_SD2_2019','instr22');
INSERT INTO Instruction VALUES('17_SD3_2019','instr21');
INSERT INTO Instruction VALUES('17_SD3_2019','instr22');
INSERT INTO Instruction VALUES('18_PW13_2019','instr21');
INSERT INTO Instruction VALUES('18_PW13_2019','instr22');
INSERT INTO Instruction VALUES('19_CC1_2019','instr23');
INSERT INTO Instruction VALUES('19_CC1_2019','instr24');
INSERT INTO Instruction VALUES('19_CC2_2019','instr23');
INSERT INTO Instruction VALUES('19_CC2_2019','instr24');
INSERT INTO Instruction VALUES('19_CC3_2019','instr23');
INSERT INTO Instruction VALUES('19_CC3_2019','instr24');
INSERT INTO Instruction VALUES('20_AA3_2019','instr25');
INSERT INTO Instruction VALUES('20_AA3_2019','instr26');
INSERT INTO Instruction VALUES('20_AA4_2019','instr25');
INSERT INTO Instruction VALUES('20_AA4_2019','instr26');
INSERT INTO Instruction VALUES('21_HB1_2019','instr27');
INSERT INTO Instruction VALUES('21_HB1_2019','instr28');
INSERT INTO Instruction VALUES('22_NA5_2019','instr29');
INSERT INTO Instruction VALUES('22_NA5_2019','instr30');
INSERT INTO Instruction VALUES('23_NB1_2019','instr31');
INSERT INTO Instruction VALUES('23_NB1_2019','instr32');
INSERT INTO Instruction VALUES('24_NP3_2019','instr33');
INSERT INTO Instruction VALUES('24_NP3_2019','instr34');


DROP TABLE IF EXISTS Campers;
CREATE TABLE  Campers
(camperID varchar(15) PRIMARY KEY,
 firstName varchar(15) NOT NULL,
 midInitial varchar(2),
 lastName varchar(20) NOT NULL,
 DOB date,
 member varchar(3)
);
INSERT INTO Campers VALUES( 'camper1','Abbey','A','Adams', '2015-01-01', 'yes');
INSERT INTO Campers VALUES( 'camper2','Bob','B','Blake', '2015-02-02', 'no');
INSERT INTO Campers VALUES( 'camper3','Chris','C','Cross', '2015-03-03', 'no');
INSERT INTO Campers VALUES( 'camper4','Doug','D','Donovan', '2015-04-04', 'no');
INSERT INTO Campers VALUES( 'camper5','Evan','E','Edwards', '2015-05-05', 'yes');
INSERT INTO Campers VALUES( 'camper6','Francis','F','Fowler', '2015-06-06', 'no');
INSERT INTO Campers VALUES( 'camper7','Gail','G','Gable', '2015-07-07', 'no');
INSERT INTO Campers VALUES( 'camper8','Hillary','H','Hill', '2015-08-08', 'no');
INSERT INTO Campers VALUES( 'camper9','Isaac','I','Ingle', '2015-09-09', 'no');
INSERT INTO Campers VALUES( 'camper10','Jane','J','Johnson', '2015-10-10', 'no');
INSERT INTO Campers VALUES( 'camper11','Kim','K','Klein', '2015-11-11', 'no');
INSERT INTO Campers VALUES( 'camper12','Larry','L','Lenard', '2015-12-12', 'yes');
INSERT INTO Campers VALUES( 'camper13','Mark','M','Madison', '2015-08-08', 'no');
INSERT INTO Campers VALUES( 'camper14','Nancy','N','Newton', '2005-09-09', 'yes');
INSERT INTO Campers VALUES( 'camper15','Olivia','O','Olson', '2004-10-10', 'no');
INSERT INTO Campers VALUES( 'camper16','Paul','P','Page', '2003-11-11', 'no');
INSERT INTO Campers VALUES( 'camper17','Quinton','Q','Quartz', '2002-12-12', 'yes');
INSERT INTO Campers VALUES( 'camper18','Ronald','R','Reagan', '2006-01-30', 'no');
INSERT INTO Campers VALUES( 'camper19','Steve','S','Smith', '2006-02-29', 'no');
INSERT INTO Campers VALUES( 'camper20','Tammy','T','Torres', '2006-03-28', 'no');
INSERT INTO Campers VALUES( 'camper21','Una','U','Unger', '2006-04-27', 'no');
INSERT INTO Campers VALUES( 'camper22','Vance','V','Vargo', '2006-05-26', 'no');
INSERT INTO Campers VALUES( 'camper23','Willis','W','Walton', '2006-06-25', 'no');
INSERT INTO Campers VALUES( 'camper24','Yelinda','Y','Yeller', '2006-07-24', 'no');
INSERT INTO Campers VALUES( 'camper25','Zander','Z','Zeller', '2006-08-23', 'no');
INSERT INTO Campers VALUES( 'camper26','Adam','B','Case', '2012-09-22', 'no');
INSERT INTO Campers VALUES( 'camper27','Brittany','C','Dunn', '2012-10-21', 'no');
INSERT INTO Campers VALUES( 'camper28','Calvin','D','Edwards', '2012-11-20', 'no');
INSERT INTO Campers VALUES( 'camper29','Douglas','E','Fields', '2010-12-19', 'no');
INSERT INTO Campers VALUES( 'camper30','Eva','F','Garland', '2009-12-19', 'no');
INSERT INTO Campers VALUES( 'camper31','Frank','G','Hill', '2010-01-18', 'no');
INSERT INTO Campers VALUES( 'camper32','Gina','H','Ingles', '2010-02-17', 'no');
INSERT INTO Campers VALUES( 'camper33','Heather','I','Jungles', '2008-03-16', 'no');
INSERT INTO Campers VALUES( 'camper34','Isaac','J','Kowal', '2008-04-15', 'no');
INSERT INTO Campers VALUES( 'camper35','John','K','Lao', '2008-05-14', 'no');
INSERT INTO Campers VALUES( 'camper36','Kimberly','L','Maddox', '2008-06-13', 'no');


DROP TABLE IF EXISTS Registration;
CREATE TABLE Registration
(campSessID varchar(15) NOT NULL,
 camperID varchar(15) NOT NULL,
 friendRequest varchar(35),
 regisFeeAmtPaid numeric(3,2),
 campFeeAmtPaid numeric(4,0),
 scholarship varchar(3),
 sessionChange varchar(3),
 changeFeeAmtPaid numeric(3,2),
 cancellation varchar(3),
 refundAmt numeric(4,2),
 PRIMARY KEY (campSessID, camperID),
 FOREIGN KEY (campSessID) REFERENCES CampSessions (campSessID),
 FOREIGN KEY (camperID) REFERENCES Campers (camperID)
);
INSERT INTO Registration VALUES('1_HLB1_2019','camper1', NULL, 2.50, 12, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('2_BC1_2019','camper2', NULL, 2.50, 15, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('2_BC1_2019','camper3', NULL, 2.50, 15, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('3_MS1_2019','camper4', NULL, 2.50, 15, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('3_MS1_2019','camper5', NULL, 2.50, 12, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('3_MS1_2019','camper6', NULL, 2.50, 15, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('4_BBB1_2019','camper7', NULL, 2.50, 15, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('4_BBB1_2019','camper8', NULL, 2.50, 15, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('4_BBB1_2019','camper9', NULL, 2.50, 15, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('4_BBB1_2019','camper10', NULL, 2.50, 15, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('5_TT1_2019','camper11', NULL, 2.50, 15, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('5_TT1_2019','camper10', NULL, 2.50, 15, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('6_GS1_2019','camper12', NULL, 2.50, 12, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('7_TBB1_2019','camper13', NULL, 2.50, 15, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('8_AB1_2019','camper14', NULL, 2.50, 158, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('8_AB1_2019','camper15', NULL, 2.50, 168, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('8_AB3_2019','camper16', NULL, 2.50, 168, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('8_AB3_2019','camper17', NULL, 2.50, 158, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('9_WC1_2019','camper14', NULL, 2.50, 48, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('9_WC1_2019','camper15', NULL, 2.50, 58, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('10_KPT1_2019','camper16', NULL, 2.50, 58, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('10_KPT1_2019','camper17', NULL, 2.50, 48, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('11_AR5_2019','camper18', NULL, 2.50, 98, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('11_AR5_2019','camper19', NULL, 2.50, 98, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('12_CF6_2019','camper20', NULL, 2.50, 98, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('12_CF6_2019','camper21', NULL, 2.50, 98, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('13_WW4_2019','camper18', NULL, 2.50, 118, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('13_WW4_2019','camper19', NULL, 2.50, 118, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('13_WW4_2019','camper20', NULL, 2.50, 118, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('13_WW4_2019','camper21', NULL, 2.50, 118, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('14_FR2_2019','camper22', NULL, 2.50, 108, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('14_FR2_2019','camper23', NULL, 2.50, 108, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('15_TNP5_2019','camper24', NULL, 2.50, 108, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('15_TNP5_2019','camper25', NULL, 2.50, 108, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('16_AD5_2019','camper1', NULL, 2.50, 78, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('16_AD5_2019','camper4', NULL, 2.50, 88, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('17_SD1_2019','camper26', NULL, 2.50, 88, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('17_SD1_2019','camper27', NULL, 2.50, 88, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('18_PW13_2019','camper27', NULL, 2.50, 88, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('18_PW13_2019','camper28', NULL, 2.50, 88, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('19_CC1_2019','camper29', NULL, 2.50, 88, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('19_CC1_2019','camper30', NULL, 2.50, 88, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('20_AA3_2019','camper31', NULL, 2.50, 88, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('20_AA3_2019','camper32', NULL, 2.50, 88, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('21_HB1_2019','camper33', NULL, 2.50, 88, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('22_NA5_2019','camper34', NULL, 2.50, 88, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('23_NB1_2019','camper35', NULL, 2.50, 108, 'no', 'no', NULL, 'no', NULL);
INSERT INTO Registration VALUES('24_NP3_2019','camper36', NULL, 2.50, 108, 'no', 'no', NULL, 'no', NULL);


DROP TABLE IF EXISTS AdultContacts;
CREATE TABLE  AdultContacts
(adultID varchar(10) PRIMARY KEY,
 firstName varchar(15) NOT NULL,
 lastName varchar(20) NOT NULL,
 email varchar(50),
 phone char(15)
);
INSERT INTO AdultContacts VALUES('adult1','Zena','Adams','ZAdams@gmail.com', '507-289-1234');
INSERT INTO AdultContacts VALUES('adult2','Yolanda','Blake','YBlake@work.com', '507-289-2345');
INSERT INTO AdultContacts VALUES('adult3','Xavier','Blake','XBlake@gmail.com', '507-289-2345');
INSERT INTO AdultContacts VALUES('adult4','Wanda','Cross','WCross@gmail.com', '507-289-3456');
INSERT INTO AdultContacts VALUES('adult5','Vicki','Donovan','VDonovan@gmail.com', '507-289-4567');
INSERT INTO AdultContacts VALUES('adult6','Ulysses','Donovan','UDonovan@work.com', '507-289-4567');
INSERT INTO AdultContacts VALUES('adult7','Ted','Edwards','TEdwards@gmail.com', '507-289-5678');
INSERT INTO AdultContacts VALUES('adult8','Sondra','Fowler','SFowler@gmail.com', '507-289-6789');
INSERT INTO AdultContacts VALUES('adult9','Ron','Gable','RGabler@work.com', '507-289-7890');
INSERT INTO AdultContacts VALUES('adult10','Paula','Hill','PHill@gmail.com', '507-289-8901');
INSERT INTO AdultContacts VALUES('adult11','Oliver','Hill','OHill@gmail.com', '507-289-8901');
INSERT INTO AdultContacts VALUES('adult12','Nancy','Ingle','NIngle@work.com', '507-289-9012');
INSERT INTO AdultContacts VALUES('adult13','Mark','Johnson','MJohnson@work.com', '507-289-0123');
INSERT INTO AdultContacts VALUES('adult14','Linda','Klein','LKlein@gmail.com', '507-289-9876');
INSERT INTO AdultContacts VALUES('adult15','Joan','Lenard','JLenard@gmail.com', '507-289-8765');
INSERT INTO AdultContacts VALUES('adult16','Ivan','Lenard','ILenard@work.com', '507-289-8765');
INSERT INTO AdultContacts VALUES('adult17','Harry','Madison','HMadison@gmail.com', '507-289-7654');
INSERT INTO AdultContacts VALUES('adult18','Gus','Newton','GNewton@work.com', '507-289-6543');
INSERT INTO AdultContacts VALUES('adult19','Fran','Olson','FOlson@work.com', '507-289-5432');
INSERT INTO AdultContacts VALUES('adult20','Eric','Olson','EOlson@gmail.com', '507-289-5432');
INSERT INTO AdultContacts VALUES('adult21','Donald','Page','DPage@work.com', '507-289-4321');
INSERT INTO AdultContacts VALUES('adult22','Chris','Quartz','CQuartz@work.com', '507-289-3210');
INSERT INTO AdultContacts VALUES('adult23','Brittany','Reese','BReese@gmail.com', '507-285-2109');
INSERT INTO AdultContacts VALUES('adult24','Anne','Stevens','AStevens@gmail.com', '507-285-1098');
INSERT INTO AdultContacts VALUES('adult25','Anne','Baker','ABaker@gmail.com', '507-285-0987');
INSERT INTO AdultContacts VALUES('adult26','Brenda','Cruz','BCruz@gmail.com', '507-285-9876');
INSERT INTO AdultContacts VALUES('adult27','Carla','Diaz','CDiaz@gmail.com', '507-285-8765');
INSERT INTO AdultContacts VALUES('adult28','Diane','Edgars','DEdgars@gmail.com', '507-285-7654');
INSERT INTO AdultContacts VALUES('adult29','Eleanor','Finn','EFinn@gmail.com', '507-285-6543');
INSERT INTO AdultContacts VALUES('adult30','Fran','Gallagher','FGallagher@gmail.com', '507-285-5432');
INSERT INTO AdultContacts VALUES('adult31','Gail','Hill','GHill@gmail.com', '507-285-4321');
INSERT INTO AdultContacts VALUES('adult32','Haley','Ingram','HIngram@gmail.com', '507-285-3210');
INSERT INTO AdultContacts VALUES('adult33','Janice','Kalis','JKalis@gmail.com', '507-285-0102');
INSERT INTO AdultContacts VALUES('adult34','Kim','Lind','KLind@gmail.com', '507-285-0203');
INSERT INTO AdultContacts VALUES('adult35','Lewis','Lamar','LLamar@gmail.com', '507-285-0304');
INSERT INTO AdultContacts VALUES('adult36','Linda','Moore','LMoore@work.com', '507-285-0405');
INSERT INTO AdultContacts VALUES('adult37','Mary','Nash','MNash@work.com', '507-285-0506');
INSERT INTO AdultContacts VALUES('adult38','Nancy','Ingles','NIngles@gmail.com', '507-285-0607');
INSERT INTO AdultContacts VALUES('adult39','Owen','Jungles','OJungles@gmail.com', '507-285-0708');
INSERT INTO AdultContacts VALUES('adult40','Paula','Lao','PLao@gmail.com', '507-285-0809');
INSERT INTO AdultContacts VALUES('adult41','Randy','Maddox','RMaddox@gmail.com', '507-285-1010');


DROP TABLE IF EXISTS Supporters;
CREATE TABLE Supporters
(camperID varchar(15) NOT NULL,
 adultID varchar(15) NOT NULL,
 PRIMARY KEY (camperID, adultID),
 FOREIGN KEY (camperID) REFERENCES Campers (camperID),
 FOREIGN KEY (adultID) REFERENCES AdultContacts (adultID)
);
INSERT INTO Supporters VALUES('camper1','adult1');
INSERT INTO Supporters VALUES('camper2','adult2');
INSERT INTO Supporters VALUES('camper2','adult3');
INSERT INTO Supporters VALUES('camper3','adult4');
INSERT INTO Supporters VALUES('camper4','adult5');
INSERT INTO Supporters VALUES('camper4','adult6');
INSERT INTO Supporters VALUES('camper5','adult7');
INSERT INTO Supporters VALUES('camper6','adult8');
INSERT INTO Supporters VALUES('camper7','adult9');
INSERT INTO Supporters VALUES('camper8','adult10');
INSERT INTO Supporters VALUES('camper8','adult11');
INSERT INTO Supporters VALUES('camper9','adult12');
INSERT INTO Supporters VALUES('camper10','adult13');
INSERT INTO Supporters VALUES('camper11','adult14');
INSERT INTO Supporters VALUES('camper12','adult15');
INSERT INTO Supporters VALUES('camper12','adult16');
INSERT INTO Supporters VALUES('camper13','adult17');
INSERT INTO Supporters VALUES('camper14','adult18');
INSERT INTO Supporters VALUES('camper15','adult19');
INSERT INTO Supporters VALUES('camper15','adult20');
INSERT INTO Supporters VALUES('camper16','adult21');
INSERT INTO Supporters VALUES('camper17','adult22');
INSERT INTO Supporters VALUES('camper18','adult23');
INSERT INTO Supporters VALUES('camper19','adult24');
INSERT INTO Supporters VALUES('camper20','adult25');
INSERT INTO Supporters VALUES('camper21','adult26');
INSERT INTO Supporters VALUES('camper22','adult27');
INSERT INTO Supporters VALUES('camper23','adult28');
INSERT INTO Supporters VALUES('camper24','adult29');
INSERT INTO Supporters VALUES('camper25','adult30');
INSERT INTO Supporters VALUES('camper26','adult31');
INSERT INTO Supporters VALUES('camper27','adult32');
INSERT INTO Supporters VALUES('camper28','adult33');
INSERT INTO Supporters VALUES('camper29','adult34');
INSERT INTO Supporters VALUES('camper30','adult35');
INSERT INTO Supporters VALUES('camper31','adult36');
INSERT INTO Supporters VALUES('camper32','adult37');
INSERT INTO Supporters VALUES('camper33','adult38');
INSERT INTO Supporters VALUES('camper34','adult39');
INSERT INTO Supporters VALUES('camper35','adult40');
INSERT INTO Supporters VALUES('camper36','adult41');


DROP TABLE IF EXISTS MedConditions;
CREATE TABLE  MedConditions
(medID varchar(10) PRIMARY KEY,
 medCondition varchar(35) NOT NULL,
 camperID varchar(20) NOT NULL,
 emergencyTx varchar(1000),
 emergencyMed varchar(100),
 authorizeToTx varchar(3),
 FOREIGN KEY (camperID) REFERENCES Campers (camperID)
);
INSERT INTO MedConditions VALUES('med1','food allergy','camper2','Administer Epipen; take child to Emergency Room; contact supporting adult','Epipen','yes');
INSERT INTO MedConditions VALUES('med2','asthma','camper7','Administer fast-acting bronchodilator inhaler; monitor breathing of child; contact supporting adult; if needed, take child to Emergency Room ','Albuterol inhaler','yes');
INSERT INTO MedConditions VALUES('med3','epilepsy','camper17','protect child from falling; carefully insert mouth guard, if possible; take child to Emergency Room; contact supporting adult','none','yes');
INSERT INTO MedConditions VALUES('med4','asthma','camper31','Administer fast-acting bronchodilator inhaler; monitor breathing of child; contact supporting adult; if needed, take child to Emergency Room ','Ventolin inhaler','yes');