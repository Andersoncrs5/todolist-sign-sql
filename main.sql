\c projects

CREATE TABLE users (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    password VARCHAR(50) NOT NULL,
    createdAt TIMESTAMP DEFAULT NOW()
);

CREATE TABLE tasks (
    id BIGSERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description VARCHAR(200) NOT NULL,
    isDone BOOLEAN DEFAULT FALSE,
    createdAt TIMESTAMP DEFAULT NOW(),
    userId BIGINT NOT NULL,
    CONSTRAINT fk_user FOREIGN KEY (userId) REFERENCES users(id) ON DELETE CASCADE
);

-- BASIC COMMANDS

SELECT * FROM users where id = 1;

SELECT * FROM tasks where userId = 1;

SELECT count(*) FROM tasks where userId = 1;

UPDATE users SET name = 'John Smith' WHERE id = 1;

UPDATE tasks SET isDone = TRUE WHERE id = 1;

DELETE FROM users WHERE id = 1;

DELETE FROM tasks WHERE id = 1;

SELECT COUNT(*) FROM tasks WHERE userId = 1 AND isDone = TRUE;

SELECT * FROM tasks WHERE userId = 1 AND isDone = FALSE;


