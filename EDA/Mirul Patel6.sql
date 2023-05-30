UPDATE Countries
SET LifeExpectancy=100
WHERE REGION_ID=1;

--ALTER TABLE Countries
--ADD LifeExpectancy int;

SELECT * FROM Countries;

COMMIT;

ALTER TABLE Countries
DROP CONSTRAINT COUNTRY_C_ID_PK;

insert into ATMDATA
VALUES('harshil',70911,97799)
CREATE TABLE ATMDATA(
    NAME varchar(255),
    CARDNUMBER varchar(255),
    PINNUMBER varchar(255)
);