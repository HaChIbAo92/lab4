declare @Thongke table (PHG int, LTB float)
insert into @Thongke
	select PHG, AVG(LUONG) as LTB from NHANVIEN group by PHG;
select TENNV, LUONG, 'Chức vụ' = IIF(LUONG > b.LTB, 'Trưởng phòng','Nhân viên')
	from NHANVIEN a inner join @Thongke b on a.PHG = b.PHG