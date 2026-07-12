# Domain-Keamanan-Audit-Log-dan-Siklus-hidup-data-Data-Lifecycle-Management-
# ![Database](https://img.shields.io/badge/DATABASE-MySQL-blue) ![MySQL](https://img.shields.io/badge/MySQL-8.0-blue) ![Tugas Besar](https://img.shields.io/badge/UNIVERSITAS-MUHAMMADIYAH_KENDARI-brightgreen) ![Status](https://img.shields.io/badge/STATUS-COMPLETED-success)
Domain Kelompok 5 berfokus pada pengelolaan keamanan sistem, audit aktivitas pengguna, serta pengelolaan siklus hidup data (Data Lifecycle Management) pada lingkungan SpaceHub & Co.

SpaceHub & Co. menggunakan sistem keamanan berbasis Internet of Things (IoT) untuk mengontrol akses masuk dan keluar pengguna melalui pintu digital yang tersedia pada setiap cabang. Aktivitas tersebut menghasilkan data log dalam jumlah yang sangat besar setiap harinya. Selain itu, perusahaan juga memerlukan mekanisme pengawasan terhadap perubahan data yang dilakukan oleh pengguna internal agar seluruh aktivitas dapat dipertanggungjawabkan.

Oleh karena itu, diperlukan rancangan basis data yang mampu mengelola log akses, mencatat aktivitas audit secara otomatis, mengatur hak akses pengguna berdasarkan peran, serta menerapkan mekanisme pengarsipan data untuk menjaga performa sistem.


# Anggota Pengembang Kelompok 5
Ascjul Nur Hidayah (22415007)
La Ode Muhammad Asri Mulya (22415005)
Siti Fajar Hamani (22415003)
Muhammad Zikril Haq (22415014)

Dosen Pengampu: Kartini Aprilia Pratiwi Nuzry, S.Kom., M.MT.
Program Studi: Sistem dan Teknologi Informasi | Fakultas Teknik | UMK 2026

# Uraian Aturan Bisnis
A. Pengguna Internal Sistem
•	Setiap pengguna internal wajib memiliki satu akun untuk mengakses sistem.
•	Setiap akun hanya dapat memiliki satu role.
•	Satu role dapat dimiliki oleh banyak pengguna.
•	Pengguna yang terdaftar dapat melakukan aktivitas sesuai hak akses yang diberikan.
B. Role Pengguna
•	Sistem menggunakan tiga role utama yaitu Staf Lapangan, Manajer, dan Auditor.
•	Staf Lapangan bertugas mengelola aktivitas operasional harian.
•	Manajer bertugas memantau laporan dan aktivitas sistem.
•	Auditor bertugas melakukan pemeriksaan terhadap aktivitas audit dan keamanan data.
C. Cabang SpaceHub
•	SpaceHub & Co. memiliki beberapa cabang yang tersebar di berbagai lokasi.
•	Setiap cabang memiliki sejumlah perangkat IoT dan pintu digital.
•	Setiap cabang memiliki identitas yang unik.
D. Perangkat IoT
•	Setiap perangkat IoT dipasang pada satu cabang tertentu.
•	Perangkat IoT digunakan untuk mengendalikan akses pada pintu digital.
•	Status perangkat harus dapat diketahui untuk kebutuhan monitoring dan pemeliharaan.
E. Pintu Digital
•	Setiap pintu digital terhubung dengan satu perangkat IoT.
•	Setiap pintu berada pada satu cabang tertentu.
•	Aktivitas akses masuk dan keluar dilakukan melalui pintu digital.
F. Log Akses
•	Setiap aktivitas masuk dan keluar menghasilkan satu data log.
•	Setiap log harus menyimpan informasi pengguna, pintu yang digunakan, waktu akses, dan jenis akses.
•	Data log digunakan sebagai sumber informasi operasional dan keamanan.
G. Audit Trail
•	Setiap aktivitas INSERT, UPDATE, dan DELETE harus dicatat secara otomatis.
•	Audit trail harus menyimpan identitas pengguna yang melakukan aktivitas.
•	Audit trail harus menyimpan waktu aktivitas dan jenis perubahan yang dilakukan.
•	Data audit tidak boleh dihapus oleh pengguna biasa.
H. Pengarsipan Data
•	Data ACCESS_LOG yang berusia lebih dari 6 bulan dipindahkan ke ARCHIVE_ACCESS_LOG.
•	Data arsip tetap dapat digunakan untuk keperluan audit dan pelaporan.
•	Data arsip tidak digunakan pada transaksi operasional harian.

# Solusi Logis Dan Tantangan Khusus
Tantangan utama pada domain ini adalah volume data log yang sangat besar akibat aktivitas perangkat IoT yang berlangsung secara terus-menerus. Jika seluruh data log disimpan dalam satu tabel operasional, maka performa basis data akan menurun dan proses pencarian data menjadi lambat.

Solusi yang diterapkan adalah penggunaan mekanisme Data Lifecycle Management melalui pemisahan data log aktif dan data log arsip. Data yang masih aktif disimpan pada tabel ACCESS_LOG, sedangkan data yang telah melewati masa retensi akan dipindahkan ke tabel ARCHIVE_ACCESS_LOG.

Untuk meningkatkan keamanan sistem, diterapkan Audit Trail yang mencatat seluruh aktivitas perubahan data. Setiap operasi INSERT, UPDATE, dan DELETE akan dicatat secara otomatis sehingga seluruh aktivitas pengguna dapat ditelusuri kembali apabila terjadi kesalahan maupun penyalahgunaan sistem.

Selain itu, sistem menerapkan Role Based Access Control (RBAC) sehingga hak akses setiap pengguna dibatasi sesuai tugas dan tanggung jawabnya. Dengan mekanisme tersebut, keamanan data dapat ditingkatkan dan risiko penyalahgunaan akses dapat diminimalkan.

# Tata Cara Menjalankan Program Ini

