USE master
GO
CREATE DATABASE J5Shop2;
GO
USE J5Shop2;
GO
CREATE TABLE Accounts (
	username varchar(50) NOT NULL,
	password varchar(50) NOT NULL,
	fullname nvarchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	activated bit NOT NULL,
	admin bit NOT NULL,
	img varchar(50) NULL,
	token varchar(50) NULL,
	CONSTRAINT PK_Accounts PRIMARY KEY CLUSTERED (username)
)
GO
CREATE TABLE Categories (
	id int IDENTITY(1,1) NOT NULL,
	name nvarchar(50) NOT NULL,
	CONSTRAINT PK_Categories PRIMARY KEY CLUSTERED (id)
)
GO
CREATE TABLE OrderDetails (
	id int IDENTITY(1,1) NOT NULL,
	price float NOT NULL,
	quantity int NOT NULL,
	orderid int NOT NULL,
	productid int NOT NULL,
	CONSTRAINT PK_OrderDetails PRIMARY KEY CLUSTERED (id)
)
GO
CREATE TABLE Orders (
	id int IDENTITY(1,1) NOT NULL,
	address nvarchar(50) NOT NULL,
	phone varchar(11) NOT NULL,
	createdate date NOT NULL,
	username varchar(50) NOT NULL,
	CONSTRAINT PK_Orders PRIMARY KEY CLUSTERED (id)
)
GO
CREATE TABLE Products (
	id int IDENTITY(1,1) NOT NULL,
	name nvarchar(50) NOT NULL,
	price float NOT NULL,
	createdate date NOT NULL,
	available bit NOT NULL,
	img varchar(50) NULL,
	description nvarchar(255) NULL,
	categoryid int NOT NULL,
	CONSTRAINT PK_Products PRIMARY KEY CLUSTERED (id)
)
GO
-- Thêm người dùng
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('admin', '123', N'Võ Tín Nghĩa', 'nghiavtpd07535@fpt.edu.vn', 1, 1, 'cherry.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('hoangnhi', '123123', N'Hoàng Nhi', 'hoangnhi@gmail.com', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('thiennhat', '123456', N'Thiên Nhật', 'thiennhat@gmail.com', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('nguyennv', '111111', N'HNguyễn Văn Nguyên', 'nguyennv@gmail.com', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('dstewart', '2le6pU', N'Thoa Bùi', 'thoabuip@yandex.ru', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('duyplus', '123', N'Nguyễn Hoàng Duy', 'duyplusdz@gmail.com', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('gsipper9', 'sfj6qZ', N'Mỹ Cát', 'mycat421@yahoo.com', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('hfoucar5', 'jLQJfD', N'Ân Hình', 'anhinhh@tiny.net', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('hgoomesh', 'SXgySV', N'Kiên Ninh', 'kiemniinh@gmail.com', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('hnorgan8', N'AtoQdc', N'Trúc Vi', 'vitruccc@hotmail.com', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('kpenritg', 'oc6tcL', N'Quang Khương', 'qkhung55@gmail.com', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('mlovejoy3', 'wosJl8', N'Thái Cung', 'thaicng1@vinaa.com', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('ngerdez4', 'OHIvre', N'Thọ Thiều', 'thothiue@zume.it', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('pcaelnic', 'XteWiS', N'Quyền Chung', 'qchungn@hotmai.de', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('pcowell1', 'aycIan', N'Nhã Đan', 'nhdam512@yahoo.com', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('pdolane', 'VG0edk', N'Vỹ Quản', 'quanvyyy@gmail.com', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('rfealeyi', 'Fcyh7n', N'Hải Tiêu', 'tieuhaii@vinaora.com', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('tgilletb', 'avBwbS', N'Thành Thịnh', 'ththinh12@yahoo.com', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('tjerach7', 'aIb7Od', N'Phúc Thôi', 'phucth0i@hotmai.org', 1, 0, 'noavt.png', '')
INSERT Accounts (username, password, fullname, email, activated, admin, img, token) VALUES ('vyahin6', 'qMe6Uq', N'Trưởng Bùi', 'truongb22@gmail.com', 1, 0, 'noavt.png', '')
-- Thêm chuyên mục
SET IDENTITY_INSERT Categories ON
INSERT INTO Categories (id, name) VALUES (1, N'Clothing')
INSERT INTO Categories (id, name) VALUES (2, N'Activewear')
INSERT INTO Categories (id, name) VALUES (3, N'Sleepwear')
INSERT INTO Categories (id, name) VALUES (4, N'Lingerie')
INSERT INTO Categories (id, name) VALUES (5, N'Swimwear')
INSERT INTO Categories (id, name) VALUES (6, N'Shoes')
INSERT INTO Categories (id, name) VALUES (7, N'Accessories')
SET IDENTITY_INSERT Categories OFF
-- Thêm chi tiết hoá đơn
SET IDENTITY_INSERT OrderDetails ON
INSERT INTO OrderDetails (id, price, quantity, orderid, productid) VALUES (1, 34.29, 3, 1, 4)
INSERT INTO OrderDetails (id, price, quantity, orderid, productid) VALUES (2, 23.59, 1, 1, 2)
INSERT INTO OrderDetails (id, price, quantity, orderid, productid) VALUES (4, 54.79, 5, 2, 10)
INSERT INTO OrderDetails (id, price, quantity, orderid, productid) VALUES (5, 120.19, 1, 2, 15)
INSERT INTO OrderDetails (id, price, quantity, orderid, productid) VALUES (6, 64.39, 2, 3, 20)
INSERT INTO OrderDetails (id, price, quantity, orderid, productid) VALUES (7, 82.99, 3, 3, 22)
SET IDENTITY_INSERT OrderDetails OFF
-- Thêm hoá đơn
SET IDENTITY_INSERT Orders ON
INSERT INTO Orders (id, phone, address, createdate, username) VALUES (1, '0919993715', N'Phan Thiết', CAST('2022-05-28' AS Date), 'admin')
INSERT INTO Orders (id, phone, address, createdate, username) VALUES (2, '0334123456', N'Hồ Chí Minh', CAST('2022-04-12' AS Date), 'duyplus')
INSERT INTO Orders (id, phone, address, createdate, username) VALUES (3, '0983234567', N'Vũng Tàu', CAST('2022-03-15' AS Date), 'pcowell1')
SET IDENTITY_INSERT Orders OFF
-- Thêm sản phẩm
SET IDENTITY_INSERT Products ON
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (1, N'Organic Crew T-Shirt', 19.39, CAST('2022-04-30' AS Date), 1, '1.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 1)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (2, N'Organic Crew T-Shirt', 35.13, CAST('2022-04-30' AS Date), 1, '2.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 4)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (3, N'Relaxed Tapered Jean', 11.55, CAST('2021-02-25' AS Date), 1, '3.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 3)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (4, N'Mayfair Long Sleeve Shirt', 36.78, CAST('2019-09-19' AS Date), 1, '4.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 7)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (5, N'Ribbed Beanie Personalised', 32.51, CAST('2020-09-19' AS Date), 1, '5.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 6)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (6, N'Mens Seamless Trunks', 73.32, CAST('2022-04-30' AS Date), 1, '6.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 5)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (7, N'Hampton Plait Belt', 60.79, CAST('2020-09-19' AS Date), 1, '7.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 4)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (8, N'Micro Crop Tee', 72.62, CAST('2020-04-04' AS Date), 1, '8.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 3)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (9, N'Sorrento Short Sleeve Shirt', 19.35, CAST('2019-04-30' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 3)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (10, N'Vegan Leather Mini Skirt', 17.65, CAST('2020-09-19' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 5)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (11, N'Jacquard Knit Lounge Top', 69.79, CAST('2019-04-30' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 3)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (12, N'Satin Sleep Short', 30.19, CAST('2019-04-30' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 5)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (13, N'Waffle Twist Front Crop', 22.91, CAST('2021-04-30' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 7)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (14, N'Lifestyle Yoga Crop', 60.04, CAST('2022-04-30' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 6)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (15, N'Cropped Sherpa Jacket', 58.25, CAST('2021-04-30' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 6)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (16, N'Relaxed Tapered Jean', 50.69, CAST('2019-04-30' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 2)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (17, N'Micro Crop Tee', 44.99, CAST('2019-04-30' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 4)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (18, N'Mayfair Long Sleeve Shirt', 16.48, CAST('2021-05-26' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 7)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (19, N'Amy Mini Shoulder Bag', 41.93, CAST('2019-05-26' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 4)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (20, N'Active Bomber Jacket', 14, CAST('2021-05-26' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 2)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (21, N'Vegan Leather Mini Skirt', 21.24, CAST('2019-05-26' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 1)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (22, N'Lexi Cross Body Bag', 56.31, CAST('2019-05-26' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 4)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (23, N'Vegan Leather Mini Skirt', 36.79, CAST('2022-03-04' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 4)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (24, N'Boyfriend Fit Graphic Tee', 58.35, CAST('2019-03-22' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 3)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (25, N'Scout Cargo Pant', 65.52, CAST('2022-03-04' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 7)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (26, N'Waffle Full Length Tight', 35.35, CAST('2022-03-04' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 2)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (27, N'Lexi Cross Body Bag', 66.46, CAST('2020-02-25' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 2)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (28, N'Micro Crop Tee', 45.47, CAST('2019-03-22' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 2)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (29, N'Amy Mini Shoulder Bag', 69.23, CAST('2020-02-25' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 5)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (30, N'Satin Sleep Short', 58.27, CAST('2021-02-25' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 3)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (31, N'Micro Crop Tee', 14.21, CAST('2020-02-25' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 1)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (32, N'Plie Grip Studio Sock', 15.57, CAST('2021-02-25' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 5)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (33, N'Amy Mini Shoulder Bag', 43.85, CAST('2020-09-19' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 7)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (34, N'Square Toe Slide Slipper', 26.76, CAST('2019-09-19' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 7)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (35, N'Plie Grip Studio Sock', 27.53, CAST('2020-02-25' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 3)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (36, N'Take Control Waisted Bikini', 67.93, CAST('2020-02-25' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 3)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (37, N'Seamless High Cut G String Brief', 60.17, CAST('2020-02-25' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 5)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (38, N'Square Toe Slide Slipper', 76.89, CAST('2019-09-19' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 2)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (39, N'Organic Crew T-Shirt', 12.11, CAST('2019-03-22' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 5)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (40, N'Active Bomber Jacket', 74.48, CAST('2019-09-19' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 2)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (41, N'Scout Cargo Pant', 27.91, CAST('2019-03-22' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 4)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (42, N'Lexi Cross Body Bag', 33.05, CAST('2020-04-04' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 5)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (43, N'Body Surf Wetsuit Boyleg', 64.13, CAST('2020-04-04' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 7)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (44, N'Square Toe Slide Slipper', 24.17, CAST('2019-09-19' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 3)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (45, N'Satin Sleep Short', 67.66, CAST('2019-09-19' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 3)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (46, N'Organic Crew T-Shirt', 47.89, CAST('2020-09-19' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 6)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (47, N'Brodie Flatform Loafer Mule', 36.95, CAST('2022-04-30' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 7)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (48, N'Organic Crew T-Shirt', 45.4, CAST('2021-02-25' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 3)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (49, N'Seamless High Cut G String Brief', 46.35, CAST('2020-04-04' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 4)
INSERT Products (id, name, price, createdate, available, img, description, categoryid) VALUES (50, N'Amy Mini Shoulder Bag', 35.42, CAST('2021-02-25' AS Date), 1, 'noavt.png', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ut labore et magna aliqua.', 3)
SET IDENTITY_INSERT Products OFF
GO
ALTER TABLE OrderDetails  WITH CHECK ADD CONSTRAINT FK_OrderDetails_Products FOREIGN KEY(productid)
REFERENCES Products (id) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE OrderDetails  WITH CHECK ADD CONSTRAINT FK_OrderDetails_Orders FOREIGN KEY(orderid)
REFERENCES Orders (id) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE OrderDetails CHECK CONSTRAINT FK_OrderDetails_Orders
GO
ALTER TABLE Orders  WITH CHECK ADD CONSTRAINT FK_Orders_Accounts FOREIGN KEY(username)
REFERENCES Accounts (username) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE Orders CHECK CONSTRAINT FK_Orders_Accounts
GO
ALTER TABLE Products  WITH CHECK ADD CONSTRAINT FK_Products_Categories FOREIGN KEY(categoryid)
REFERENCES Categories (id) ON UPDATE CASCADE ON DELETE CASCADE
GO