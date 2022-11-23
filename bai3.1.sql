select*from PHONGBAN;

begin try
	insert into PHONGBAN(TENPHG,MAPHG, TRPHG, NG_NHANCHUC) 
		values('Sản xuất', 7, '009', '2022-11-23');
	print ('Thêm dữ liệu thành công');
end try
begin catch
	print 'Thêm dữ liệu thất bại';
end catch;