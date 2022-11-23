Select TENNV, LUONG, 'THUẾ' = case
When LUONG between 0 and 25000 then LUONG * 0.1
When LUONG between 25000 and 30000 then LUONG * 0.12
When LUONG between 30000 and 40000 then LUONG * 0.15
When LUONG between 40000 and 50000 then LUONG * 0.2
else LUONG * 0.25
end
from NHANVIEN