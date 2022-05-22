/*8.Trigger:
a)Mỗi ngày mỗi khách hàng chỉ đặt tối đa 2 đơn hàng.*/
alter trigger tr_datToiDa2
on DonDH
after insert
as
begin
	declare @maKH varchar(10)
	declare @soDonHT int

	set @maKH = (select makh from inserted)

	set @soDonHT = (select count(*)
					from DONDH
					where MAKH = @maKH
					group by MAKH)
	
	if @soDonHT>2
		begin
			raiserror ('Mỗi ngày mỗi khách hàng chỉ đặt tối đa 2 đơn hàng!',15,1)
			rollback transaction
		end
end
/*b)Mỗi đơn đặt hàng có tổng số lượng sản phẩm không quá 100.*/
alter trigger tr_SLKhongQua100
on CTDDH
after insert
as
begin
	declare @soDDH varchar(10)
	declare @soLuong int

	set @soDDH = (select SoDDH from inserted)

	set @soLuong =(select sum(SOLUONG)
					from CTDDH
					where SODDH = @soDDH
					)
	if @soLuong>100
		begin
			raiserror('Mỗi đơn đặt hàng có tổng số lượng sản phẩm không quá 100',15,1)
			rollback transaction
		end
end

/*c)Đảm bảo rằng mỗi sản phẩm không bị lỗ hơn 50%.*/
alter trigger tr_DamBaoKhongLonHon50
on SanPham
after update
as
begin
	declare @maSP varchar(50)
	declare @giaBan int
	declare @giaSanXuat int

	if UPDATE(Gia)
		begin
			set @maSP = (select maSP from inserted)
			set @giaBan = (select gia from inserted)
			/*if @giaBan = NULL
				return*/
			set @giaSanXuat = (select sum(LAM.SL*NGUYENLIEU.GIA)
							   from LAM
							   inner join NGUYENLIEU on LAM.MANL = NGUYENLIEU.MANL
							   where LAM.MASP = @maSP
							   group by LAM.MASP)

			if (1.0*(@giaSanXuat - @giaBan))/(1.0*@giaSanXuat) > 0.5
				begin
					raiserror(N'Đảm bảo rằng mỗi sản phẩm không bị lỗ hơn 50%',15,1)
					rollback transaction
				end
		end
	
end

drop  trigger tr_DamBaoKhongLonHon50

/*d)Thêm cột “DANH_GIA” vào bảng KHACHHANG. Viết trigger thực hiện đánh giá khách hàng như sau:
-Số đơn hàng >= 10: Khách hàng “VIP”
-Số đơn hàng >= 7 và < 10: Khách hàng “MEM”
-Số đơn hàng > 4 và < 7: Khách hàng “FRIEND”*/
alter table KHACHHANG
add DanhGia varchar(10)

alter trigger tr_DanhGia
on DonDH
after insert
as
begin
	declare @maKH varchar(10)
	declare @soLuong int
	declare @danhGia varchar(10)

	set @maKH = (select makh from inserted)

	set @soLuong = (select count(*) from DONDH where MAKH = @maKH group by MAKH)
	if(@soLuong>=10)
		set @danhGia = 'VIP'
	else if(@soLuong>=7 and @soLuong<10)
		set @danhGia = 'MEM'
	else if(@soLuong>4 and @soLuong<7)
		set @danhGia = 'FRIEND'
	update KHACHHANG
	set DanhGia = @danhGia
	where MAKH = @maKH
end