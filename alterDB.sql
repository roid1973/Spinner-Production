ALTER TABLE events ADD COLUMN openDate DATETIME DEFAULT CURRENT_TIMESTAMP AFTER toDate;
ALTER TABLE events ADD COLUMN recurringId int NOT NULL default 0 AFTER classId;