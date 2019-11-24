/*
	Các trạng thái đơn hàng :
	- Chờ xác nhận đơn hàng
	- Đang đi lấy hàng về kho
	- Đang vận chuyển
	- Đã vận chuyển đến kho
	- Sẵn hàng giao hàng
	- Giao hàng thành công
*/
ALTER TABLE tblDonhang
ADD Tinhtrang nvarchar(255) DEFAULT 'NULL'