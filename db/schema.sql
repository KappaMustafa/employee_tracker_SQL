DROP DATABASE IF EXISTS tracker_db;

CREATE DATABASE tracker_db;

USE tracker_db;

-- MY TABLES SO FAR

CREATE TABLE department_table(
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE role_table(
  id INT AUTO_INCREMENT PRIMARY KEY,
  role_title VARCHAR(30) NOT NULL,
  role_salary DECIMAL NOT NULL,
  department_table_id INT AUTO_INCREMENT,
  FOREIGN KEY (department_table_id) references department_table (id)
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE employee_table(
  id INT AUTO_INCREMENT PRIMARY KEY,
  employee_first_name VARCHAR(30) NOT NULL,
  employee_last_name VARCHAR(30) NOT NULL,
  role_table_id INT AUTO_INCREMENT,
  FOREIGN KEY (role_table_id) references role_table (id),
  employee_manager_id INT AUTO_INCREMENT,
  FOREIGN KEY (employee_manager_id) references employee_table (id) 
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);