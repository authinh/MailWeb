setup database mySQL port mạc định: 3306
1. import file web_music.sql trong thư mục project location:tamthanhtinh\
2. sửa file application.ptoperties cho phù hợp cấu hình DB mysql trong máy location: tamthanhtinh\src\main\resources\
setup server jetty port mặc định: 9999 domain: http://tamthanhtinh:9999/
1. sửa port trong file pom.xml dòng thứ 200 location:tamthanhtinh\
setup project, quản lý thư viện: maven
1. tới thư mục root. ấn Shift + chuột trái
2. gõ lệnh: mvn clean install ==> bulding project tải các lib và plugin cần thiết
3. gõ lệnh: mvn eclipse:eclipse ==> tự động cấu hình project cho IDE eclipse
4. gõ lệnh: mvn jetty:run ==> cháy server jetty và project
5. vào eclipse import project vào(nếu thích) không thì dùng notepad++ code cũng đc
6. vào browser địa chỉ http://tamthanhtinh:9999/ vào trang chủ đc tức là đã thành công
