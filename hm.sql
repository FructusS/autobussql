create table Marshrut
(
	ID_Marshrut int identity(1,1) PRIMARY KEY not null,
	Nomer_Marshruta varchar(50) not null,
	Punkt_naznachenia varchar(50) not null,
	Raion varchar(50) not null,
	Oblast varchar(50) not null,
	Rasstoyanie int not null,
	Ves int not null,
	Vremia_Otpravki smalldatetime not null,
	Vremia_Pribitiya smalldatetime not null
)
create table Bilet
(
	ID_Bilet int identity(1,1) PRIMARY KEY not null,
	Mesto int not null,
	Stoimost int not null,
	Vremia smalldatetime not null,
	F_I_O varchar(100) not null,
	Passport varchar(100) not null,
	Lgota bit not null
)


create table Dispetcher
(
	ID_Dispetcher int identity(1,1) PRIMARY KEY not null,
	F_I_O varchar(100) not null,
	Data_Rojdenia date not null,
	Adress varchar(100) not null
)
create table Avtobus
(
	ID_Avtobus int identity(1,1) PRIMARY KEY not null,
	Nomer varchar(50) not null,
	Model varchar(50) not null,
	Nomernoi_Znak varchar(50) not null,
	kolbo_Mest int not null
	
	
)

create table Voditel
(
	ID_Voditel int identity(1,1) PRIMARY KEY not null,
	F_I_O varchar(100) not null,
	Data_Rojdenia date not null,
	Passpot varchar(8) not null
)


create table Perevozka
(
	ID_Perevozka int identity(1,1) PRIMARY KEY not null,
	Nomer varchar(50) not null,
	ID_Marshrut int not null,
	ID_Bilet int not null,
	ID_Dispetcher int not null,
	ID_Avtobus int not null,
	ID_Voditel int not null,
	FOREIGN KEY (ID_Marshrut)  REFERENCES Marshrut (ID_Marshrut),
	FOREIGN KEY (ID_Bilet)  REFERENCES Bilet (ID_Bilet),
	FOREIGN KEY (ID_Dispetcher)  REFERENCES Dispetcher (ID_Dispetcher),
	FOREIGN KEY (ID_Avtobus)  REFERENCES Avtobus (ID_Avtobus),
	FOREIGN KEY (ID_Voditel)  REFERENCES Voditel (ID_Voditel)

)