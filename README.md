# PostgreSQL To-Do List Project

A simple database schema for managing users and their tasks using **PostgreSQL 17**.

## Description

This project provides a structured **SQL database** for a **To-Do List application**.  
It includes two tables:  
- `users` → Stores user information.  
- `tasks` → Stores tasks related to users.  

The database ensures **data integrity** using **primary keys, foreign keys, and constraints**.  
It also implements **cascading delete** to automatically remove tasks when a user is deleted.

## Database Schema

### **Users Table**
| Column    | Type             | Constraints                 |
|-----------|----------------|----------------------------|
| id        | BIGSERIAL       | PRIMARY KEY                |
| name      | VARCHAR(100)    | NOT NULL                   |
| email     | VARCHAR(150)    | NOT NULL                   |
| password  | VARCHAR(50)     | NOT NULL                   |
| createdAt | TIMESTAMP       | DEFAULT NOW()              |

### **Tasks Table**
| Column    | Type             | Constraints                        |
|-----------|----------------|-----------------------------------|
| id        | BIGSERIAL       | PRIMARY KEY                        |
| title     | VARCHAR(100)    | NOT NULL                           |
| description | VARCHAR(200)  | NOT NULL                           |
| isDone    | BOOLEAN         | DEFAULT FALSE                      |
| createdAt | TIMESTAMP       | DEFAULT NOW()                      |
| userId    | BIGINT          | FOREIGN KEY (users.id), NOT NULL   |

## **Features**
- **Users can be created, updated, and deleted.**
- **Tasks are assigned to users and can be managed individually.**
- **Cascading delete:** When a user is deleted, all their tasks are removed automatically.
- **Timestamps:** The `createdAt` field is automatically set when inserting new records.
- **Task tracking:** Tasks include a boolean field `isDone` to track completion status.
