// Tabel Role 
CREATE TABLE ROLE (
    role_id SERIAL PRIMARY KEY,
    role_name VARCHAR(50) UNIQUE NOT NULL
);

// Tabel USER_ACCOUNT
CREATE TABLE USER_ACCOUNT (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    role_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_role
    FOREIGN KEY(role_id)
    REFERENCES ROLE(role_id)
);

// Tabel BRANCH
CREATE TABLE BRANCH (
    branch_id SERIAL PRIMARY KEY,
    branch_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    address TEXT NOT NULL
);

Tabel IOT_DEVICE
CREATE TABLE IOT_DEVICE (
    device_id SERIAL PRIMARY KEY,
    branch_id INTEGER NOT NULL,
    device_name VARCHAR(100) NOT NULL,
    installation_date DATE NOT NULL,

    status VARCHAR(20) NOT NULL,

    CONSTRAINT chk_device_status
    CHECK(status IN ('AKTIF','NONAKTIF','PERBAIKAN')),

    CONSTRAINT fk_device_branch
    FOREIGN KEY(branch_id)
    REFERENCES BRANCH(branch_id)
);

// Tabel DOOR
CREATE TABLE DOOR (
    door_id SERIAL PRIMARY KEY,
    branch_id INTEGER NOT NULL,
    device_id INTEGER UNIQUE NOT NULL,
    door_name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL,

    CONSTRAINT fk_door_branch
    FOREIGN KEY(branch_id)
    REFERENCES BRANCH(branch_id),

    CONSTRAINT fk_door_device
    FOREIGN KEY(device_id)
    REFERENCES IOT_DEVICE(device_id)
);

// Tabel ACCESS_LOG
CREATE TABLE ACCESS_LOG (
    log_id BIGSERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    door_id INTEGER NOT NULL,

    access_time TIMESTAMP NOT NULL,

    access_type VARCHAR(10) NOT NULL,

    CONSTRAINT chk_access_type
    CHECK(access_type IN ('MASUK','KELUAR')),

    CONSTRAINT fk_log_user
    FOREIGN KEY(user_id)
    REFERENCES USER_ACCOUNT(user_id),

    CONSTRAINT fk_log_door
    FOREIGN KEY(door_id)
    REFERENCES DOOR(door_id)
);

// Tabel AUDIT_TRAIL
CREATE TABLE AUDIT_TRAIL (
    audit_id BIGSERIAL PRIMARY KEY,

    user_id INTEGER NOT NULL,

    table_name VARCHAR(100) NOT NULL,

    action_type VARCHAR(10) NOT NULL,

    old_data TEXT,

    new_data TEXT,

    action_time TIMESTAMP NOT NULL,

    CONSTRAINT chk_action_type
    CHECK(action_type IN ('INSERT','UPDATE','DELETE')),

    CONSTRAINT fk_audit_user
    FOREIGN KEY(user_id)
    REFERENCES USER_ACCOUNT(user_id)
);

// Tabel ARCHIVE_ACCESS_LOG
CREATE TABLE ARCHIVE_ACCESS_LOG (
    archive_id BIGSERIAL PRIMARY KEY,

    original_log_id BIGINT NOT NULL,

    user_id INTEGER NOT NULL,

    door_id INTEGER NOT NULL,

    access_time TIMESTAMP NOT NULL,

    access_type VARCHAR(10) NOT NULL,

    archived_at TIMESTAMP NOT NULL,

    CONSTRAINT chk_archive_access
    CHECK(access_type IN ('MASUK','KELUAR')),

    CONSTRAINT fk_archive_user
    FOREIGN KEY(user_id)
    REFERENCES USER_ACCOUNT(user_id),

    CONSTRAINT fk_archive_door
    FOREIGN KEY(door_id)
    REFERENCES DOOR(door_id)
);





