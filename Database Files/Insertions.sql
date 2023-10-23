

/*
delete from Appointment
delete from Doctor
delete from Patient
delete from Department
delete from OtherStaff
delete from LoginTable
*/

USE DBProject
GO


INSERT INTO LoginTable(Email, Password, Type) VALUES ('admin@clinic.com' ,'admin' ,   3)


--DEPARTMENT INSERTION
insert into department values(1 , 'Cardiology' , 'We have the best heart specialists in town .Each one of them is very competent and experienced.')
insert into department values(2 , 'Orthopaedics' , 'Orthopedic surgeons use surgical means to treat musculoskeletal trauma, infections, tumors. We believe in the best.')
insert into department values(3 , 'Ears Nose Throat' , 'They are gentle. And are trained to handle kids as well as adults.')
insert into department values(4 , 'Physiotherapy ',' Physiotherapists work through physical therapies such as exercise, and manipulation of bones, joints and muscle tissues.' )
insert into department values(5 , 'Neurology', 'A medical speciality dealing with disorders of the nervous system. It deals with the diagnosis and treatment of all categories of disease.')



--LOGIN TABLE INSERTIION
INSERT INTO LoginTable(Email, Password, Type) VALUES('krish@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('heet@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('keval@gmail.com', 'abc',2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('jaydeep@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('daxraj@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('vishwadeep@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('krunal@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('chagan@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('magan@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('bagha@gmail.com', 'abc', 2)

INSERT INTO LoginTable(Email, Password, Type) VALUES('ABC@gmail.com', 'abc', 1)
INSERT INTO LoginTable(Email, Password, Type) VALUES('DEF@gmail.com', 'abc', 1)
INSERT INTO LoginTable(Email, Password, Type) VALUES('XYZ@gmail.com', 'abc', 1)



--DOCTOR INSERTIONS
DECLARE @ID INT
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'krish@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Krish', '156133213', 'Bhavnagar', '4-12-1996', 'M', 1, 2500, 30000, 4, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'CP', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'heet@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Heet', '156133213', 'Valsad', '12-12-1996', 'M', 1, 3000, 25000, 3.5, 0, 'B.Tech', 'None', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'keval@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Keval', '156133213', 'Pati', '12-12-1996', 'M', 1, 1500, 20000, 5, 0, 'MBBS', 'Sergon', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'jaydeep@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Jaydeep', '156133213', 'Bhavnagar', '05-04-1990', 'M', 1, 1000, 15000, 4.5, 0, 'MD', 'None', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'daxraj@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Daxraj', '156133213', 'Rajkot', '05-04-1990', 'M', 2, 1000, 15000, 4.5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'Every feild', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'vishwadeep@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Vishwadeep', '156133213', 'Bhavnagar', '05-04-1990', 'M', 2, 1000, 15000, 4.5, 0, 'B.Tech', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'chagan@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Chagan', '156133213', 'Nadiad', '05-04-1990', 'M', 3, 1000, 15000, 4.5, 0, 'PHDs', 'None', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'krunal@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Krunal', '156133213', 'Valsad', '05-04-1990', 'M', 3, 1000, 15000, 4.5, 0, 'PHD', 'None', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'magan@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Magan', '156133213', 'Nadiad', '05-04-1990', 'M', 4, 1000, 15000, 4.5, 0, 'PHD', 'None', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'bagha@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Bagha', '156133213', 'Nadiad', '05-04-1990', 'M', 5, 1000, 15000, 4.5, 0, 'PHD', 'None', 10, 1)


--PATIENT INSERTIONS
DECLARE @P_ID INT
SELECT @P_ID = LoginID FROM LoginTable WHERE Email='ABC@gmail.com'
INSERT INTO Patient VALUES(@P_ID, 'ABC', '61536516', 'Nadiad', '4-4-1996', 'M')
SELECT @P_ID = LoginID FROM LoginTable WHERE Email='DEF@gmail.com'
INSERT INTO Patient VALUES(@P_ID, 'DEF', '61536516', 'Nadiad', '4-4-1996', 'M')
SELECT @P_ID = LoginID FROM LoginTable WHERE Email='XYZ@gmail.com'
INSERT INTO Patient VALUES(@P_ID, 'XYZ', '61536516', 'Nadiad', '4-4-1996', 'M')


--select * from OtherStaff

insert into OtherStaff values ('John', '03227561002','USA', 'Guard', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Messi', '03227561002','Argentina', 'Sweeper', 'M', '05-04-1990', 'Matric',5000)






--Because I have inserted the date and time in a particular format in the appointment table and that format has to be maintained
--for proper working

/*
--APPOINTMENT INSERTIONS 
DECLARE @DOCTOR_ID INT
DECLARE @PATIENT_ID INT
SELECT @DOCTOR_ID = LoginID FROM LoginTable WHERE Email='farhan@gmail.com'
SELECT @PATIENT_ID = LoginID FROM LoginTable WHERE Email='ABC@gmail.com'
INSERT INTO Appointment(DoctorID, PatientID, Date, Appointment_Status) VALUES(@DOCTOR_ID, @PATIENT_ID, '2017-5-4 10:00:00', 3)
SELECT @DOCTOR_ID = LoginID FROM LoginTable WHERE Email='farhan@gmail.com'
SELECT @PATIENT_ID = LoginID FROM LoginTable WHERE Email='DEF@gmail.com'
INSERT INTO Appointment(DoctorID, PatientID, Date, Appointment_Status) VALUES(@DOCTOR_ID, @PATIENT_ID, '2017-5-4 12:00:00', 1)
SELECT @DOCTOR_ID = LoginID FROM LoginTable WHERE Email='hassaan@gmail.com'
SELECT @PATIENT_ID = LoginID FROM LoginTable WHERE Email='DEF@gmail.com'
INSERT INTO Appointment(DoctorID, PatientID, Date, Appointment_Status) VALUES(@DOCTOR_ID, @PATIENT_ID, '2017-5-4 16:00:00', 3)
*/

