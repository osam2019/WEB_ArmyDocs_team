create database armydocs;

use armydocs;

create table am_user_info (	
	idx int(11) unsigned not null auto_increment primary key,
	id varchar(255) not null,
	password text not null,
	name varchar(255) null,
	email varchar(255) null,
	phonenm varchar(255) null,
	recruitDate date null,
	signDate date null,
	station varchar(255) null,
	atype enum('soldier','manager') null,
	atype2 enum('army','navy','airforce') null,
	profile text null,
	masterFlag tinyint(1) not null default false,
	signFlag tinyint(1) not null default false
) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

create table am_survey_info (
	idx int(11) unsigned not null auto_increment primary key,
	title varchar(255) not null,
	note mediumtext null,
	regdate datetime not null,
	startdate datetime not null,
	enddate datetime not null,
	userIdx int(11) unsigned null,
	name varchar(255) null,
	coverImg text null,
	target enum('all','soldier','manager') not null default 'all'
) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

create table am_survey_items (
	idx int(11) unsigned not null auto_increment primary key,
	surveyIdx int(11) unsigned not null,
	note text null,
	corder int(11) unsigned not null,
	qtype enum('multiple','answer') not null,
	regdate datetime not null,
	responseNote text null
) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

create table am_survey_answer (
	idx int(11) unsigned not null auto_increment primary key,
	surveyIdx int(11) unsigned not null,
	itemsIdx int(11) unsigned not null,
	userIdx int(11) unsigned not null,
	responseNote text null,
	regdate datetime not null
) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;