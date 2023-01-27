CREATE TABLE accident (
  accident_id    int          NOT NULL,
  accident_date  date         NOT NULL,
  country_id     int          NOT NULL,
  description_id varchar(6)   NOT NULL,
  accident_death int          
  
);

CREATE TABLE country (
	country_id     int      unique      NOT NULL,
	country_name   varchar(30)    NOT NULL 
 
);

CREATE TABLE description (
	description_id     varchar(6)   unique       NOT NULL,
	description_name   varchar(30)        NOT NULL
  
 
);



ALTER TABLE accident    ADD CONSTRAINT PK_accident    PRIMARY KEY (accident_id);
ALTER TABLE country     ADD CONSTRAINT PK_country     PRIMARY KEY (country_id);
ALTER TABLE description ADD CONSTRAINT PK_description PRIMARY KEY (description_id);




ALTER TABLE  accident    ADD CONSTRAINT FK_country_id     FOREIGN KEY (country_id)     REFERENCES country (country_id);
ALTER TABLE accident ADD CONSTRAINT FK_description_id FOREIGN KEY (description_id) REFERENCES description (description_id);
