select iif (PHAI = 'Nam', 'Mr ', 'Ms ') + [TENNV] as 'HOTEN'
from NHANVIEN
