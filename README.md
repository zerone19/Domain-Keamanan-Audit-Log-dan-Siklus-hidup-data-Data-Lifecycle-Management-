# 🔐 SpaceHub & Co. – Security, Audit Log & Data Lifecycle Management

![Database](https://img.shields.io/badge/DATABASE-MySQL-blue)
![MySQL](https://img.shields.io/badge/MySQL-8.0-blue)
![Universitas](https://img.shields.io/badge/UNIVERSITAS-MUHAMMADIYAH_KENDARI-brightgreen)
![Status](https://img.shields.io/badge/STATUS-COMPLETED-success)

> **Tugas Besar Basis Data**  
> **Domain:** Keamanan, Audit Log, dan Data Lifecycle Management (DLM)

---

# 📖 Daftar Isi

- [Tentang Proyek](#-tentang-proyek)
- [Tim Pengembang](#-tim-pengembang)
- [Informasi Akademik](#-informasi-akademik)
- [Aturan Bisnis](#-aturan-bisnis)
- [Solusi dan Tantangan](#-solusi-dan-tantangan)
- [Teknologi](#-teknologi-yang-digunakan)
- [Cara Menjalankan](#-cara-menjalankan)
- [Struktur Database](#-struktur-database)

---

# 📌 Tentang Proyek

Domain **Kelompok 5** berfokus pada pengelolaan:

- 🔐 Keamanan Sistem
- 📋 Audit Log
- ♻️ Data Lifecycle Management (DLM)

pada lingkungan **SpaceHub & Co.**

Perusahaan menggunakan sistem keamanan berbasis **Internet of Things (IoT)** untuk mengontrol akses masuk dan keluar melalui pintu digital yang tersedia pada setiap cabang.

Aktivitas tersebut menghasilkan data log dalam jumlah yang sangat besar setiap harinya sehingga diperlukan mekanisme pengelolaan data yang efisien, aman, dan mudah diaudit.

Sistem ini dirancang agar mampu:

- Mengelola log akses pengguna
- Mencatat seluruh aktivitas perubahan data (Audit Trail)
- Mengatur hak akses berdasarkan Role (RBAC)
- Melakukan pengarsipan otomatis data lama (Data Lifecycle Management)

---

# 👨‍💻 Tim Pengembang

| No | Nama | NIM |
|----|------|------|
| 1 | Ascjul Nur Hidayah | 22415007 |
| 2 | La Ode Muhammad Asri Mulya | 22415005 |
| 3 | Siti Fajar Hamani | 22415003 |
| 4 | Muhammad Zikril Haq | 22415014 |

---

# 🎓 Informasi Akademik

| Keterangan | Isi |
|------------|-----|
| Mata Kuliah | Basis Data |
| Dosen Pengampu | Kartini Aprilia Pratiwi Nuzry, S.Kom., M.MT. |
| Program Studi | Sistem dan Teknologi Informasi |
| Fakultas | Teknik |
| Universitas | Universitas Muhammadiyah Kendari |
| Tahun | 2026 |

---

# 📑 Aturan Bisnis

## 👤 A. Pengguna Internal

- Setiap pengguna wajib memiliki satu akun.
- Satu akun hanya memiliki satu role.
- Satu role dapat dimiliki banyak pengguna.
- Pengguna hanya dapat melakukan aktivitas sesuai hak aksesnya.

---

## 🛡️ B. Role Pengguna

Sistem memiliki tiga role utama:

| Role | Tugas |
|-------|-------|
| 👷 Staf Lapangan | Mengelola aktivitas operasional harian |
| 👨‍💼 Manajer | Memantau laporan dan aktivitas sistem |
| 🔎 Auditor | Melakukan audit keamanan dan perubahan data |

---

## 🏢 C. Cabang SpaceHub

- Memiliki banyak cabang.
- Setiap cabang mempunyai identitas unik.
- Setiap cabang memiliki perangkat IoT dan pintu digital.

---

## 📡 D. Perangkat IoT

- Terpasang pada satu cabang.
- Digunakan untuk mengontrol akses pintu.
- Memiliki status perangkat untuk monitoring.

---

## 🚪 E. Pintu Digital

- Terhubung dengan satu perangkat IoT.
- Berada pada satu cabang.
- Digunakan untuk akses masuk dan keluar.

---

## 📄 F. Log Akses

Setiap aktivitas akses menghasilkan satu data log yang berisi:

- Pengguna
- Pintu Digital
- Waktu Akses
- Jenis Akses (Masuk/Keluar)

Data ini digunakan sebagai sumber informasi operasional maupun keamanan.

---

## 📋 G. Audit Trail

Setiap operasi berikut akan dicatat secara otomatis:

- INSERT
- UPDATE
- DELETE

Audit Trail menyimpan:

- Identitas pengguna
- Jenis aktivitas
- Waktu perubahan
- Detail perubahan

> **Catatan:** Data audit tidak dapat dihapus oleh pengguna biasa.

---

## 🗄️ H. Pengarsipan Data

Untuk menjaga performa database:

- Data **ACCESS_LOG** yang berusia lebih dari **6 bulan** dipindahkan ke **ARCHIVE_ACCESS_LOG**.
- Data arsip tetap tersedia untuk audit.
- Data arsip tidak digunakan pada transaksi operasional.

---

# 💡 Solusi dan Tantangan

## Tantangan

Volume data log yang sangat besar dari perangkat IoT menyebabkan:

- Penurunan performa database
- Query menjadi lebih lambat
- Penyimpanan semakin besar

---

## Solusi

### 📦 Data Lifecycle Management

Memisahkan data menjadi:

| Tabel | Fungsi |
|--------|--------|
| ACCESS_LOG | Data aktif |
| ARCHIVE_ACCESS_LOG | Data arsip |

---

### 🔐 Audit Trail

Setiap perubahan data akan dicatat secara otomatis sehingga:

- Aktivitas pengguna dapat ditelusuri
- Mempermudah investigasi
- Mencegah penyalahgunaan data

---

### 👥 Role Based Access Control (RBAC)

Hak akses dibatasi berdasarkan role pengguna sehingga keamanan sistem lebih terjamin.

---

# 🛠️ Teknologi yang Digunakan

| Teknologi | Keterangan |
|-----------|------------|
| MySQL 8.0 | Database Management System |
| SQL | Query Language |
| Trigger | Audit Trail Otomatis |
| Stored Procedure | Pengarsipan Data |
| XAMPP / MariaDB | Lingkungan Pengujian |

---

# 🚀 Cara Menjalankan

## 1️⃣ Jalankan Server

Buka **XAMPP**, kemudian aktifkan:

- Apache
- MySQL

---

## 2️⃣ Buka SQL Client

Gunakan salah satu:

- phpMyAdmin
- MySQL Workbench
- DBeaver

---

## 3️⃣ Buat Database

```sql
CREATE DATABASE spacehub_db;
USE spacehub_db;
```

---

## 4️⃣ Import Database

Import file SQL yang telah disediakan.

Misalnya melalui phpMyAdmin:

```
Import
    ↓
Pilih file SQL
    ↓
Klik Go
```

---

## 5️⃣ Jalankan Query

Setelah proses import selesai, seluruh tabel, trigger, procedure, dan data awal siap digunakan.

---

# 🗂️ Struktur Database

```
spacehub_db
│
├── users
├── roles
├── branches
├── iot_devices
├── digital_doors
├── access_log
├── archive_access_log
└── audit_trail
```

---

# ✨ Fitur Utama

✅ Role Based Access Control (RBAC)

✅ Audit Trail Otomatis

✅ IoT Access Logging

✅ Data Lifecycle Management

✅ Archive Data

✅ Monitoring Perangkat IoT

---

<div align="center">

**Universitas Muhammadiyah Kendari**  
Program Studi Sistem dan Teknologi Informasi

**Kelompok 5 • 2026**

</div>
