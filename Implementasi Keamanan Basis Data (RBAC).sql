// Membuat Role
CREATE ROLE staf_lapangan;
CREATE ROLE manajer;
CREATE ROLE auditor;

// A. Pemberian Hak Akses (GRANT)

// 1. Hak Akses Staf Lapangan
GRANT SELECT
ON ACCESS_LOG
TO staf_lapangan;

GRANT INSERT
ON ACCESS_LOG
TO staf_lapangan;

// 2. Hak Akses Manajer
GRANT SELECT
ON ROLE,
USER_ACCOUNT,
BRANCH,
IOT_DEVICE,
DOOR,
ACCESS_LOG,
ARCHIVE_ACCESS_LOG
TO manajer;

// 3. Hak Akses Auditor
GRANT SELECT
ON AUDIT_TRAIL,
ACCESS_LOG,
ARCHIVE_ACCESS_LOG,
USER_ACCOUNT,
ROLE
TO auditor;

// B. Pembatasan Hak Akses (REVOKE)
// 1. A.	REVOKE DELETE ON ACCESS_LOG FROM 
Staf_Lapangan

REVOKE DELETE
ON ACCESS_LOG
FROM staf_lapangan;

// 2. B.	REVOKE UPDATE ON AUDIT_TRAIL FROM
Auditor

REVOKE UPDATE
ON AUDIT_TRAIL
FROM auditor;

// C. Contoh Pembuatan User dan Pemberian Role
// 1. Pembuatan akun staf
CREATE USER user_staf
WITH PASSWORD 'staf123';

GRANT staf_lapangan
TO user_staf;

// 2. Pembuatan akun manager
CREATE USER user_manager
WITH PASSWORD 'manager123';

GRANT manajer
TO user_manager;

// 3. Pembuatan akun auditor
CREATE USER user_auditor
WITH PASSWORD 'auditor123';

GRANT auditor
TO user_auditor;
