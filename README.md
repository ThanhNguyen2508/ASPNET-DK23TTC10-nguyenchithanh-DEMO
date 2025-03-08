
# ASPNET-DK23TTC10-nguyenchithanh-DEMO

Đồ án môn học: Chuyên đề ASP.NET

--- Tiến độ 28/2/2025 

Code giao diện website

--- Tiến độ 01/03/2025

Code giao diện website

--- Tiến độ 02/03,03/03

Thêm tính năng review và code database

--- Tiến độ 03/03/2025

Thiết kết database và code script tạo db

--- Tiến độ 04/03/2025

Update code 

--- Tiến độ 05/03/2025

Update database

--- Tiến độ 06/03/2025

Hoàn thành website

--- Tiến độ 08/03/2025

Cập nhật hoàn chỉnh Readme.md

Bài tập kết thúc môn Chuyên đề ASP.NET Trường Đại Học Trà Vinh

Họ và tên: Nguyễn Chí Thanh

Lớp: DK23TTC10

MSSV: 170123357

  Mô tả: Trang website giới thiệu sẩn phẩm cà phê sử dụng ASP.NET và SQL server
  
         Có các mục lớn của trang web gồm:
         
            1. Trang thông tin của khách hàng
            
            2. Trang thông tin của quản trị viên

1. Thiết kế giao diện trang chủ cho người dùng
   
Trang chủ của website cho phép người dùng chưa đăng nhập có thể xem qua các thông tin của website. Người dùng có thể xem thông tin tổng quát về sản phẩm của website, nếu muốn xem thêm thông tin người dùng có thể đăng nhập tài khoản. Xem các thông tin như ảnh, đánh giá, tin tức của website


![image](https://github.com/user-attachments/assets/a7f2d7bb-2971-4861-a256-ee4f1d6902f1)


Một số trang con

•	Trang đăng ký

Dành cho những người dùng muốn đăng ký tài khoản để có thể xem thêm nhiều thông tin bên website. Người dùng nhập các thông tin như Họ tên, Email, Mật khẩu. Sau đó bấm nút đăng ký để tiến hành đăng ký.


![image](https://github.com/user-attachments/assets/e41265a3-7b6d-4e21-92e6-4596d58f330e)



 
•	Trang đăng nhập

Sau khi người dùng đăng ký thành công tài khoản, người dùng có thể đăng nhập vào website bằng cách nhập Email và Password đã đăng ký thành công trước đó.

Nếu người dùng nhập sai thông tin đăng nhập Email và Password trang web sẽ hiện thông báo để người dùng nhập lại cho đúng.

![image](https://github.com/user-attachments/assets/921413d3-e4ac-4617-86c0-5985b286a725)






•	Trang sau khi đăng nhập

Sau khi đăng nhập, website hiển thị thông tin tên người dùng. Người dùng có thể vào xem các sản phẩm của webiste và các tin tức một cách chi tiết.


![image](https://github.com/user-attachments/assets/f63c9e96-6c87-4e22-8858-4a5e7fab050e)




•	Trang sản phẩm cà phê

Người dùng vào trang này có thể xem được danh sách các sản phẩm cà phê của website. Người dùng có thể xem sản phẩm lọc theo danh mục, tìm kiếm theo tên. Website hiển thị lên các thông tin như ảnh, tên, giá tiền, danh mục sản phẩm, lượt xem.


![image](https://github.com/user-attachments/assets/988c277b-2349-4e02-ba3e-8884a7db3803)


 
•	Trang chi tiết sản phẩm

Người dùng có thể chọn vào sản phẩm để xem chi tiết về sản phẩm cà phê đó. Hiển thị các thông tin chi tiết như tên, ảnh, giá tiền, danh mục, lượt xem. Và hiển thị số điện thoại để người dùng nếu muốn đặt hàng có thể liên hệ. Các thông tin mô tả chi tiết về cà phê được thể hiện đầy đủ bên dưới.

![image](https://github.com/user-attachments/assets/0ba73650-1d35-40ae-a270-3f505b151dd4)


 
•	Trang tin tức

Người dùng vào trang này có thể xem được danh sách các tin tức của website. Website hiển thị lên các thông tin như ảnh, tiêu đề tin tức, mô tả ngắn, chủ đề tin tức.

![image](https://github.com/user-attachments/assets/7d179d48-00b9-4f98-b522-a079d1de2e81)


 
•	Trang chi tiết tin tức

Người dùng có thể chọn vào tin tức để xem chi tiết về tin tức đó. Hiển thị các thông tin chi tiết như tiêu, ảnh,chủ đề. Các thông tin nội dung của tin tức được thể hiện đầy đủ bên dưới.


![image](https://github.com/user-attachments/assets/86ddeb11-1fd1-41bc-aa9a-7ea119df3e34)


 
2.  Thiết kế giao diện trang quản trị
   
  Giao diện trang chủ

Trang chủ quản trị hiển thị các mục chức năng của người quản trị như quản lý cà phê, quản lý danh mục cà phê,quản lý chủ đề, quản lý tin tức. Quản trị viên có thể sử dụng cách chức năng bằng cách bấm vào các mục.


![image](https://github.com/user-attachments/assets/f3dd5f4e-cbf1-41b2-b4d2-3de6c566b8da)


  Một số trang con:
   
•	Trang đăng nhập:

Để vào được trang chủ quản trị, người dùng cần đăng nhập bằng tài khoản quản trị. Nhập thông tin email quản trị và mật khẩu để đăng nhập vào. Nếu đăng nhập bằng tài khoản khác không có quyền quản trị trang web sẽ thông báo hoặc nhập sai mật khẩu của tài khoản quản trị.


![image](https://github.com/user-attachments/assets/e2fe5ad2-905c-40e9-80fd-56c8b4fd0b56)



![image](https://github.com/user-attachments/assets/1f0797c6-012e-4952-9a9f-bca0410fd4d2)



•	Trang quản lý cà phê:
Hiển thị danh sách các sản phẩm cà phê của website bao gồm các thông tin như tên, ảnh, giá, mô tả, danh mục. Quản trị có thể thêm mới sản phẩm cà phê bằng cách bấm vào nút Thêm mới, cập nhật sản phẩm bằng cách bấm vào nút Sửa, xóa sản phẩm bằng cách bấm vào nút Xóa.


![image](https://github.com/user-attachments/assets/32baa87f-8533-4bfc-9efe-b7d3805d0773)


 

•	Trang quản lý loại cà phê:
Hiển thị danh sách các loại cà phê của website bao gồm các thông tin như tên loại cà phê. Quản trị có thể thêm mới loại cà phê bằng cách bấm vào nút Thêm mới, cập nhật loại cà phê bằng cách bấm vào nút Sửa, xóa loại cà phê bằng cách bấm vào nút Xóa.

![image](https://github.com/user-attachments/assets/56776678-21be-4533-90a4-916dec46165a)


 
•	Trang quản lý chủ đề:
Hiển thị danh sách các chủ đề của website bao gồm các thông tin như tên chủ đề. Quản trị có thể thêm mới chủ đề bằng cách bấm vào nút Thêm mới, cập nhật chủ đề bằng cách bấm vào nút Sửa, xóa chủ đề bằng cách bấm vào nút Xóa.

![image](https://github.com/user-attachments/assets/d3b2468b-6154-4c1a-967b-a7f9f65d1401)

 
•	  Trang quản lí tin tức:
Hiển thị danh sách các tin tức của website bao gồm các thông tin như tiêu đề, ảnh, mô tả, ngày đăng, chủ đề. Quản trị có thể thêm mới tin tức bằng cách bấm vào nút Thêm mới, cập nhật tin tức bằng cách bấm vào nút Sửa, xóa tin tức bằng cách bấm vào nút Xóa.

![image](https://github.com/user-attachments/assets/e36d6805-7fe5-4630-8b5d-f987749b2548)


 


