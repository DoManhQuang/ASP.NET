

use master
go

create database BTLCSDLWEB
--on primary ( name = 'BTLCSDLWEB_nhom8_dat', filename = 'D:\school\asp.net\BTL_ASPWEB\BTL_ASPWEB\data\sql\BTLCSDLWEB_nhom8_dat.mdf', size = 5mb, maxsize = 20mb, filegrowth = 20%)
--log on ( name = 'BTLCSDLWEB_nhom8_log', filename = 'D:\school\asp.net\BTL_ASPWEB\BTL_ASPWEB\data\sql\BTLCSDLWEB_nhom8_log.ldf', size = 1mb, maxsize = 10mb, filegrowth = 20%)
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
	Tinhtrang nvarchar(255) DEFAULT 'NULL',
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
(N'Bá Hải', '1998-12-21', N'Hà Nội', '0123456789', 'hai@gmail.com', '123456', 1),
(N'Thúy Hường', '1998-12-20', N'Hà Nội', '0123456789', 'huong@gmail.com', '123456', 0),
(N'Phạm Lệ', '1998-07-01', N'Hà Nội', '0123456789', 'le@gmail.com', '123456', 0),
(N'Phan Duyên', '1998-01-09', N'Hà Nội', '0123456789', 'duyen@gmail.com', '123456', 0);

select * from tblTaikhoan


insert into tblThucpham values
('1', N'Cà Tím Dài', '10000', 30, N'Cà tím và những căn bệnh về tim mạch
Các nhà khoa học Mỹ đã tiến hành nghiên cứu và chứng minh rằng: Cà, đặc biệt là cà tím là loại rau củ có lượng vitamin P kỷ lục. Mỗi 1000g cà tím có chứa 7200mg vitaminh P.', 'catimdai.jpg'),
('1', N'Bí Ngô Cô Tiên', '12000', 40, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', 'bingo.jpg'),
('1', N'Dưa Chuột', '15000', 50, N'Khám phá công dụng của dưa chuột. Làm đẹp Tác dụng trị mụn: Dưa chuột thái lát, đắp lên khắp mặt và cổ để trong vòng từ 15 đến 20 phút', 'duachuot.jpg'),
('1', N'Cà Rốt', '12000', 60, N'Mỗi ngày một củ cà rốt Các nhà nghiên cứu thuộc trường ĐH Newcastle-Anh Quốc đã chứng minh rằng những người ăn nhiều cà rốt có thể giảm được tới 40% nguy cơ ung thư so với người bình thường', 'carot.jpg'),
('2', N'Cua', '10000', 30, N'Rau an toàn, không nhiễm kim loại nặng; các loại vi sinh vật gây bệnh; hàm lượng thuốc BVTV dưới ngưỡng quy định của', 'cua.jpg'),
('2', N'Cá chép', '42000', 40, N' Cá chép 1 con khoảng 500g, thông bạch 6 cái, bí xanh 500g, hành trắng, dầu ăn, gia vị vừa đủ. Cá chép bỏ ruột, không đánh vảy, rửa sạch, cho vào nồi cùng với bí xanh,... ', 'cachep.jpg'),
('2', N'Cá quả miền Bắc', '45000', 50, N'Thành phần hoá học: Thịt cá có 18,2% protid, 2,7% lipid, Ca 90mg%, P 240mg%, Fe 2,2mg% và một số chất khác. Cứ 100g thịt cá cung cấp 100 calo..', 'caquab.jpg'),
('2', N'Cá rô phi', '32000', 60, N'Các nhà dinh dưỡng học đã khuyên chúng ta nên ǎn nhiều cá, vì cá dễ tiêu, nhiều chất bổ dưỡng, nhất là đối với trẻ em, người cao tuổi, sản phụ, người bị bệnh tim mạch...,', 'caro.jpg'),
('2', N'Cá trôi loại to', '35000', 30, N' hân dẹp vừa, khá cao. Ngực và bụng tròn, đầu ngắn và rộng. Miệng dưới nằm ngang, hơi uốn cong. Có hai đôi râu 1 đôi râu mõm, 1 đôi râu hàm. .', 'catroi.jpg'),
('2', N'Cua gạch loại to', '20000', 40, N'Lượng protein cao nhưng lại rất dễ tiêu hóa, trung bình 100g thịt cua sẽ chứa khoảng: 12,3g protid, 3,3g lipid, 5.040g canxi, 430mg phốt pho, 4,7mg sắt.', 'cua.jpg'),
('2', N'Cá thu tươi cắt lát', '15000', 50, N'Cá thu là một trong các loại cá biển có thịt thơm ngon dễ ăn và có nguồn dinh dưỡng dồi dào như sắt, phốt pho,...', 'cathutuoi.jpg'),
('2', N'Mực ống', '120000', 60, N'thân hình thon dài, mắt to, tám cánh tay và hai xúc tu. Giống như tất cả các loài chân khác, mực có một cái đầu khác biệt, đối xứng hai bên và lớp phủ', 'mucong.jpg'),
('2', N'Tôm khô (Loại 1)', '18000', 30, N'Tôm khô được chế biến từ tôm tươi, phơi khô hoàn toàn tự nhiên dưới ánh nắng mặt trời hoặc phơi sấy khô....', 'tomkho.jpg'),
('2', N'Ốc nhồi', '12000', 40, N'Ngâm ốc trong nước vo gạo để ốc nhả sạch nhớt khoảng 2 tiếng (bạn có thể thêm vài lát ớt sẽ nhanh sạch hơn)', 'ocnhoi.jpg'),
('2', N'Cá rô phi loại to', '45000', 50, N'Các nhà dinh dưỡng học đã khuyên chúng ta nên ǎn nhiều cá, vì cá dễ tiêu, nhiều chất bổ dưỡng, nhất là đối với trẻ em, người cao tuổi, sản phụ, ...', 'caro.jpg'),
('2', N'Cá trôi loại nhỏ', '32000', 60, N'Thân dẹp vừa, khá cao. Ngực và bụng tròn, đầu ngắn và rộng. Miệng dưới nằm ngang, hơi uốn cong. Có hai đôi râu 1 đôi râu mõm, 1 đôi râu hàm. ', 'catroi.jpg'),
('3', N'Gạo Bắc Hương', '18000', 30, N'1. Thành phần dinh dưỡng: Calori, Protein, Cacbonhydrat, Các nguyên tố vi lượng. Đặc tính: Khi nấu cơm có mùi thơm, dẻo, phù hợp với mọi gia đình. ', 'gaobachuong.jpg'),
('3', N'Gạo Tám Đài Loan', '17000', 40, N'Gạo tám Đài Loan là loại gạo ngon đặc biệt chỉ trồng được một năm một vụ duy nhất,  được nhập khẩu từ Đài Loan.Gạo tám đài loan là loại gạo ngon, hạt gạo trắng...', 'gaotam.jpg'),
('3', N'Gạo Nếp', '15000', 50, N'Gạo Nếp Nương Điện Biên loại Gạo Đặc Sản hạt dài mẩy,mùi thơm nhẹ nhàng. Gạo cho xôi có vị ngọt, dẻo, thơm. Gạo được trồng theo lối canh tác truyền thống từ xưa.', 'gaonep.jpg'),
('3', N'Đỗ xanh bóc vỏ', '12000', 60, N'Hợp chất đường của nó chủ yếu là tinh bột, có thể dùng làm nguyên liệu chủ yếu trong công nghiệp thực phẩm, đặc biệt dùng để làm miến rất tốt, cũng có thể dùng đỗ xanh để nấu cháo,... ', 'doxanh.jpg'),
('3', N'Lạc nhân thường', '10000', 30, N'Nhân lạc có các chất protein, chất dầu béo, amino acid: lecithin, purin, alkaloid, calcium, phosphore, sắt. Chất lysin trong hạt lạc có tác dụng phòng ngừa lão suy sớm và giúp phát triển trí tuệ của trẻ em.', 'lac.jpg'),
('3', N'Đỗ đen', '12000', 40, N'Trước tiên, ngâm đậu cho nở, sau đó đem luộc cho chín, đến khi nước sôi thì vặn nhỏ lửa để liu riu khoảng 15 phút cho đậu chín. Đổ đậu vào cái rổ con, xả nước lạnh, sau đó bắc chảo lên bếp xào với đường cho keo lại, đến khi đảo thấy dính sền sền là được.', 'doxanh.jpg'),
('3', N'Vừng trắng', '15000', 50, N'Vừng là một loại cây nhỏ, thân có rất nhiều lông, cây thảo sống hàng năm, cao khoảng 0,60m. Lá đơn mọc đôi, không có lá kèm, nguyên, có cuống. Hoa trắng hồng mọc đơn độc ở kẽ lá lưỡng tính, không đều có cuống ngắn. Đài hơi hợp ở gốc,', 'vungtrang.jpg'),
('3', N'Miến dong', '22000', 60, N'Bất cứ bà nội trợ nào cũng đều biết đến miến dong, nó được làm từ củ dong riềng, loại miến này không chỉ an toàn cho sức khỏe mà còn có vị thơm ngon, mềm, dai hơn các loại mì khác. Dùng để chế biến nhiều món ăn ngon như miến gà, miến xào,... ', 'mien.jpg'),
('6', N'Cam sành', '15000', 40, N'7 tác dụng của quả camTheo mevabe.net – 5 tháng trước, không chỉ bổ dưỡng, cam còn có nhiều công dụng kỳ diệu khác nếu biết sử dụng nó đúng cách và đúng mục đích.', 'camsanh.jpg'),
('6', N'Thanh Long', '25000', 50, N'Thanh long là một trong những loại trái cây có thành phần dinh dưỡng phù hợp nhất cho việc giữ gìn dáng vóc và sắc đẹp của người phụ nữ. Mỗi 100g thanh long chỉ cung cấp 40kcalo vì trong thanh long thành phần nước chiếm đến 87,6%. ', 'thanhlong.jpg'),
('6', N'Hồng Xiêm', '22000', 60, N'Thanh Long là 1 trong những loại trái cây có thành phần dinh dưỡng phù hợp nhất cho việc giữ gìn dáng vóc và sắc đẹp của người phụ nữ', 'hongxiem.jpg'),
('6', N'Quýt Ngọt', '15000', 30, N'TQuýt có giá trị dinh dưỡng phong phú, trong 100 g thực phẩm hấp thụ, hàm lượng protein của quýt gấp 9 lần lê, hàm lượng canxi gấp 5 lần lê, hàm lượng photpho gấp 5.5 lần lê, vitamin B1 gấp 8 lần, vitamin B2 gấp 3 lần, vitamin C cũng gấp 10 lần', 'quytngot.jpg'),
('6', N'Bưởi Da Xanh', '19000', 40, N'Bưởi cung cấp một lượng lớn chất xơ, có tác dụng chống lại bệnh táo bón, và được xem như một loại "thực phẩm chức năng". Bởi nó có thể ngăn ngừa bệnh lỵ, bệnh tiêu chảy, bệnh viêm ruột non.', 'buoidaxanh.jpg'),
('6', N'Bưởi Năm Roi', '15000', 50, N'Bưởi Năm Roi có vị chua hơi ngọt, nhiều nước, hạt lép, thơm ngon. Vỏ bưởi màu xanh khi chín ngả sang màu hơi vàng trông rất đẹp.', 'buoinamroi.jpg'),
('6', N'Cam Ngọt', '12000', 60, N'Tép cam mọng nước màu vàng, nhiều múi rất thích hợp để ép lấy nước hoặc có thể sử dụng trực tiếp sau khi bóc vỏ.', 'camngot.jpg'),
('6', N'Lê Xanh', '10000', 30, N'Lê Xanh Mỹ có vỏ ngoài đặc trưng màu xanh pha lẫn màu vàng kem, đôi khi xen lẫn màu đỏ, khi chạm vào vỏ bạn có thể thấy vỏ ngoài mịn và bóng. Lê mỹ có hình dáng giống với  lê Corella Úc: thuôn dài, phía trên thì nhỏ còn phía dưới to bầu. ', 'lexanh.jpg'),
('6', N'Đu Đủ Chín', '12000', 40, N'Thành phần trong quả đu đủ chín: Đu đủ chín chứa khoảng 90% nước, 13% đường, không có tinh bột, có nhiều carotenoit acid hữu cơ, vitamin: A, B, C, 0,9% chất béo, xenluloz (0,5%), canxi, photpho, magiê, sắt, thiamin, riboflavin.', 'dudu.jpg'),
('6', N'Xoài Cát Chu', '15000', 50, N'Trái suôn về phần đuôi, mình tròn. Khi xoài chín mùi thơm lừng, vỏ màu vàng nhạt, thịt dai, ít xơ, màu đậm nhưng không ngả cam như xoài cát Hòa Lộc', 'xoai.jpg'),
('6', N'Dứa chín', '12000', 60, N'Uống nước thêm chút muối sau khi luyện tập là cách lấy lại thể lực', 'duachin.jpg'),
('7', N'Trứng Gà Ta', '25000', 50, N'Chiên trứng đã luộc cho đến khi chúng chuyển màu nâu vàng. Bỏ món ăn ra ngoài và cắt thành hai nửa. Sắp xếp chúng trên đĩa.', 'trungga.jpg'),
('7', N'Trứng vịt tươi', '22000', 60, N'Đầu hành lá, ớt sùng rửa sạch, đập dập, cắt đôi.Cho vào nồi một ít dầu ăn, hai muỗng đường vào thắng cho đường chuyển mầu vàng cánh gián, cho tiếp đầu hành vào phi thơm, cho thịt vào xào săn, nêm đường, nước mắm, bột ngọt.', 'trungvit.jpg'),
('7', N'Đậu mơ loại vừa', '15000', 30, N'Đậu phụ là một món ăn bình dân, được làm từ đậu tương. Một miếng đậu truyền thống thường có màu trắng, sờ tay thấy mềm, trọng lượng xấp xỉ nửa lạng (~0,05 kg) dạng khối chữ nhật kích thước vào khoảng rộng 4 cm, dài 7 cm và dày hơn 2 cm. ..', 'daumo.jpg'),
('7', N'Đậu mơ bìa to', '19000', 40, N'Đậu phụ là một món ăn bình dân, được làm từ đậu tương. Một miếng đậu truyền thống thường có màu trắng, sờ tay thấy mềm, trọng lượng xấp xỉ nửa lạng (~0,05 kg) dạng khối chữ nhật kích thước vào khoảng rộng 4 cm, dài 7 cm và dày hơn 2 cm.', 'dauto.jpg'),
('7', N'Trứng cút', '15000', 50, N'Mỗi quả trứng cút có trọng lượng khoảng từ 10-12g, nhỏ hơn trứng gà 5 lần.. Nhưng vitamin A trong một quả trứng cút nhiều hơn trong trứng gà 2,5 lần.', 'trungcut.jpg'),
('7', N'Trứng vịt Lộn', '12000', 60, N'Trứng vịt lộn là món ăn rất giàu dinh dưỡng. Nhưng có những người thuộc nhóm "cấm chỉ định" với trứng vịt lộn mà cứ ăn bừa, bổ đâu chẳng thấy lại rước họa vào thân.', 'trunglon.jpg'),
('7', N'Trứng gà công nghiệp', '10000', 30, N'Chiên trứng đã luộc cho đến khi chúng chuyển màu nâu vàng. Bỏ món ăn ra ngoài và cắt thành hai nửa. Sắp xếp chúng trên đĩa.not', 'trunggacn.jpg');

select * from tblThucpham

insert into tblDonhang values
('2', N'Đại Học Công Nghiệp Hà Nội', N'Giao hàng 2h', '10000', '2019-09-19', 'Giao hàng thành công'),
('3', N'Đại Học Công Nghiệp Hà Nội', N'Giao hàng 3h', '22000', '2019-09-19', 'Giao hàng thành công')

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
where tblTaikhoan.MaTK = 6
group by tblTaikhoan.Hoten, tblTaikhoan.Sodienthoai, tblDonhang.Diachinhanhang, tblDonhang.Yeucaukhac, tblDonhang.Ngaymua, tblDonhang.Tongtien
