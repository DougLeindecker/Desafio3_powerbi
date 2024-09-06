-- 1. Inserir Gerentes
INSERT INTO employee (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno) VALUES 
('John', 'B', 'Smith', '123456780', '1965-01-09', '731-Fondren-Houston-TX', 'M', 30000, NULL, 5),
('Franklin', 'T', 'Wong', '333445556', '1955-12-08', '638-Voss-Houston-TX', 'M', 40000, NULL, 5),
('James', 'E', 'Borg', '888665557', '1937-11-10', '450-Stone-Houston-TX', 'M', 55000, NULL, 1),
('Ahmad', 'V', 'Jabbar', '987987988', '1969-03-29', '980-Dallas-Houston-TX', 'M', 25000, NULL, 4);

-- 2. Inserir Funcionários
INSERT INTO employee (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno) VALUES 
('Alicia', 'J', 'Zelaya', '999887779', '1968-01-19', '3321-Castle-Spring-TX', 'F', 25000, '333445556', 4),
('Jennifer', 'S', 'Wallace', '987654323', '1941-06-20', '291-Berry-Bellaire-TX', 'F', 43000, '888665557', 4),
('Ramesh', 'K', 'Narayan', '666884446', '1962-09-15', '975-Fire-Oak-Humble-TX', 'M', 38000, '333445556', 5),
('Joyce', 'A', 'English', '453453455', '1972-07-31', '5631-Rice-Houston-TX', 'F', 25000, '333445556', 5);

-- 3. Inserir Dependentes
INSERT INTO dependent (Essn, Dependent_name, Sex, Bdate, Relationship) VALUES 
('333445556', 'Alice', 'F', '1986-04-05', 'Daughter'),
('333445556', 'Theodore', 'M', '1983-10-25', 'Son'),
('333445556', 'Joy', 'F', '1958-05-03', 'Spouse'),
('987654323', 'Abner', 'M', '1942-02-28', 'Spouse'),
('999887779', 'Michael', 'M', '1988-01-04', 'Son'),
('999887779', 'Alice', 'F', '1988-12-30', 'Daughter');

-- 4. Inserir Departamentos
INSERT INTO department (Dname, Dnumber, Mgr_ssn, Mgr_start_date, Dept_create_date) VALUES 
('Research', 5, '333445556', '1988-05-22', '1986-05-22'),
('Administration', 4, '987654323', '1995-01-01', '1994-01-01'),
('Headquarters', 1, '888665557', '1981-06-19', '1980-06-19');

-- 5. Inserir Localizações de Departamentos
INSERT INTO dept_locations (Dnumber, Dlocation) VALUES 
(1, 'Houston'),
(4, 'Stafford'),
(5, 'Bellaire'),
(5, 'Sugarland'),
(5, 'Houston');

-- 6. Inserir Projetos
INSERT INTO project (Pname, Pnumber, Plocation, Dnum) VALUES 
('ProductX', 1, 'Bellaire', 5),
('ProductY', 2, 'Sugarland', 5),
('ProductZ', 3, 'Houston', 5),
('Computerization', 10, 'Stafford', 4),
('Reorganization', 20, 'Houston', 1),
('Newbenefits', 30, 'Stafford', 4);

-- 7. Inserir Registros de Trabalho
INSERT INTO works_on (Essn, Pno, Hours) VALUES 
('123456780', 1, 32.5),
('123456780', 2, 7.5),
('666884446', 3, 40.0),
('453453455', 1, 20.0),
('453453455', 2, 20.0),
('333445556', 2, 10.0),
('333445556', 3, 10.0),
('333445556', 10, 10.0),
('333445556', 20, 10.0),
('999887779', 30, 30.0),
('987987988', 10, 35.0),
('987987988', 30, 5.0),
('987654323', 30, 20.0),
('987654323', 20, 15.0),
('888665557', 20, 0.0);