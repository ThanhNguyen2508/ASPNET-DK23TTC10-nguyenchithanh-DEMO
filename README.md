
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
            2. Trang thôn tin của quản trị viên

Giao diện trang chủ
Trang chủ của website cho phép người dùng chưa đăng nhập có thể xem qua các thông tin của website. Người dùng có thể xem thông tin tổng quát về sản phẩm của website, nếu muốn xem thêm thông tin người dùng có thể đăng nhập tài khoản. Xem các thông tin như ảnh, đánh giá, tin tức của website


 ![image](https://github.com/user-attachments/assets/caa160fa-f0f8-4864-b17d-bb6002e78acb)

1.  Một số trang con
•	Trang đăng ký
Dành cho những người dùng muốn đăng ký tài khoản để có thể xem thêm nhiều thông tin bên website. Người dùng nhập các thông tin như Họ tên, Email, Mật khẩu. Sau đó bấm nút đăng ký để tiến hành đăng ký.


![image](https://github.com/user-attachments/assets/1fc024c4-6ecf-4df5-8ab8-05eff8fe8bde)

 
•	Trang đăng nhập
Sau khi người dùng đăng ký thành công tài khoản, người dùng có thể đăng nhập vào website bằng cách nhập Email và Password đã đăng ký thành công trước đó.
Nếu người dùng nhập sai thông tin đăng nhập Email và Password trang web sẽ hiện thông báo để người dùng nhập lại cho đúng.


![image](https://github.com/user-attachments/assets/36802464-7607-4c34-bad3-db3e99761345)


•	Trang sau khi đăng nhập
Sau khi đăng nhập, website hiển thị thông tin tên người dùng. Người dùng có thể vào xem các sản phẩm của webiste và các tin tức một cách chi tiết.


![image](https://github.com/user-attachments/assets/b5a586b8-0b9a-46b7-ae97-205d28c5c635)


•	Trang sản phẩm cà phê
Người dùng vào trang này có thể xem được danh sách các sản phẩm cà phê của website. Người dùng có thể xem sản phẩm lọc theo danh mục, tìm kiếm theo tên. Website hiển thị lên các thông tin như ảnh, tên, giá tiền, danh mục sản phẩm, lượt xem.


![image](https://github.com/user-attachments/assets/8a58fbf9-d2b8-4271-9099-f7bcd791a3d6)

 
•	Trang chi tiết sản phẩm
Người dùng có thể chọn vào sản phẩm để xem chi tiết về sản phẩm cà phê đó. Hiển thị các thông tin chi tiết như tên, ảnh, giá tiền, danh mục, lượt xem. Và hiển thị số điện thoại để người dùng nếu muốn đặt hàng có thể liên hệ. Các thông tin mô tả chi tiết về cà phê được thể hiện đầy đủ bên dưới.


![image](https://github.com/user-attachments/assets/5f2f3c0b-5065-4537-810e-e91b0baf7e7d)

 
•	Trang tin tức
Người dùng vào trang này có thể xem được danh sách các tin tức của website. Website hiển thị lên các thông tin như ảnh, tiêu đề tin tức, mô tả ngắn, chủ đề tin tức.


![image](https://github.com/user-attachments/assets/b8cd629b-f147-44b3-9ff6-a091f403f61e)

 
•	Trang chi tiết tin tức
Người dùng có thể chọn vào tin tức để xem chi tiết về tin tức đó. Hiển thị các thông tin chi tiết như tiêu, ảnh,chủ đề. Các thông tin nội dung của tin tức được thể hiện đầy đủ bên dưới.


![image](https://github.com/user-attachments/assets/3ee8836b-8198-4662-9659-1c6a29d1275b)

 
2.  Thiết kế giao diện trang quản trị:
  Giao diện trang chủ
Trang chủ quản trị hiển thị các mục chức năng của người quản trị như quản lý cà phê, quản lý danh mục cà phê,quản lý chủ đề, quản lý tin tức. Quản trị viên có thể sử dụng cách chức năng bằng cách bấm vào các mục

.
![image](https://github.com/user-attachments/assets/067154fb-8a09-406f-be57-cb25b53f0e13)


4.  Một số trang con:
•	Trang đăng nhập:

Để vào được trang chủ quản trị, người dùng cần đăng nhập bằng tài khoản quản trị. Nhập thông tin email quản trị và mật khẩu để đăng nhập vào. Nếu đăng nhập bằng tài khoản khác không có quyền quản trị trang web sẽ thông báo hoặc nhập sai mật khẩu của tài khoản quản tr

ị
![image](https://github.com/user-attachments/assets/6f212f57-48c1-4d99-8a12-f5722049285a)


![image](https://github.com/user-attachments/assets/0e9a3538-6b4d-4e4c-bdd1-8f269f243ed9)


•	Trang quản lý cà phê:
Hiển thị danh sách các sản phẩm cà phê của website bao gồm các thông tin như tên, ảnh, giá, mô tả, danh mục. Quản trị có thể thêm mới sản phẩm cà phê bằng cách bấm vào nút Thêm mới, cập nhật sản phẩm bằng cách bấm vào nút Sửa, xóa sản phẩm bằng cách bấm vào nút Xóa.


![image](https://github.com/user-attachments/assets/cc5937c5-803e-4371-8618-0c4d509a23a6)

 

•	Trang quản lý loại cà phê:
Hiển thị danh sách các loại cà phê của website bao gồm các thông tin như tên loại cà phê. Quản trị có thể thêm mới loại cà phê bằng cách bấm vào nút Thêm mới, cập nhật loại cà phê bằng cách bấm vào nút Sửa, xóa loại cà phê bằng cách bấm vào nút Xóa.


![image](https://github.com/user-attachments/assets/99fba276-54e5-40b7-ac36-9f7d4ccf7834)

 
•	Trang quản lý chủ đề:
Hiển thị danh sách các chủ đề của website bao gồm các thông tin như tên chủ đề. Quản trị có thể thêm mới chủ đề bằng cách bấm vào nút Thêm mới, cập nhật chủ đề bằng cách bấm vào nút Sửa, xóa chủ đề bằng cách bấm vào nút Xóa.


![image](https://github.com/user-attachments/assets/c45db464-ecca-4073-b929-a424a95e79ec)

 
•	  Trang quản lí tin tức:
Hiển thị danh sách các tin tức của website bao gồm các thông tin như tiêu đề, ảnh, mô tả, ngày đăng, chủ đề. Quản trị có thể thêm mới tin tức bằng cách bấm vào nút Thêm mới, cập nhật tin tức bằng cách bấm vào nút Sửa, xóa tin tức bằng cách bấm vào nút Xóa.


![image](https://github.com/user-attachments/assets/0b5a3d58-8b5c-4835-8f99-fb6477c92f3c)

 


