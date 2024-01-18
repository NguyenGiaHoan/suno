
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Cấu trúc bảng cho bảng `cms_permissions`
--

DELETE FROM `cms_permissions`;

--
-- Đang đổ dữ liệu cho bảng `cms_permissions`
--


INSERT INTO `cms_permissions` (`id`, `permission_url`, `permission_name`) VALUES
(1, 'backend/dashboard', 'Tổng quan'),
(2, 'backend/order', 'Đơn hàng'),
(3, 'backend/product', 'Hàng Hóa'),
(4, 'backend/customer', 'Khách hàng'),
(5, 'backend/import', 'Nhập kho'),
(6, 'backend/transfer', 'Chuyển kho'),
(7, 'backend/inventory', 'Tồn kho'),
(8, 'backend/revenue', 'Doanh số'),
(9, 'backend/receipt', 'Phiếu thu'),
(10, 'backend/profit', 'Lợi nhuận'),
(11, 'backend/config', 'Thiết lập'),
(12, '', 'Sửa đơn hàng'),
(13, '', 'Xóa đơn hàng'),
(14, '', 'Tạo đơn hàng'),
(15, '', 'Sửa phiếu nhập'),
(16, '', 'Xóa phiếu nhập'),
(17, '', 'Tạo phiếu nhập'),
(18, '', 'phiếu chi'),
(19, '', 'Pos'),
(20, '', 'Sổ quỹ'),
(21, '', 'Xóa phiếu thu'),
(22, '', 'Xóa phiếu chi'),
(23, '', 'Sửa phiếu thu'),
(24, '', 'Sửa phiếu chi'),
(25, '', 'Sửa sản phẩm'),
(26, '', 'Xóa sản phẩm');

-- --------------------------------------------------------

DELETE FROM `cms_stores`;

--
-- Đang đổ dữ liệu cho bảng `cms_stores`
--


INSERT INTO `cms_stores` (`ID`, `store_image`, `store_name`, `store_manager`, `store_phone`, `store_address`, `user_init`, `user_upd`, `created`, `updated`) VALUES
(1, NULL, 'Cửa hàng 1', NULL, NULL, NULL, 1, 1, '2016-05-11 00:00:00', '2018-06-11 19:19:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_templates`
--

DELETE FROM `cms_templates`;

--
-- Đang đổ dữ liệu cho bảng `cms_templates`
--

INSERT INTO `cms_templates` (`id`, `type`, `name`, `content`, `created`, `updated`, `user_upd`) VALUES
(1, 1, 'Hóa đơn bán hàng (Pos)', '<table style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td><span style=\"font-size:16px\">Dương Ngọc Store</span></td>\n		</tr>\n		<tr>\n			<td><span style=\"font-size:16px\">Địa chỉ: 32A, L&ecirc; Hồng Phong, TT Phước An, Kr&ocirc;ng Pắc, Đắk Lắk</span></td>\n		</tr>\n		<tr>\n			<td><span style=\"font-size:16px\">Điện thoại: 0886 31 31 86</span></td>\n		</tr>\n	</tbody>\n</table>\n\n<div style=\"text-align:center\"><strong>H&Oacute;A ĐƠN B&Aacute;N H&Agrave;NG</strong><br />\n<strong>{Ma_Don_Hang}</strong></div>\n\n<div>\n<p><strong>Ng&agrave;y b&aacute;n:</strong> {Ngay_Xuat}<br />\n<strong>Kh&aacute;ch h&agrave;ng:</strong> {Khach_Hang}<br />\n<strong>Địa Chỉ:</strong> {DC_Khach_Hang}<br />\n<strong>ĐT: </strong>{DT_Khach_Hang}</p>\n</div>\n\n<div><span style=\"font-size:11px\">{Chi_Tiet_San_Pham2}</span></div>\n\n<div>&nbsp;</div>\n\n<table style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td style=\"text-align:right\">Tổng tiền h&agrave;ng:</td>\n			<td style=\"text-align:right\">{Tong_Tien_Hang}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">Giảm gi&aacute;:</td>\n			<td style=\"text-align:right\">{Chiec_Khau}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">Kh&aacute;ch đưa</td>\n			<td style=\"text-align:right\">{Khach_Dua}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">C&ograve;n nợ:</td>\n			<td style=\"text-align:right\"><strong>{Con_No}</strong></td>\n		</tr>\n	</tbody>\n</table>\n\n<p style=\"text-align:center\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\n\n<p>Ghi ch&uacute;: {Ghi_Chu}</p>\n\n<table style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td style=\"text-align:center\">Người nhận:</td>\n			<td style=\"text-align:center\">Người b&aacute;n h&agrave;ng</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:center\">{Khach_Hang}</td>\n			<td style=\"text-align:center\">{Thu_Ngan}</td>\n		</tr>\n	</tbody>\n</table>\n', NULL, '2018-02-21 15:39:14', 1),
(2, 2, 'Hóa đơn bán hàng (order)', '<table style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td>Phong Trần</td>\n		</tr>\n		<tr>\n			<td>Địa chỉ: 422 ba th&aacute;ng hai</td>\n		</tr>\n		<tr>\n			<td>Điện thoại: 0904744142</td>\n		</tr>\n	</tbody>\n</table>\n\n<div style=\"text-align:center\"><strong>H&Oacute;A ĐƠN B&Aacute;N H&Agrave;NG</strong><br />\n<strong>{Ma_Don_Hang}</strong></div>\n\n<div><strong>Ng&agrave;y b&aacute;n:</strong> {Ngay_Xuat}</div>\n\n<div><strong>Kh&aacute;ch h&agrave;ng:</strong> {Khach_Hang}</div>\n\n<div><strong>Thu ng&acirc;n:</strong> {Thu_Ngan}</div>\n\n<p>&nbsp;</p>\n\n<p>{Chi_Tiet_San_Pham}</p>\n\n<table style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td style=\"text-align:right\">Tổng tiền h&agrave;ng:</td>\n			<td style=\"text-align:right\">{Tong_Tien_Hang}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">Giảm gi&aacute;:</td>\n			<td style=\"text-align:right\">{Chiec_Khau}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">Th&agrave;nh tiền:</td>\n			<td style=\"text-align:right\">{Tong_Tien}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">Kh&aacute;ch đưa</td>\n			<td style=\"text-align:right\">{Khach_Dua}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">Tổng thanh to&aacute;n:</td>\n			<td style=\"text-align:right\"><strong>{Con_No}</strong></td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align:left\">Ghi ch&uacute;: {Ghi_Chu}</p>\n\n<div style=\"text-align:left\">Xin cảm ơn v&agrave; hẹn gặp lại!</div>\n', NULL, '2018-01-08 14:19:19', 1),
(3, 3, 'Hóa đơn phiếu nhập', '<table style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td>Địa chỉ: 32A, L&ecirc; Hồng Phong, TT Phước An, Kr&ocirc;ng Pắc, Đắk Lắk</td>\n		</tr>\n		<tr>\n			<td>Điện thoại: 0911 6666 17</td>\n		</tr>\n	</tbody>\n</table>\n\n<div style=\"text-align:center\"><strong>H&Oacute;A ĐƠN NHẬP H&Agrave;NG</strong><br />\n<strong>{Ma_Phieu_Nhap}</strong></div>\n\n<div><strong>Ng&agrave;y nhập:</strong> {Ngay_Nhập}</div>\n\n<div><strong>Nh&agrave; cung cấp:</strong> {Nha_Cung_Cap}</div>\n\n<div><strong>Người nhập:</strong> {Thu_Ngan}</div>\n\n<div>&nbsp;</div>\n\n<p>{Chi_Tiet_San_Pham}</p>\n\n<table style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td style=\"text-align:right\">Tổng tiền h&agrave;ng:</td>\n			<td style=\"text-align:right\">{Tong_Tien_Hang}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">Giảm gi&aacute;:</td>\n			<td style=\"text-align:right\">{Chiec_Khau}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">Th&agrave;nh tiền:</td>\n			<td style=\"text-align:right\">{Tong_Tien}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">Thanh to&aacute;n</td>\n			<td style=\"text-align:right\">{Tra_Tien}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">C&ograve;n nợ:</td>\n			<td style=\"text-align:right\"><strong>{Con_No}</strong></td>\n		</tr>\n	</tbody>\n</table>\n\n<p>Số tiền bằng chữ: {So_Tien_Bang_Chu}</p>\n\n<p>Ghi ch&uacute;: vui l&ograve;ng lấy h&oacute;a đơn</p>\n\n<div style=\"text-align:left\">Xin cảm ơn v&agrave; hẹn gặp lại!</div>\n', NULL, '2018-03-05 09:53:42', 1),
(4, 4, 'Phiếu chuyển kho', '<p><img alt=\"\" src=\"public\\templates\\images\\logo.jpg\" style=\"height:100%; width:100%\" /></p>\n\n<table style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td><span style=\"font-size:14px\">Sơn Nano smart - Văn ph&ograve;ng đại diện khu vực t&acirc;y nguy&ecirc;n</span></td>\n		</tr>\n		<tr>\n			<td>Địa chỉ: 32A, L&ecirc; Hồng Phong, TT Phước An, Kr&ocirc;ng Pắc, Đắk Lắk</td>\n		</tr>\n		<tr>\n			<td>Điện thoại: 0911 6666 17</td>\n		</tr>\n	</tbody>\n</table>\n\n<div style=\"text-align:center\"><strong>H&Oacute;A ĐƠN B&Aacute;N H&Agrave;NG</strong><br />\n<strong>{Ma_Don_Hang}</strong></div>\n\n<div>\n<p><strong>Ng&agrave;y b&aacute;n:</strong> {Ngay_Xuat}<br />\n<strong>Kh&aacute;ch h&agrave;ng:</strong> {Khach_Hang}<br />\n<strong>Địa Chỉ:</strong> {DC_Khach_Hang}<br />\n<strong>ĐT: </strong>{DT_Khach_Hang}</p>\n</div>\n\n<div>{Chi_Tiet_San_Pham}</div>\n\n<div>&nbsp;</div>\n\n<table style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td style=\"text-align:right\">Tổng tiền h&agrave;ng:</td>\n			<td style=\"text-align:right\">{Tong_Tien_Hang}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">Giảm gi&aacute;:</td>\n			<td style=\"text-align:right\">{Chiec_Khau}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">Đặt cọc</td>\n			<td style=\"text-align:right\">{Khach_Dua}</td>\n		</tr>\n		<tr>\n			<td style=\"text-align:right\">Tổng thanh to&aacute;n:</td>\n			<td style=\"text-align:right\"><strong>{Con_No}</strong></td>\n		</tr>\n	</tbody>\n</table>\n\n<p style=\"text-align:center\">Số tiền bằng chữ: {So_Tien_Bang_Chu}&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\n\n<p style=\"text-align:right\">&nbsp;<strong>NGƯỜI B&Aacute;N H&Agrave;NG</strong></p>\n\n<p style=\"text-align:right\">&nbsp;</p>\n\n<p style=\"text-align:right\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Trần Thị &Aacute;nh Nguyệt</strong></p>\n', NULL, '2017-10-19 11:55:50', 3),
(5, 5, 'Phiếu thu', '<table style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td><span style=\"font-size:14px\">Sơn Nano smart - Văn ph&ograve;ng đại diện khu vực t&acirc;y nguy&ecirc;n</span></td>\n		</tr>\n		<tr>\n			<td>Địa chỉ: 32A, L&ecirc; Hồng Phong, TT Phước An, Kr&ocirc;ng Pắc, Đắk Lắk</td>\n		</tr>\n		<tr>\n			<td>Điện thoại: 0911 6666 17</td>\n		</tr>\n	</tbody>\n</table>\n\n<div style=\"text-align:center\"><strong>Phiếu thu (Li&ecirc;n 1)</strong><br />\n<strong>{Ma_Phieu_Thu}</strong></div>\n\n<div>\n<p><strong>Ng&agrave;y Thu:</strong> {Ngay_Thu}</p>\n\n<p><strong>Người&nbsp;Thu:</strong> {Thu_Ngan}</p>\n</div>\n\n<div><strong>H&igrave;nh Thức Thu:</strong> {Hinh_Thuc_Thu}</div>\n\n<div>&nbsp;</div>\n\n<div><strong>Số Tiền&nbsp;Thu:</strong> {Tong_Tien}</div>\n\n<div>&nbsp;</div>\n\n<div>Số tiền bằng chữ: {So_Tien_Bang_Chu}&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>Ghi Ch&uacute;: {Ghi_Chu}&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>\n<table style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td><span style=\"font-size:14px\">Sơn Nano smart - Văn ph&ograve;ng đại diện khu vực t&acirc;y nguy&ecirc;n</span></td>\n		</tr>\n		<tr>\n			<td>Địa chỉ: 32A, L&ecirc; Hồng Phong, TT Phước An, Kr&ocirc;ng Pắc, Đắk Lắk</td>\n		</tr>\n		<tr>\n			<td>Điện thoại: 0911 6666 17</td>\n		</tr>\n	</tbody>\n</table>\n\n<div style=\"text-align:center\"><strong>Phiếu thu (Li&ecirc;n 2)</strong><br />\n<strong>{Ma_Phieu_Thu}</strong></div>\n\n<div>\n<p><strong>Ng&agrave;y Thu:</strong> {Ngay_Thu}</p>\n\n<p><strong>Người&nbsp;Thu:</strong> {Thu_Ngan}</p>\n</div>\n\n<div><strong>H&igrave;nh Thức Thu:</strong> {Hinh_Thuc_Thu}</div>\n\n<div>&nbsp;</div>\n\n<div><strong>Số Tiền&nbsp;Thu:</strong> {Tong_Tien}</div>\n\n<div>&nbsp;</div>\n\n<div>Số tiền bằng chữ: {So_Tien_Bang_Chu}&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>Ghi Ch&uacute;: {Ghi_Chu}&nbsp;</div>\n\n<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>\n\n<p style=\"text-align:right\">&nbsp;</p>\n\n<p style=\"text-align:right\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\n</div>\n\n<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>\n\n<p style=\"text-align:right\">&nbsp;</p>\n\n<p style=\"text-align:right\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\n', NULL, '2018-01-08 13:35:18', 1),
(6, 6, 'Phiếu chi', '<table style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td><span style=\"font-size:14px\">Sơn Nano smart - Văn ph&ograve;ng đại diện khu vực t&acirc;y nguy&ecirc;n</span></td>\n		</tr>\n		<tr>\n			<td>Địa chỉ: 32A, L&ecirc; Hồng Phong, TT Phước An, Kr&ocirc;ng Pắc, Đắk Lắk</td>\n		</tr>\n		<tr>\n			<td>Điện thoại: 0911 6666 17</td>\n		</tr>\n	</tbody>\n</table>\n\n<div style=\"text-align:center\"><strong>Phiếu Chi (Li&ecirc;n 1)</strong></div>\n\n<div style=\"text-align:center\"><strong>{Ma_Phieu_Chi}</strong></div>\n\n<div>\n<p><strong>Ng&agrave;y Chi:</strong> {Ngay_Chi}</p>\n\n<p><strong>Người Chi:</strong> {Thu_Ngan}</p>\n</div>\n\n<div><strong>H&igrave;nh Thức Chi:</strong> {Hinh_Thuc_Chi}</div>\n\n<div>&nbsp;</div>\n\n<div><strong>Số Tiền Chi:</strong> {Tong_Tien}</div>\n\n<div>&nbsp;</div>\n\n<div>Số tiền bằng chữ: {So_Tien_Bang_Chu}&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>Ghi Ch&uacute;: {Ghi_Chu}&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>\n<table style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td><span style=\"font-size:14px\">Sơn Nano smart - Văn ph&ograve;ng đại diện khu vực t&acirc;y nguy&ecirc;n</span></td>\n		</tr>\n		<tr>\n			<td>Địa chỉ: 32A, L&ecirc; Hồng Phong, TT Phước An, Kr&ocirc;ng Pắc, Đắk Lắk</td>\n		</tr>\n		<tr>\n			<td>Điện thoại: 0911 6666 17</td>\n		</tr>\n	</tbody>\n</table>\n\n<div style=\"text-align:center\"><strong>Phiếu Chi (Li&ecirc;n 2)</strong></div>\n\n<div style=\"text-align:center\"><strong>{Ma_Phieu_Chi}</strong></div>\n\n<div>\n<p><strong>Ng&agrave;y Chi:</strong> {Ngay_Chi}</p>\n\n<p><strong>Người Chi:</strong> {Thu_Ngan}</p>\n</div>\n\n<div><strong>H&igrave;nh Thức Chi:</strong> {Hinh_Thuc_Chi}</div>\n\n<div>&nbsp;</div>\n\n<div><strong>Số Tiền Chi:</strong> {Tong_Tien}</div>\n\n<div>&nbsp;</div>\n\n<div>Số tiền bằng chữ: {So_Tien_Bang_Chu}&nbsp;</div>\n\n<div>&nbsp;</div>\n\n<div>Ghi Ch&uacute;: {Ghi_Chu}&nbsp;</div>\n</div>\n\n<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>\n\n<p style=\"text-align:right\">&nbsp;</p>\n\n<p style=\"text-align:right\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\n', NULL, '2018-01-08 13:35:48', 1),
(7, 7, 'Báo bếp', '<div style=\"text-align:center\"><strong>In b&aacute;o bếp</strong><br />\n<strong>{Ma_Don_Hang}</strong></div>\n\n<div>\n<p><strong>Ng&agrave;y b&aacute;n:</strong> {Ngay_Xuat}</p>\n\n<p><strong>Kh&aacute;ch h&agrave;ng:</strong> {Khach_Hang}</p>\n\n<p><strong>Phục vụ:</strong> {Phuc_Vu}</p>\n\n<p><strong>B&agrave;n:</strong> {Ban}</p>\n</div>\n\n<div><span style=\"font-size:11px\">{Chi_Tiet_San_Pham2}</span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>\n\n<p>Ghi ch&uacute;: {Ghi_Chu}</p>\n', NULL, '2018-03-26 13:04:05', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_transfer`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_users`
--

DELETE FROM `cms_users`;

--
-- Đang đổ dữ liệu cho bảng `cms_users`
--

INSERT INTO `cms_users` (`id`, `username`, `password`, `salt`, `email`, `display_name`, `user_status`, `group_id`, `store_id`, `created`, `updated`, `logined`, `ip_logged`, `recode`, `code_time_out`) VALUES
(1, 'admin', 'f7b140c3d390d302ff341e1c7f58104e', 'Y1QVahERXDncetBJ6tpVpWSKW6qx8254rvhpKzaoPJijbZdVWKxptEcFh8BFFLVuCBGF7', 'admin@gmail.com', 'admin', 1, 1, 1, '2017-09-25 22:53:08', '2018-06-11 19:08:31', '2018-06-11 19:08:31.0', '::1', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms_users_group`
--

DELETE FROM `cms_users_group`;

--
-- Đang đổ dữ liệu cho bảng `cms_users_group`
--

INSERT INTO `cms_users_group` (`id`, `group_name`, `group_permission`, `group_registered`, `group_updated`) VALUES
(1, 'Ban Giám đốc', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"]', '2016-01-22 02:58:58', '2018-05-03 10:38:22'),
(2, 'Quản lý', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"14\",\"15\",\"17\",\"18\",\"19\",\"20\"]', '2016-01-22 03:00:40', '2018-02-09 23:03:54'),
(7, 'Nhân viên', '[\"1\",\"2\",\"3\",\"4\",\"19\"]', '2017-10-28 20:15:57', '2018-03-27 14:36:45');

