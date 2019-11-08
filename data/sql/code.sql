use master
go

create database BTLCSDLWEB
on primary ( name = 'BTLCSDLWEB_nhom8_dat', filename = 'D:\school\asp.net\BTL_ASPWEB\BTL_ASPWEB\data\sql\BTLCSDLWEB_nhom8_dat.mdf', size = 5mb, maxsize = 20mb, filegrowth = 20%)
log on ( name = 'BTLCSDLWEB_nhom8_log', filename = 'D:\school\asp.net\BTL_ASPWEB\BTL_ASPWEB\data\sql\BTLCSDLWEB_nhom8_log.ldf', size = 1mb, maxsize = 10mb, filegrowth = 20%)
go


use BTLCSDLWEB
go

create table tblLoaiTP
(
	-- Maloai varchar(10) primary key,
	Maloai int IDENTITY(1,1) primary key,
	TenLoai nvarchar(50) not null,
)

create table tblTaikhoan
(
	-- MaTK varchar(10) primary key,
	MaTK int IDENTITY(1,1) primary key,
	Hoten nvarchar(50) not null,
	Ngaysinh date,
	Diachi nvarchar(50) not null,
	Sodienthoai varchar(15) not null,
	email varchar(50) not null,
	Matkhau varchar(30) not null,
	Quyen int not null,
)

create table tblThucpham
(
	-- MaTP varchar(10) primary key,
	MaTP int IDENTITY(1,1) primary key,
	-- Maloai varchar(10) not null,
	Maloai int not null,
	TenTP nvarchar(50) not null,
	Dongia varchar(20) not null,
	Soluongco int,
	Mota nvarchar(500),
	urlAnh varchar(50) not null,
	constraint FK_tblTP foreign key(Maloai) references tblLoaiTP(Maloai)
	on update cascade on delete cascade,
)

create table tblDonhang
(
	-- MaDH varchar(10) primary key,
	MaDH int IDENTITY(1,1) primary key,
	-- MaTK varchar(10),
	MaTK int not null,
	Diachinhanhang nvarchar(100) not null,
	Yeucaukhac nvarchar(100),
	Tongtien varchar(20) not null,
	Ngaymua datetime not null Default CURRENT_TIMESTAMP,
	constraint FK_tblDH foreign key(MaTK) references tblTaikhoan(MaTK)
	on update cascade on delete cascade,
)



create table tblChitietDH
(
	-- MaTP varchar(10) not null,
	-- MaDH varchar(10) not null,
	MaCTDH int IDENTITY(1,1),
	MaTP int not null,
	MaDH int not null,
	Soluongmua int not null,
	constraint PK_CTDH primary key(MaCTDH, MaTP, MaDH),
	constraint FK_tblCTDH1 foreign key(MaTP) references tblThucpham(MaTP)
	on update cascade on delete cascade,
	constraint FK_tblCTDH2 foreign key(MaDH) references tblDonhang(MaDH)
	on update cascade on delete cascade,
)

-- drop table tblChitietDH, tblDonhang, tblThucpham, tblTaikhoan, tblLoaiTP

insert into tblLoaiTP values 
(N'Rau An Toàn'),
(N'Thủy Hải Sản'),
(N'Lương Thực'),
(N'Đặc Sản Vùng Miền'),
(N'Tạp Hóa'),
(N'Hoa Quả'),
(N'Đường Sữa Bánh Kẹo'),
(N'Trứng, Đậu Phụ')


select * from tblLoaiTP

insert into tblTaikhoan values
(N'Mạnh Quang', '1998-12-22', N'Hà Nội', '0123456789', 'quang@gmail.com', '123456', 1),
(N'Bá Hải', '1998-12-21', N'Hà Nội', '0123456789', 'hai@gmail.com', '123456', 2),
(N'Thúy Hường', '1998-12-20', N'Hà Nội', '0123456789', 'huong@gmail.com', '123456', 3)

select * from tblTaikhoan

insert into tblThucpham values
('1', N'Cà Tím Dài', '10000', 30, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', './data/thucpham/photo01.jpg'),
('1', N'Bí Ngô Cô Tiên', '12000', 40, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', './data/thucpham/photo02.jpg'),
('1', N'Dưa Chuột', '15000', 50, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', './data/thucpham/photo03.jpg'),
('1', N'Cà Rốt', '12000', 60, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', './data/thucpham/photo04.jpg'),
('2', N'Cua', '10000', 30, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', './data/thucpham/photo05.jpg'),
('2', N'Cá chép', '42000', 40, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', './data/thucpham/photo06.jpg'),
('2', N'Cá quả miền Bắc', '45000', 50, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', './data/thucpham/photo07.jpg'),
('2', N'Cá rô phi', '32000', 60, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', './data/thucpham/photo08.jpg'),
('2', N'Cá trôi loại to', '35000', 30, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', './data/thucpham/photo09.jpg'),
('2', N'Cua gạch loại to', '20000', 40, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', './data/thucpham/photo10.jpg'),
('2', N'Cá thu tươi cắt lát', '15000', 50, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', './data/thucpham/photo11.jpg'),
('2', N'Mực ống', '120000', 60, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', './data/thucpham/photo12.jpg'),
('2', N'Tôm khô (Loại 1)', '18000', 30, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', './data/thucpham/photo13.jpg'),
('2', N'Ốc nhồi', '12000', 40, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', './data/thucpham/photo14.jpg'),
('2', N'Cá rô phi loại to', '45000', 50, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', './data/thucpham/photo15.jpg'),
('2', N'Cá trôi loại nhỏ', '32000', 60, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', './data/thucpham/photo16.jpg'),
('3', N'Gạo Bắc Hương', '18000', 30, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', './data/thucpham/photo17.jpg'),
('3', N'Gạo Tám Đài Loan', '17000', 40, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', './data/thucpham/photo18.jpg'),
('3', N'Gạo Nếp', '15000', 50, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', './data/thucpham/photo19.jpg'),
('3', N'Đỗ xanh bóc vỏ', '12000', 60, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', './data/thucpham/photo20.jpg'),
('3', N'Lạc nhân thường', '10000', 30, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', './data/thucpham/photo21.jpg'),
('3', N'Đỗ đen', '12000', 40, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dướ quy định của', './data/thucpham/photo22.jpg'),
('3', N'Vừng trắng', '15000', 50, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', './data/thucpham/photo23.jpg'),
('3', N'Miến dong', '22000', 60, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', './data/thucpham/photo24.jpg'),
('6', N'Cam sành', '15000', 40, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', './data/thucpham/photo25.jpg'),
('6', N'Thanh Long', '25000', 50, N'Thanh Long là 1 trong những loại trái cây có thành phần dinh dưỡng phù hợp nhất cho việc giữ gìn dáng vóc và sắc đẹp của người phụ nữ', './data/thucpham/photo26.jpg'),
('6', N'Hồng Xiêm', '22000', 60, N'Thanh Long là 1 trong những loại trái cây có thành phần dinh dưỡng phù hợp nhất cho việc giữ gìn dáng vóc và sắc đẹp của người phụ nữ', './data/thucpham/photo27.jpg'),
('6', N'Quýt Ngọt', '15000', 30, N'Thanh Long là 1 trong những loại trái cây có thành phần dinh dưỡng phù hợp nhất cho việc giữ gìn dáng vóc và sắc đẹp của người phụ nữ', './data/thucpham/photo28.jpg'),
('6', N'Bưởi Da Xanh', '19000', 40, N'Thanh Long là 1 trong những loại trái cây có thành phần dinh dưỡng phù hợp nhất cho việc giữ gìn dáng vóc và sắc đẹp của người phụ nữ', './data/thucpham/photo29.jpg'),
('6', N'Bưởi Năm Roi', '15000', 50, N'Thanh Long là 1 trong những loại trái cây có thành phần dinh dưỡng phù hợp nhất cho việc giữ gìn dáng vóc và sắc đẹp của người phụ nữ', './data/thucpham/photo30.jpg'),
('6', N'Cam Ngọt', '12000', 60, N'Uống nước thêm chút muối sau khi luyện tập là cách lấy lại thể lực', './data/thucpham/photo31.jpg'),
('6', N'Lê Xanh', '10000', 30, N'Uống nước thêm chút muối sau khi luyện tập là cách lấy lại thể lực', './data/thucpham/photo32.jpg'),
('6', N'Đu Đủ Chín', '12000', 40, N'Uống nước thêm chút muối sau khi luyện tập là cách lấy lại thể lực', './data/thucpham/photo33.jpg'),
('6', N'Xoài Cát Chu', '15000', 50, N'Uống nước thêm chút muối sau khi luyện tập là cách lấy lại thể lực', './data/thucpham/photo34.jpg'),
('6', N'Dứa chín', '12000', 60, N'Uống nước thêm chút muối sau khi luyện tập là cách lấy lại thể lực', './data/thucpham/photo35.jpg'),
('7', N'Trứng Gà Ta', '25000', 50, N'Chiên trứng đã luộc cho đến khi chúng chuyển màu nâu vàng. Bỏ món ăn ra ngoài và cắt thành hai nửa. Sắp xếp chúng trên đĩa.', './data/thucpham/photo36.jpg'),
('7', N'Trứng vịt tươi', '22000', 60, N'Chiên trứng đã luộc cho đến khi chúng chuyển màu nâu vàng. Bỏ món ăn ra ngoài và cắt thành hai nửa. Sắp xếp chúng trên đĩa.', './data/thucpham/photo37.jpg'),
('7', N'Đậu mơ loại vừa', '15000', 30, N'Chiên trứng đã luộc cho đến khi chúng chuyển màu nâu vàng. Bỏ món ăn ra ngoài và cắt thành hai nửa. Sắp xếp chúng trên đĩa.', './data/thucpham/photo38.jpg'),
('7', N'Đậu mơ bìa to', '19000', 40, N'Chiên trứng đã luộc cho đến khi chúng chuyển màu nâu vàng. Bỏ món ăn ra ngoài và cắt thành hai nửa. Sắp xếp chúng trên đĩa.', './data/thucpham/photo39.jpg'),
('7', N'Trứng cút', '15000', 50, N'Chiên trứng đã luộc cho đến khi chúng chuyển màu nâu vàng. Bỏ món ăn ra ngoài và cắt thành hai nửa. Sắp xếp chúng trên đĩa.', './data/thucpham/photo40.jpg'),
('7', N'Trứng vịt Lộn', '12000', 60, N'Chiên trứng đã luộc cho đến khi chúng chuyển màu nâu vàng. Bỏ món ăn ra ngoài và cắt thành hai nửa. Sắp xếp chúng trên đĩa.', './data/thucpham/photo41.jpg'),
('7', N'Trứng gà công nghiệp', '10000', 30, N'Chiên trứng đã luộc cho đến khi chúng chuyển màu nâu vàng. Bỏ món ăn ra ngoài và cắt thành hai nửa. Sắp xếp chúng trên đĩa.not', './data/thucpham/photo42.jpg')

select * from tblThucpham


insert into tblDonhang values
('2', N'Đại Học Công Nghiệp Hà Nội', N'Giao hàng 2h', '10000', '2019-09-19'),
('3', N'Đại Học Công Nghiệp Hà Nội', N'Giao hàng 3h', '22000', '2019-09-19')

select * from tblDonhang

insert into tblChitietDH values
('1', '1', '1'),
('1', '2', '1'),
('2', '2', '1')

select * from tblChitietDH

-- test loại thực phẩm 
select * 
from tblLoaiTP inner join tblThucpham on tblLoaiTP.Maloai = tblThucpham.Maloai
where tblLoaiTP.Maloai = 1

-- test giỏ hàng

select Hoten, Sodienthoai, Diachinhanhang, Yeucaukhac, Ngaymua, Tongtien
from tblTaikhoan inner join tblDonhang on tblTaikhoan.MaTK = tblDonhang.MaTK 
				 inner join tblChitietDH on tblChitietDH.MaDH = tblDonhang.MaDH
				 inner join tblThucpham on tblChitietDH.MaTP = tblThucpham.MaTP
where tblTaikhoan.MaTK = 3
group by tblTaikhoan.Hoten, tblTaikhoan.Sodienthoai, tblDonhang.Diachinhanhang, tblDonhang.Yeucaukhac, tblDonhang.Ngaymua, tblDonhang.Tongtien