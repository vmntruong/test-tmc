-- Create the schema
CREATE SCHEMA Company;
GO

-- Create table Employee
CREATE TABLE Company.Employee(
	EmployeeId INT AUTO_INCREMENT PRIMARY KEY,
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	Birthday DATE NOT NULL
);
GO

-- Create table Person for employees' family members
CREATE TABLE Company.FamilyMember(
	FamilyMemberId INT AUTO_INCREMENT PRIMARY KEY,
	EmployeeId INT,
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	Birthday DATE NOT NULL,
	FOREIGN KEY (EmployeeId) REFERENCES Company.Employee(EmployeeId)
);
GO

-- Create table Contract
CREATE TABLE Company.Contract(
	ContractId INT AUTO_INCREMENT PRIMARY KEY,
	SigningDate DATE NOT NULL,
	EmployeeId INT NOT NULL,
	Duration VARCHAR(20) NOT NULL,
	Salary DECIMAL(10,2) NOT NULL,
	FOREIGN KEY (EmployeeId) REFERENCES Company.Employee(EmployeeId)
);
GO

CREATE TABLE Company.Service(
	ServiceId INT AUTO_INCREMENT PRIMARY KEY,
	EmployeeId INT NOT NULL,
	ServiceName VARCHAR(100) NOT NULL,
	FOREIGN KEY (EmployeeId) REFERENCES Company.Employee(EmployeeId)
);
GO
