// Query 1 – Analisis Aktivitas Akses Pengguna per Cabang
SELECT
    b.branch_name,
    u.full_name,
    r.role_name,
    d.door_name,
    COUNT(al.log_id) AS total_akses
FROM ACCESS_LOG al
JOIN USER_ACCOUNT u
    ON al.user_id = u.user_id
JOIN ROLE r
    ON u.role_id = r.role_id
JOIN DOOR d
    ON al.door_id = d.door_id
JOIN BRANCH b
    ON d.branch_id = b.branch_id
GROUP BY
    b.branch_name,
    u.full_name,
    r.role_name,
    d.door_name
HAVING COUNT(al.log_id) > 1
ORDER BY total_akses DESC;

// Query 2 – Analisis Penggunaan Perangkat IoT
SELECT
    b.branch_name,
    i.device_name,
    i.status,
    d.door_name,
    COUNT(al.log_id) AS total_penggunaan
FROM ACCESS_LOG al
JOIN DOOR d
    ON al.door_id = d.door_id
JOIN IOT_DEVICE i
    ON d.device_id = i.device_id
JOIN BRANCH b
    ON i.branch_id = b.branch_id
JOIN USER_ACCOUNT u
    ON al.user_id = u.user_id
GROUP BY
    b.branch_name,
    i.device_name,
    i.status,
    d.door_name
HAVING COUNT(al.log_id) > 1
ORDER BY total_penggunaan DESC;

// Query 3 – Analisis Aktivitas Audit Pengguna
SELECT
    b.branch_name,
    u.full_name,
    r.role_name,
    COUNT(a.audit_id) AS total_audit
FROM AUDIT_TRAIL a
JOIN USER_ACCOUNT u
    ON a.user_id = u.user_id
JOIN ROLE r
    ON u.role_id = r.role_id
JOIN ACCESS_LOG al
    ON u.user_id = al.user_id
JOIN DOOR d
    ON al.door_id = d.door_id
JOIN BRANCH b
    ON d.branch_id = b.branch_id
GROUP BY
    b.branch_name,
    u.full_name,
    r.role_name
HAVING COUNT(a.audit_id) > 2
ORDER BY total_audit DESC;