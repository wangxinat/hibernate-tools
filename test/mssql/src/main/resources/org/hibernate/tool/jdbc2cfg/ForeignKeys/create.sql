CREATE SCHEMA HTT
CREATE TABLE HTT.MASTER (ID CHAR NOT NULL, NAME VARCHAR(20), PRIMARY KEY (ID))					
CREATE TABLE HTT.CHILD  (CHILDID CHARACTER NOT NULL, MASTERREF CHARACTER, PRIMARY KEY(CHILDID), FOREIGN KEY (MASTERREF) REFERENCES HTT.MASTER(ID))
CREATE TABLE HTT.CONNECTION  (CONID INT, NAME VARCHAR(50), MASTERREF CHAR, CHILDREF1 CHARACTER, CHILDREF2 CHARACTER, PRIMARY KEY(CONID), CONSTRAINT CON2MASTER FOREIGN KEY (MASTERREF) REFERENCES HTT.MASTER(ID), CONSTRAINT CHILDREF1 FOREIGN KEY (CHILDREF1) REFERENCES HTT.CHILD(CHILDID), CONSTRAINT CHILDREF2 FOREIGN KEY (CHILDREF2) REFERENCES HTT.CHILD(CHILDID))