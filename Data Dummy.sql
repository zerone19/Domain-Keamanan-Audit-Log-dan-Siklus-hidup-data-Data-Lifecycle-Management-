// Tabel Role
INSERT INTO ROLE (role_id, role_name)
VALUES
(1,'Staf Lapangan'),
(2,'Manajer'),
(3,'Auditor');

// Tabel BRANCH
INSERT INTO BRANCH (branch_name, city, address)
VALUES
('SpaceHub Kendari','Kendari','Jl. Ahmad Yani No.1'),
('SpaceHub Kolaka','Kolaka','Jl. Pemuda No.10'),
('SpaceHub Makassar','Makassar','Jl. Sudirman No.5'),
('SpaceHub Jakarta','Jakarta','Jl. Gatot Subroto'),
('SpaceHub Bandung','Bandung','Jl. Asia Afrika'),
('SpaceHub Surabaya','Surabaya','Jl. Basuki Rahmat'),
('SpaceHub Yogyakarta','Yogyakarta','Jl. Malioboro'),
('SpaceHub Bali','Denpasar','Jl. Teuku Umar'),
('SpaceHub Medan','Medan','Jl. Sisingamangaraja'),
('SpaceHub Palu','Palu','Jl. Moh Hatta'),
('SpaceHub Manado','Manado','Jl. Sam Ratulangi'),
('SpaceHub Gorontalo','Gorontalo','Jl. Nani Wartabone'),
('SpaceHub Ambon','Ambon','Jl. Pattimura'),
('SpaceHub Jayapura','Jayapura','Jl. Ahmad Yani'),
('SpaceHub Sorong','Sorong','Jl. Basuki Rahmat');

//Tabel USER_ACCOUNT (20 Data)
INSERT INTO USER_ACCOUNT
(username,password_hash,full_name,role_id)
VALUES
('user01','hash01','Ahmad Asri',2),
('user02','hash02','Budi Santoso',1),
('user03','hash03','Rina Putri',1),
('user04','hash04','Dewi Lestari',3),
('user05','hash05','Fajar Hidayat',1),
('user06','hash06','Nanda Saputra',1),
('user07','hash07','Yusuf Akbar',2),
('user08','hash08','Taufik Rahman',1),
('user09','hash09','Maya Sari',3),
('user10','hash10','Ayu Wulandari',1),
('user11','hash11','Rizky Pratama',1),
('user12','hash12','Dian Permata',1),
('user13','hash13','Andi Saputra',2),
('user14','hash14','Lukman Hakim',1),
('user15','hash15','Siti Rahma',1),
('user16','hash16','Wawan Setiawan',3),
('user17','hash17','Ilham Nur',1),
('user18','hash18','Rudi Hartono',1),
('user19','hash19','Putri Maharani',2),
('user20','hash20','Rina Marlina',1);

// Tabel IOT_DEVICE (20 Data)
INSERT INTO IOT_DEVICE
(branch_id,device_name,installation_date,status)
VALUES
(1,'RFID-001','2025-01-01','AKTIF'),
(2,'RFID-002','2025-01-02','AKTIF'),
(3,'RFID-003','2025-01-03','AKTIF'),
(4,'RFID-004','2025-01-04','AKTIF'),
(5,'RFID-005','2025-01-05','AKTIF'),
(6,'RFID-006','2025-01-06','AKTIF'),
(7,'RFID-007','2025-01-07','AKTIF'),
(8,'RFID-008','2025-01-08','PERBAIKAN'),
(9,'RFID-009','2025-01-09','AKTIF'),
(10,'RFID-010','2025-01-10','AKTIF'),
(11,'RFID-011','2025-01-11','AKTIF'),
(12,'RFID-012','2025-01-12','AKTIF'),
(13,'RFID-013','2025-01-13','NONAKTIF'),
(14,'RFID-014','2025-01-14','AKTIF'),
(15,'RFID-015','2025-01-15','AKTIF'),
(1,'RFID-016','2025-01-16','AKTIF'),
(2,'RFID-017','2025-01-17','AKTIF'),
(3,'RFID-018','2025-01-18','AKTIF'),
(4,'RFID-019','2025-01-19','AKTIF'),
(5,'RFID-020','2025-01-20','AKTIF');

// Tabel DOOR (20 Data)
INSERT INTO DOOR
(branch_id,device_id,door_name,location)
VALUES
(1,1,'Pintu Utama','Lantai 1'),
(2,2,'Pintu Utama','Lantai 1'),
(3,3,'Pintu Utama','Lantai 1'),
(4,4,'Pintu Utama','Lantai 1'),
(5,5,'Pintu Utama','Lantai 1'),
(6,6,'Pintu Utama','Lantai 1'),
(7,7,'Pintu Utama','Lantai 1'),
(8,8,'Pintu Utama','Lantai 1'),
(9,9,'Pintu Utama','Lantai 1'),
(10,10,'Pintu Utama','Lantai 1'),
(11,11,'Pintu Utama','Lantai 1'),
(12,12,'Pintu Utama','Lantai 1'),
(13,13,'Pintu Utama','Lantai 1'),
(14,14,'Pintu Utama','Lantai 1'),
(15,15,'Pintu Utama','Lantai 1'),
(1,16,'Pintu Belakang','Lantai 2'),
(2,17,'Pintu Belakang','Lantai 2'),
(3,18,'Pintu Belakang','Lantai 2'),
(4,19,'Pintu Belakang','Lantai 2'),
(5,20,'Pintu Belakang','Lantai 2');

// Data Dummy Tabel ACCESS_LOG (20 Data)
INSERT INTO ACCESS_LOG
(user_id, door_id, access_time, access_type)
VALUES
(1,1,'2026-06-01 08:00:00','MASUK'),
(2,1,'2026-06-01 08:05:00','MASUK'),
(3,2,'2026-06-01 08:10:00','MASUK'),
(4,2,'2026-06-01 08:15:00','MASUK'),
(5,3,'2026-06-01 08:20:00','MASUK'),
(1,1,'2026-06-01 17:00:00','KELUAR'),
(2,1,'2026-06-01 17:05:00','KELUAR'),
(3,2,'2026-06-01 17:10:00','KELUAR'),
(4,2,'2026-06-01 17:15:00','KELUAR'),
(5,3,'2026-06-01 17:20:00','KELUAR'),
(1,1,'2026-06-02 08:00:00','MASUK'),
(1,1,'2026-06-02 17:00:00','KELUAR'),
(1,1,'2026-06-03 08:00:00','MASUK'),
(1,1,'2026-06-03 17:00:00','KELUAR'),
(7,4,'2026-06-03 08:10:00','MASUK'),
(7,4,'2026-06-03 17:10:00','KELUAR'),
(13,5,'2026-06-04 08:20:00','MASUK'),
(13,5,'2026-06-04 17:20:00','KELUAR'),
(19,6,'2026-06-04 08:30:00','MASUK'),
(19,6,'2026-06-04 17:30:00','KELUAR');

// Data Dummy Tabel AUDIT_TRAIL (20 Data)
INSERT INTO AUDIT_TRAIL
(user_id, table_name, action_type, old_data, new_data, action_time)
VALUES
(1,'USER_ACCOUNT','UPDATE','Nama Lama','Nama Baru','2026-06-01 09:00:00'),
(1,'DOOR','UPDATE','Pintu A','Pintu Utama','2026-06-01 09:05:00'),
(1,'BRANCH','INSERT',NULL,'Cabang Baru','2026-06-01 09:10:00'),
(2,'ACCESS_LOG','INSERT',NULL,'Data Log','2026-06-01 09:15:00'),
(2,'ACCESS_LOG','INSERT',NULL,'Data Log','2026-06-01 09:20:00'),
(3,'DOOR','UPDATE','Lantai 1','Lantai 2','2026-06-01 09:25:00'),
(4,'USER_ACCOUNT','DELETE','User Lama',NULL,'2026-06-01 09:30:00'),
(5,'IOT_DEVICE','UPDATE','NONAKTIF','AKTIF','2026-06-01 09:35:00'),
(7,'DOOR','UPDATE','Pintu Belakang','Pintu Utama','2026-06-01 09:40:00'),
(7,'ACCESS_LOG','INSERT',NULL,'Log Baru','2026-06-01 09:45:00'),
(7,'ACCESS_LOG','INSERT',NULL,'Log Baru','2026-06-01 09:50:00'),
(7,'ACCESS_LOG','INSERT',NULL,'Log Baru','2026-06-01 09:55:00'),
(13,'BRANCH','UPDATE','Kolaka','Kolaka Timur','2026-06-01 10:00:00'),
(13,'DOOR','UPDATE','Pintu A','Pintu B','2026-06-01 10:05:00'),
(13,'DOOR','UPDATE','Pintu B','Pintu C','2026-06-01 10:10:00'),
(19,'USER_ACCOUNT','UPDATE','Role Lama','Role Baru','2026-06-01 10:15:00'),
(19,'USER_ACCOUNT','UPDATE','Data Lama','Data Baru','2026-06-01 10:20:00'),
(19,'ACCESS_LOG','INSERT',NULL,'Log Baru','2026-06-01 10:25:00'),
(1,'ACCESS_LOG','INSERT',NULL,'Log Baru','2026-06-01 10:30:00'),
(1,'ACCESS_LOG','INSERT',NULL,'Log Baru','2026-06-01 10:35:00');

// Data Dummy Tabel ARCHIVE_ACCESS_LOG (20 Data)
INSERT INTO ARCHIVE_ACCESS_LOG
(original_log_id,user_id,door_id,access_time,access_type,archived_at)
VALUES
(1,1,1,'2025-01-01 08:00:00','MASUK','2026-01-01 00:00:00'),
(2,2,1,'2025-01-01 17:00:00','KELUAR','2026-01-01 00:00:00'),
(3,3,2,'2025-01-02 08:00:00','MASUK','2026-01-02 00:00:00'),
(4,4,2,'2025-01-02 17:00:00','KELUAR','2026-01-02 00:00:00'),
(5,5,3,'2025-01-03 08:00:00','MASUK','2026-01-03 00:00:00'),
(6,6,3,'2025-01-03 17:00:00','KELUAR','2026-01-03 00:00:00'),
(7,7,4,'2025-01-04 08:00:00','MASUK','2026-01-04 00:00:00'),
(8,8,4,'2025-01-04 17:00:00','KELUAR','2026-01-04 00:00:00'),
(9,9,5,'2025-01-05 08:00:00','MASUK','2026-01-05 00:00:00'),
(10,10,5,'2025-01-05 17:00:00','KELUAR','2026-01-05 00:00:00'),
(11,11,6,'2025-01-06 08:00:00','MASUK','2026-01-06 00:00:00'),
(12,12,6,'2025-01-06 17:00:00','KELUAR','2026-01-06 00:00:00'),
(13,13,7,'2025-01-07 08:00:00','MASUK','2026-01-07 00:00:00'),
(14,14,7,'2025-01-07 17:00:00','KELUAR','2026-01-07 00:00:00'),
(15,15,8,'2025-01-08 08:00:00','MASUK','2026-01-08 00:00:00'),
(16,16,8,'2025-01-08 17:00:00','KELUAR','2026-01-08 00:00:00'),
(17,17,9,'2025-01-09 08:00:00','MASUK','2026-01-09 00:00:00'),
(18,18,9,'2025-01-09 17:00:00','KELUAR','2026-01-09 00:00:00'),
(19,19,10,'2025-01-10 08:00:00','MASUK','2026-01-10 00:00:00'),
(20,20,10,'2025-01-10 17:00:00','KELUAR','2026-01-10 00:00:00');

