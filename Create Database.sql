--CREATE DATABASE APU_Bookstore;
CREATE DATABASE E_BOOKSTORE
USE E_BOOKSTORE;

CREATE TABLE Publisher(
	PublisherID NCHAR(7),
	Pub_Name NVARCHAR(50) NOT NULL,
	Pub_Address NVARCHAR(100) NOT NULL,
	Pub_Contact_Number NVARCHAR(20) NOT NULL,
	Pub_Email_Address NVARCHAR(50) NOT NULL,
	PRIMARY KEY (PublisherID)
	);

INSERT INTO Publisher 
VALUES
	('PUB0001', 'Archade Publishing', 'No. 4 Ltg Tamarind Kaw 5 Taman Selatan', '019-961 1178', 'laujm02@hotmail.com'),
	('PUB0002', 'Berkley Publishing', 'No. 2 Lorong Syed Putra Kiri Off Jalan Syed Putra', '019-921 4478', 'lingxing12@hotmail.com'),
	('PUB0003', 'Jove Publications', 'No. 20 Jln 11/55C Taman Setiawangsa Hulu', '015-961 1333', 'jinxuan13@hotmail.com'),
	('PUB0004', 'LB Books', 'No. 2 Jln Yong Shook Lin Seksyen 52 Petaling Jaya', '019-923 1278', 'jingtze11@hotmail.com'),
	('PUB0005', 'Random House', 'No. 21 Lrg Kasawari 9A Taman Eng Ann', '018-944 7778', 'ingxing02@hotmail.com'),
	('PUB0006', 'EBasic Books', 'No. 11 Jln 9/62A Bandar Menjalara', '016-121 4543', 'eric02@hotmail.com'),
	('PUB0007', 'JY Books', 'No. 2 Ltg Tamarind Kaw 5 Taman Selatan', '018-933 1278', 'jacky02@hotmail.com'),
	('PUB0008', 'Rainbow Press', 'No. 218 5Th Floor The Ampwalk South Block Jln Ampang', '016-962 1312', 'likming02@hotmail.com'),
	('PUB0009', 'Touchstone Publications', 'No. 9 Jln Yong Shook Lin Seksyen 92 Petaling Jaya', '016-961 5432', 'lingling02@hotmail.com'),
	('PUB0010', 'Jun Press', 'No. 11 Jln Jintan Taman Supreme', '019-953 1211', 'zhuhao02@hotmail.com'),

	('PUB0011', 'Reverie Publishing', 'No. 6 Jln Intan Taman Setia', '016-121 0178', 'danialwong02@hotmail.com'),
	('PUB0012', 'Tor Books', 'No. 17 Lrg Kasawari 4A Taman Eng Ann', '019-941 8102', 'salmunngu21@hotmail.com'),
	('PUB0013', 'EHappy Press', 'No. 23 Jln 9/62A Bandar Menjalara', '019-961 2101', 'emmanuel02@gmail.com'),
	('PUB0014', 'JM Books', 'No. 31 Jln Jintan Taman Supreme', '018-221 1162', 'leonaka02@gmail.com'),
	('PUB0015', 'Scholastic House', 'No. 7 Jln Yong Shook Lin Seksyen 22 Petaling Jaya', '016-961 4448', 'mingming11@gmail.com');

CREATE TABLE Bookstore (
	BookID NCHAR(7),
	Book_Name NVARCHAR(60) NOT NULL,
	PublisherID NCHAR(7),
	Category NVARCHAR(50) NOT NULL,
	Author NVARCHAR(50) NOT NULL,
	Book_Quantity INT NOT NULL,
	Cost_Per_Book DECIMAL(4,2) NOT NULL,
	Price_Per_Book DECIMAL(4,2) NOT NULL,
	PRIMARY KEY (BookID),
	FOREIGN KEY (PublisherID) REFERENCES Publisher(PublisherID)
);

INSERT INTO Bookstore
VALUES
	('B000001', 'A Court of Silver Flames', 'PUB0004', 'Novel', 'Sarah J. Maas', '20', '40', '44.80'),
	('B000002', 'A Slow Fire Burning', 'PUB0004', 'Novel', 'Paula Hawkins', '14', '32.4', '35.50'),
	('B000003', 'Mariner Books Life of Pi', 'PUB0002', 'Action and Adventure', 'Yann Martel', '16', '36.10', '39.25'),
	('B000004', 'The Testaments: The Sequel to The Handmaid’s Tale', 'PUB0002', 'Science Fiction', 'Margaret Atwood', '27', '34.90','39.60'),
	('B000005', 'The Land Of Stories #06: Worlds Collide', 'PUB0005', 'Science Fiction', 'Chris Colfer', '8', '40.80','44.90'),
	('B000006', 'Trials Of Apollo: The Burning Maze', 'PUB0001', 'Fantasy', 'Rick Riordan', '4', '47.60','49.95'),
	('B000007', 'The Perfect Crime', 'PUB0015', 'Detective Mystery', 'Maxim Jakubowski', '9', '39.60','44'),
	('B000008', 'Wool Omnibus', 'PUB0014', 'Dystopian', 'Hugh Howey', '29', '35.80','39.90'),
	('B000009', 'The Lioness', 'PUB0013', 'Action and Adventure', 'Chris Bohjalian', '10', '78.55','83.70'),
	('B000010', 'Gone Girl', 'PUB0013', 'Thriller', 'Gillian Flynn', '28', '54','57.80'),

	('B000011', 'Second Place', 'PUB0002', 'Novel', 'Racheal Cusk', '10', '44.90','47'),
	('B000012', 'The Water Dancer', 'PUB0001', 'Fantasy', 'Nehisi Coates', '13', '49.3','56.7'),
	('B000013', 'Branzen and the Beast', 'PUB0011', 'Romance', 'Sarah MacLean', '23', '32.30','34.90'),
	('B000014', 'The 19th Christmas', 'PUB0010', 'Thriller', 'James Patterson', '18', '38.40','39.90'),
	('B000015', 'Asian Ghost Stories', 'PUB0010', 'Horror', 'Nicky Moey', '30', '27.90','29.90'),
	('B000016', 'Crazy Rich Asians', 'PUB0007', 'Novel', 'Kevin Kwan', '12', '33.80','37.95'),
	('B000017', 'The Hitchhiker’s Guide to the Galaxy', 'PUB0011', 'Science Fiction', 'Douglas Adams', '5', '39.50','43.90'),
	('B000018', 'White Fang', 'PUB0005', 'Action and Adventure', 'Jack London', '28', '30.90','34.40'),
	('B000019', 'The Martian', 'PUB0006', 'Science Fiction', 'Andy Weir', '8', '58.50','61.10'),
	('B000020', 'The Book Thief', 'PUB0003', 'Horror', 'Markus Zusak', '22', '54','57.80'),

	('B000021', 'No One Is Talking About This', 'PUB0009', 'Novel', 'Patricia Lockwood', '7', '29','33'),
	('B000022', 'Carrie', 'PUB0007', 'Horror', 'Stephen King', '13', '33.30','35.90'),
	('B000023', 'Royal Holiday', 'PUB0010', 'Romance', 'Jasmine Guillory', '21', '41.60','47.92'),
	('B000024', 'Doubleday The Guardians', 'PUB0008', 'Thriller', 'John Grisham', '11', '50.40','54.90'),
	('B000025', 'Harry Potter and the Cursed Child', 'PUB0012', 'Fantasy', 'J.K. Rowling', '25', '43.15','47.90'),
	('B000026', 'The No-Show', 'PUB0013', 'Romance', 'Beth O’Leary', '22', '47.70','54.60'),
	('B000027', 'The Atlantis Gene', 'PUB0008', 'Science Fiction', 'A.G. Riddle', '8', '43','47.80'),
	('B000028', 'The Silent Patient', 'PUB0013', 'Thriller', 'Alex Michaelides', '14', '64.10','66.70'),
	('B000029', 'The Lottery', 'PUB0007', 'Short Story', 'Shirley Jackson', '12', '78.40','87.30'),
	('B000030', 'Face the Night', 'PUB0005', 'Novel', 'Alan Lastufka', '18', '69.30','74.18');

CREATE TABLE Bookstore_Order(
	StoreOrderID NCHAR(7),
	Order_Date DATE NOT NULL,
	Purchase_Quantity INT NOT NULL,
	Order_Delivery_Status NVARCHAR(11) DEFAULT 'NOT Arrived',
	BookID NCHAR(7),
	PublisherID NCHAR(7),
	PRIMARY KEY (StoreOrderID),
	FOREIGN KEY (BookID) REFERENCES Bookstore(BookID),
	FOREIGN KEY (PublisherID) REFERENCES Publisher(PublisherID)
	);

INSERT INTO Bookstore_Order 
VALUES
	('S000001', '2022-01-01', '100', 'Arrived', 'B000001', 'PUB0004'),
	('S000002', '2022-01-01', '50', 'Arrived', 'B000004', 'PUB0002'),
	('S000003', '2022-01-09', '200', 'Arrived', 'B000007', 'PUB0015'),
	('S000004', '2022-01-09', '100', 'Arrived', 'B000012', 'PUB0001'),
	('S000005', '2022-01-15', '50', 'Arrived', 'B000019', 'PUB0006'),
	('S000006', '2022-01-15', '30', 'Arrived', 'B000020', 'PUB0003'),
	('S000007', '2022-01-19', '100', 'Arrived', 'B000020', 'PUB0003'),
	('S000008', '2022-02-14', '50', 'Arrived', 'B000004', 'PUB0002'),
	('S000009', '2022-02-14', '100', 'Arrived', 'B000005', 'PUB0005'),
	('S000010', '2022-02-14', '50', 'Arrived', 'B000002', 'PUB0004'),
				
	('S000011', '2022-02-19', '100', 'Arrived', 'B000009', 'PUB0013'),
	('S000012', '2022-03-15', '150', 'Arrived', 'B000009', 'PUB0013'),
	('S000013', '2022-03-15', '200', 'Arrived', 'B000009', 'PUB0013'),
	('S000014', '2022-03-16', '30', 'Arrived', 'B000014', 'PUB0010'),
	('S000015', '2022-03-29', '90', 'Arrived', 'B000015', 'PUB0010'),
	('S000016', '2022-04-12', '300', DEFAULT, 'B000011', 'PUB0002'),
	('S000017', '2022-04-13', '200', 'Arrived', 'B000021', 'PUB0009'),
	('S000018', '2022-04-13', '100', 'Arrived', 'B000006', 'PUB0001'),
	('S000019', '2022-04-13', '50', 'Arrived', 'B000023', 'PUB0010'),
	('S000020', '2022-04-16', '30', DEFAULT, 'B000014', 'PUB0010'),
			 
	('S000021', '2022-04-17', '90', 'Arrived', 'B000017', 'PUB0011'),
	('S000022', '2022-04-18', '100', 'Arrived', 'B000012', 'PUB0001'),
	('S000023', '2022-04-27', '220', 'Arrived', 'B000011', 'PUB0002'),
	('S000024', '2022-04-27', '150', 'Arrived', 'B000022', 'PUB0007'),
	('S000025', '2022-04-28', '250', 'Arrived', 'B000027', 'PUB0008'),
	('S000026', '2022-05-16', '200', 'Arrived', 'B000029', 'PUB0007'),
	('S000027', '2022-05-21', '50', 'Arrived', 'B000014', 'PUB0010'),
	('S000028', '2022-05-24', '250', DEFAULT, 'B000006', 'PUB0001'),
	('S000029', '2022-05-24', '300', DEFAULT, 'B000009', 'PUB0013'),
	('S000030', '2022-05-25', '150', DEFAULT, 'B000001', 'PUB0004');

CREATE TABLE Member(
	MemberID NCHAR(7),
	Mem_Name NVARCHAR(50) NOT NULL,
	Mem_Gender NVARCHAR(6) NOT NULL,
	Mem_Date_of_Birth DATE NOT NULL,
	Mem_Contact_Number NVARCHAR(20) NOT NULL,
	Mem_Email_Address NVARCHAR(50) NOT NULL,
	Mem_Address NVARCHAR(100) NOT NULL,
	PRIMARY KEY (MemberID)
	);

INSERT INTO Member
VALUES 
	('M000001', 'Mohammad Salimi bin Shahrul', 'Male', '1971-02-07', '015-9515 618', 'welson.zainorazman@gmail.com', 'No. 55,Jln Kuching 3/82, Petaling Maluri, 75318 Pekan Asahan, Melaka'),
	('M000002', 'Jessie Tan Tiek Mum', 'Female', '1973-08-08', '017-291 3619', 'nithya96@hotmail.com', 'No. 9-1, Jln Maxwell 3C, USJ 85J, 05503 Sungai Petani, Kedah Darul Aman'),
	('M000003', 'Quak Hoon Hii', 'Female', '1973-11-12', '018-948 9869', 'murugan.thorngu@hotmail.com', 'No. 8-1, Jalan 1/3, PJU22, 50708 KLCC, WP Kuala Lumpur'),
	('M000004', 'Renuga Thiru a/l Kuhan Vello', 'Male', '1976-01-01', '012-665 3073', 'asha45@yahoo.com', 'No. 2H-74, Jalan 7/5Q, Seri Petaling, 20411 Bandar Ketengah Jaya, Terengganu'),
	('M000005', 'Chan Jao Yue', 'Female', '1976-06-29', '017-000 7616', 'elena.balakrishnan@gmail.com', 'No. 97, Jalan 8/8J, Seksyen 85Z, 11173 Butterworth, Penang'),
	('M000006', 'Shi Ceh Li', 'Female', '1977-10-08', '014-610 8408', 'lah.gavin@gmail.com', 'No. 4T-61, Lorong 4/4, PJU61C, 87007 Layang-Layang, Labuan'),
	('M000007', 'Nuur Adilla binti Adam Zam', 'Female', '1977-11-25', '015-572 5201', 'zamre.shabana@gmail.com', 'No. 404, Lorong Sultan Ismail 1/33, Lembah Medan, 79638 Bukit Gambir, Johor'),
	('M000008', 'K. Thirumurugan', 'Male', '1984-01-09', '015-594 4617', 'ampalavanar.francis@gmail.com', 'No. L-83-13, Jalan Perak 5/52I, SS14D, 39136 Kuala Pahang, Pahang Darul Makmur'),
	('M000009', 'Sybil a/l Balasubramaniam', 'Male', '1984-10-27', '03-2984 3245', 'shankar.abu@yahoo.com', 'No. 27, Jln 7/2O, Medan Ria, 34381 Jelapang, Perak'),
	('M000010', 'Hing Sian Min', 'Female', '1985-02-09', '017-620 9749', 'bhairizan@yahoo.com', 'No. 5, Lorong Sultan Iskandar 8/1, Seksyen 64, 90946 Inanam, Sabah'),
	  		    
	('M000011', 'Mohammed Wan Aman Aqashah', 'Male','1985-03-12', '019-181 2076', 'kthanenthiran@hotmail.com', 'No. 8-1, Jalan 1/3, PJU22, 50708 KLCC, WP Kuala Lumpur'),
	('M000012', 'Kuan Mong Ang', 'Male', '1985-07-28', '03-0751 0150', 'faiz.haridas@hotmail.com', 'No. 2H-74, Jalan 7/5Q, Seri Petaling, 20411 Bandar Ketengah Jaya, Terengganu'),
	('M000013', 'Looi Liow Zhong','Male', '1989-09-24', '015-146 6923', 'kviswalingam@hotmail.com', 'No. 97, Jalan 8/8J, Seksyen 85Z, 11173 Butterworth, Penang'),
	('M000014', 'Chang Rinn Jiet', 'Male', '1990-08-05',' 015-168 6148', 'siangsuk73@yahoo.com', 'No. 4T-61, Lorong 4/4, PJU61C, 87007 Layang-Layang, Labuan'),
	('M000015', 'Aninafishah Fadlullah binti Wan', 'Female', '1991-04-14', '011-1067 9437', 'shanmugaratnam.rajesh@gmail.com', 'No. 404, Lorong Sultan Ismail 1/33, Lembah Medan, 79638 Bukit Gambir, Johor'),
	('M000016', 'Chu Chooi Hiong', 'Male', '1993-05-03', '016-438 0189', 'tmazalan@hotmail.com', 'No. L-83-13, Jalan Perak 5/52I, SS14D, 39136 Kuala Pahang, Pahang Darul Makmur'),
	('M000017', 'Uthaya Devandran a/l Veerappan', 'Male', '1993-12-23', '017-564 3610', 'pavandeep78@gmail.com', 'No. 27, Jln 7/2O, Medan Ria, 34381 Jelapang, Perak'),
	('M000018', 'Yong Men Lan', 'Female', '1995-04-10', '015-412 5935', 'mak.yiinau@yahoo.com', 'No. 29-65, Jln Sultan Ismail 6, Seksyen 7, 07116 Jitra, Kedah Darul Aman'),
	('M000019', 'Hajjah Atifahajar Yacob', 'Male', '1997-07-01', '011-2091 3809', 'quincy03@yahoo.com', 'No. 4, Jalan 6/58, Desa Mahkota, 34666 Lumut, Perak Darul Ridzuan'),
	('M000020', 'Mohammed Roseli Sani bin Che Aziz', 'Male', '1997-09-02', '012-713 3561', 'razemi46@hotmail.com', 'No. 5-9, Lorong 8, Taman Awan, 73403 Chembong, Negeri Sembilan Darul Khusus'),
	  		    
	('M000021', 'Leung Kho Zo', 'Male', '2000-05-18', '017-537 1433', 'thokter.amzah@hotmail.com', 'No. 2, Jln 8D, Seksyen 26H, 71716 Pengkalan Kempas, Negeri Sembilan Darul Khusus'),
	('M000022', 'Thanuja Ramadas a/l Sittampalam Ratnam', 'Male', '2000-12-26', '015-932 7036', 'afifa.daniel@hotmail.com', 'No. 1, Jalan Prangin 1/5N, Damansara Tunku, 72763 Sungai Gadut, Negeri Sembilan'),
	('M000023', 'Sannatasah Rajakumar a/l Shan Kandasamy', 'Male', '2001-07-06', '015-657 8993', 'ceetik.ravindran@yahoo.com', 'No. 7, Jalan 93K, Kampung Tun Hussein Onn, 01295 Kuala Perlis, Perlis Indera Kayangan'),
	('M000024', 'Lai Su Kha', 'Female', '1970-06-14', '03-5104 3319', 'elena.mohinder@yahoo.com', 'No. 813, Jalan Selamat, Pandan Bahagia, 89470 Tuaran, Sabah'),
	('M000025', 'Nuur Mashitah binti Afif', 'Female', '1972-11-18', '017-753 0946', 'kutni.mok@hotmail.com', 'No. 169, Jalan 4/38, SS7, 72494 Dangi, Negeri Sembilan Darul Khusus'),
	('M000026', 'Seah Lio Bi', 'Female', '1972-12-08', '012-990 1992', 'akee@gmail.com', 'No. B-33-00, Jalan Sin Chee 8, Batu Tun Hussein Onn, 20212 Kampung Raja, Terengganu'),
	('M000027', 'Ramesh Narayan', 'Male', '1973-12-15', '015-673 8975', 'rashidi.iwan@gmail.com', 'No. 3, Jalan 6/4, Bandar Seri Medan, 89423 Sepanggar, Sabah'),
	('M000028', 'Xu Xi Zen', 'Female', '1974-01-30', '014-290 9103', 'cerhup.pauzi@yahoo.com', 'No. 495, Lorong Yew 8/59K, SS35W, 66294 Ampang, Selangor Darul Ehsan'),
	('M000029', 'Ma Han Show', 'Male', '2003-08-06', '03-0826 4305', 'balakrishnan.devamany@gmail.com', 'No. 905, Jalan 5/1, Apartment Bintang, 17217 Pasir Puteh, Kelantan'),
	('M000030', 'Ang Weoy Yang', 'Male', '09/12/2002', '012-690 0655', 'weoyyang02@gmail.com', 'No. 103, Jalan PP 2/11, Taman Putra, 47130 Puchong, Selangor');
			    
CREATE TABLE Shopping_Cart(
	CartID NCHAR(7),
	MemberID NCHAR(7),
	Payment_Status NVARCHAR(10) DEFAULT 'Not Paid',
	PRIMARY KEY (CartID),
	FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
);

INSERT INTO Shopping_Cart
VALUES
	('C000001', 'M000001', 'Paid'),
	('C000002', 'M000002', 'Paid'),
	('C000003', 'M000003', 'Paid'),
	('C000004', 'M000004', 'Paid'),
	('C000005', 'M000005', 'Paid'),
	('C000006', 'M000006', 'Paid'),
	('C000007', 'M000007', 'Paid'),
	('C000008', 'M000008', 'Paid'),
	('C000009', 'M000009', 'Paid'),
	('C000010', 'M000010', 'Paid'),

	('C000011', 'M000011', 'Paid'),
	('C000012', 'M000012', 'Paid'),
	('C000013', 'M000013', 'Paid'),
	('C000014', 'M000014', 'Paid'),
	('C000015', 'M000015', 'Paid'),
	('C000016', 'M000016', 'Paid'),
	('C000017', 'M000017', 'Paid'),
	('C000018', 'M000018', 'Paid'),
	('C000019', 'M000019', 'Paid'),
	('C000020', 'M000020', 'Paid'),

	('C000021', 'M000021', 'Paid'),
	('C000022', 'M000022', 'Paid'),
	('C000023', 'M000023', 'Paid'),
	('C000024', 'M000024', 'Paid'),
	('C000025', 'M000025', 'Paid'),
	('C000026', 'M000026', 'Paid'),
	('C000027', 'M000027', 'Paid'),
	('C000028', 'M000028', DEFAULT),
	('C000029', 'M000029', 'Paid'),
	('C000030', 'M000030', 'Paid'),

	('C000031', 'M000030', DEFAULT),
	('C000032', 'M000030', 'Paid'),
	('C000033', 'M000030', 'Paid');

CREATE TABLE Feedback_Class (
	Rating_Score INT,
	Rating_Level NVARCHAR(22) NOT NULL,
	PRIMARY KEY (Rating_Score),
	CHECK (Rating_Score > 0 AND Rating_Score < 11)
);

INSERT INTO Feedback_Class 
VALUES
	('1', 'Extremely Dissatisfied'),
	('2', 'Very Dissatisfied'),
	('3', 'Dissatisfied'),
	('4', 'Below Average'),
	('5', 'Average'),
	('6', 'Above Average'),
	('7', 'Good'),
	('8', 'Satisfied'),
	('9', 'Very Satisfied'),
	('10', 'Extremely Satisfied');

CREATE TABLE Shopping_Cart_Item(
	ItemID NCHAR(7),
	CartID NCHAR(7),
	BookID NCHAR(7),
	Item_Quantity INT NOT NULL,
	PRIMARY KEY (ItemID),
	FOREIGN KEY (CartID) REFERENCES Shopping_Cart(CartID),
	FOREIGN KEY (BookID) REFERENCES Bookstore(BookID)
);

INSERT INTO Shopping_Cart_Item
VALUES
	('I000001', 'C000001', 'B000001', '1'),
	('I000002', 'C000002', 'B000002', '2'),
	('I000003', 'C000003', 'B000003', '3'),
	('I000004', 'C000004', 'B000004', '4'),
	('I000005', 'C000005', 'B000005', '1'),
	('I000006', 'C000006', 'B000006', '1'),
	('I000007', 'C000007', 'B000007', '1'),
	('I000008', 'C000008', 'B000008', '1'),
	('I000009', 'C000009', 'B000009', '1'),
	('I000010', 'C000010', 'B000010', '1'),
									  
	('I000011', 'C000011', 'B000011', '1'),
	('I000012', 'C000012', 'B000012', '1'),
	('I000013', 'C000013', 'B000013', '1'),
	('I000014', 'C000014', 'B000014', '1'),
	('I000015', 'C000015', 'B000015', '1'),
	('I000016', 'C000016', 'B000016', '1'),
	('I000017', 'C000017', 'B000017', '1'),
	('I000018', 'C000018', 'B000018', '1'),
	('I000019', 'C000019', 'B000019', '1'),
	('I000020', 'C000020', 'B000020', '1'),
									  
	('I000021', 'C000021', 'B000021', '1'),
	('I000022', 'C000022', 'B000022', '1'),
	('I000023', 'C000023', 'B000023', '1'),
	('I000024', 'C000024', 'B000024', '1'),
	('I000025', 'C000025', 'B000025', '1'),
	('I000026', 'C000026', 'B000001', '1'),
	('I000027', 'C000027', 'B000002', '2'),
	('I000028', 'C000030', 'B000003', '1'),
	('I000029', 'C000029', 'B000004', '2'),
	('I000030', 'C000030', 'B000001', '2'),

	('I000031', 'C000031', 'B000001', '2'),
	('I000032', 'C000032', 'B000002', '3'),
	('I000033', 'C000033', 'B000003', '1'),
	('I000034', 'C000029', 'B000004', '1');

CREATE TABLE Feedback(
	FeedbackID NCHAR(7),
	MemberID NCHAR(7),
	ItemID NCHAR(7),
	Rating_Score INT NOT NULL,
	Short_Text_Comment NVARCHAR(50),
	PRIMARY KEY (FeedbackID),
	FOREIGN KEY (MemberID) REFERENCES Member(MemberID),
	FOREIGN KEY (ItemID) REFERENCES Shopping_Cart_Item(ItemID),
	FOREIGN KEY (Rating_Score) REFERENCES Feedback_Class(Rating_Score),
	CHECK (Rating_Score > 0 AND Rating_Score < 11)
);


INSERT INTO Feedback
VALUES
	('F000001', 'M000001', 'I000001', '10', 'Best Book Purchase Ever'),
	('F000002', 'M000002', 'I000002', '9', 'I Am Very Satisfied'),
	('F000003', 'M000003', 'I000003', '8', NULL),
	('F000004', 'M000004', 'I000004', '7', 'Good Book'),
	('F000005', 'M000005', 'I000005', '6', 'Not Bad'),
	('F000006', 'M000006', 'I000006', '5', 'I Would Say This Book Is Mediocre'),
	('F000007', 'M000007', 'I000007', '4', 'A Little Off From Expectation'),
	('F000008', 'M000008', 'I000008', '3', 'Just Bad'),
	('F000009', 'M000009', 'I000009', '2', 'One of the worse I Have Read'),
	('F000010', 'M000010', 'I000010', '1', 'Definitely The Worst'),
									  
	('F000011', 'M000011', 'I000011', '5', 'I Would Say This Book Is Mediocre'),
	('F000012', 'M000012', 'I000012', '10', 'Best Book Purchase Ever'),
	('F000013', 'M000013', 'I000013', '7', 'Good Book'),
	('F000014', 'M000014', 'I000014', '8', NULL),
	('F000015', 'M000015', 'I000015', '2', 'One of the worse I Have Read'),
	('F000016', 'M000016', 'I000016', '8', 'I Am Satisfied'),
	('F000017', 'M000017', 'I000017', '8', 'Not Bad'),
	('F000018', 'M000018', 'I000018', '8', 'I Am Satisfied'),
	('F000019', 'M000019', 'I000019', '7', 'Good Book'),
	('F000020', 'M000020', 'I000020', '8', NULL),
									  
	('F000021', 'M000021', 'I000021', '8', NULL),
	('F000022', 'M000022', 'I000022', '10', 'Best Book Purchase Ever.'),
	('F000023', 'M000023', 'I000023', '8', 'I Am Satisfied'),
	('F000024', 'M000024', 'I000024', '2', 'One of the worse I Have Read'),
	('F000025', 'M000025', 'I000025', '8', 'I Am Satisfied'),
	('F000026', 'M000026', 'I000026', '4', 'A Little Off From Expectation'),
	('F000027', 'M000027', 'I000027', '8', NULL),
	('F000028', 'M000030', 'I000028', '8', 'I Am Satisfied'),
	('F000029', 'M000029', 'I000029', '5', 'I Would Say This Book Is Mediocre'),
	('F000030', 'M000030', 'I000030', '8', 'I Am Satisfied'),
									  
	('F000031', 'M000030', 'I000031', '8', 'I Am Satisfied'),
	('F000032', 'M000030', 'I000032', '10', 'Best Book Purchase Ever'),
	('F000033', 'M000030', 'I000033', '2', 'One of the worse I Have Read'),
	('F000034', 'M000029', 'I000034', '5', 'I Would Say This Book Is Mediocre');

CREATE TABLE Payment_Detail(
	PaymentID NCHAR(7),
	CartID NCHAR(7),
	Date_Purchased DATE NOT NULL,
	Cart_Delivery_Status NVARCHAR(11) DEFAULT 'NOT Arrived',
	Date_Arrived DATE,
	PRIMARY KEY (PaymentID),
	FOREIGN KEY (CartID) REFERENCES Shopping_Cart(CartID)
	)

INSERT INTO Payment_Detail
VALUES
	('P000001', 'C000001', '2022-01-28', DEFAULT, NULL),
	('P000002', 'C000002', '2022-01-28', 'Arrived', '2022-01-31'),
	('P000003', 'C000003', '2022-01-28', 'Arrived', '2022-02-01'),
	('P000004', 'C000004', '2022-02-08', 'Arrived', '2022-02-11'),
	('P000005', 'C000005', '2022-02-17', 'Arrived', '2022-02-21'),
	('P000006', 'C000006', '2022-02-21', 'Arrived', '2022-02-25'),
	('P000007', 'C000007', '2022-02-23', 'Arrived', '2022-02-25'),
	('P000008', 'C000008', '2022-02-28', DEFAULT, NULL),
	('P000009', 'C000009', '2022-03-08', 'Arrived', '2022-03-10'),
	('P000010', 'C000010', '2022-03-12', 'Arrived', '2022-03-15'),
				 		   				 
	('P000011', 'C000011', '2022-03-12', 'Arrived', '2022-03-16'),
	('P000012', 'C000012', '2022-03-19', 'Arrived', '2022-03-22'),
	('P000013', 'C000013', '2022-03-27', 'Arrived', '2022-03-30'),
	('P000014', 'C000014', '2022-03-28', 'Arrived', '2022-03-31'),
	('P000015', 'C000015', '2022-03-31', DEFAULT, NULL),
	('P000016', 'C000016', '2022-04-03', 'Arrived', '2022-04-04'),
	('P000017', 'C000017', '2022-04-04', 'Arrived', '2022-04-05'),
	('P000018', 'C000018', '2022-04-05', 'Arrived', '2022-04-06'),
	('P000019', 'C000019', '2022-04-17', 'Arrived', '2022-04-20'),
	('P000020', 'C000020', '2022-04-23', 'Arrived', '2022-04-26'),
				 		   				 
	('P000021', 'C000021', '2022-04-26', 'Arrived', '2022-04-28'),
	('P000022', 'C000022', '2022-05-16', DEFAULT, NULL),
	('P000023', 'C000023', '2022-05-17', 'Arrived', '2022-05-21'),
	('P000024', 'C000024', '2022-05-23', 'Arrived', '2022-05-25'),
	('P000025', 'C000025', '2022-05-29', 'Arrived', '2022-05-31'),
	('P000026', 'C000026', '2022-05-29', 'Arrived', '2022-05-31'),
	('P000027', 'C000027', '2022-05-29', 'Arrived', '2022-05-31'),
	('P000028', 'C000029', '2022-05-29', 'Arrived', '2022-06-02'),
	('P000029', 'C000030', '2022-05-30', 'Arrived', '2022-06-03'),
	('P000030', 'C000032', '2022-05-30', DEFAULT, NULL),
	('P000031', 'C000033', '2022-05-31', DEFAULT, NULL);

SELECT *FROM Publisher;
SELECT *FROM Bookstore;
SELECT *FROM Bookstore_Order;
SELECT *FROM Member;
SELECT *FROM Shopping_Cart;
SELECT *FROM Feedback;
SELECT *FROM Shopping_Cart_Item;
SELECT *FROM Feedback_Class;
SELECT *FROM Payment_Detail;