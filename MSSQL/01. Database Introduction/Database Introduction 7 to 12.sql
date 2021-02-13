CREATE TABLE People(
	Id BIGINT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(50) NOT NULL,
	Picture IMAGE,
	Height DECIMAL (5, 2),
	[Weight] DECIMAL (5, 2),
	Gender CHAR(1) NOT NULL,
	Birthdate DATE NOT NULL,
	Biography NVARCHAR(50)
)

INSERT INTO People([Name],Picture, 
Height,[Weight],Gender,Birthdate, Biography)
	VALUES
	( 'Ivan', NULL, 180,70,'m', '1990/12/20', NULL),
	( 'Dragan', NULL, 175, 76,'m','1988/05/12', 'Teacher'),
	( 'Kolio', NULL ,172 , 72, 'm', '1985/06/30', 'Doctor'),
	( 'Pesho', NULL, 175, 82,'m','1980/01/25', 'Songwriter'),
	( 'Fiki', NULL, 173, 65, 'm', '1992/03/01','Singer')

CREATE TABLE Users(
	Id BIGINT PRIMARY KEY IDENTITY,
	Username VARCHAR(50) UNIQUE NOT NULL,
	[Password] VARCHAR(26) NOT NULL,
	ProfilePicture VARBINARY(MAX) 
	CHECK(DATALENGTH(ProfilePicture)<=900*1024),
	LastLoginTime DATETIME2 NOT NULL,
	IsDeleted BIT NOT NULL
)

INSERT INTO Users(Username,[Password],ProfilePicture,
LastLoginTime,IsDeleted)
		VALUES
			('gogo1234','somepass',NULL, '05.10.2020',0),
			('ogog','somepass',NULL, '05.10.2020',1),
			('drago','somepass',NULL, '05.10.2020',0),
			('ku4e','somepass',NULL, '05.10.2020',1),
			('kon53','somepass',NULL, '05.10.2020',0)

ALTER TABLE Users
DROP CONSTRAINT [PK__Users__3214EC07EA6DB37A]

ALTER TABLE Users
ADD CONSTRAINT PK_Users_CompositeIdUsername
PRIMARY KEY(Id, Username)

ALTER TABLE Users
ADD CONSTRAINT CHK_Users_PasswordLength
CHECK(LEN([Password]) >=5)

ALTER TABLE Users
ADD CONSTRAINT DF_Users_LastLoginTime
DEFAULT GETDATE() FOR LastLoginTime

ALTER TABLE Users
DROP CONSTRAINT [PK_Users_CompositeIdUsername]

ALTER TABLE Users
ADD CONSTRAINT PK_Users_Id
PRIMARY KEY(Id)

ALTER TABLE Users
ADD CONSTRAINT CK_Users_UsernameLength
CHECK(LEN(Username)>=3)


