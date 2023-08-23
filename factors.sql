create schema hs_test;

SHOW search_path;

SET search_path TO hs_test;

CREATE TABLE Domains
(
  DomainID INT NOT NULL,
  Domain VARCHAR(25) NOT NULL,
  DomainName VARCHAR(35) NOT NULL,
  DomainLabel VARCHAR(6),
  DomainText VARCHAR(60),
  PRIMARY KEY (DomainID)
);

INSERT INTO hs_test.domains (DomainID,Domain,DomainName,DomainText) VALUES (1,'Wellbeing','Wellbeing','Overall satisfaction with life');
INSERT INTO hs_test.domains (DomainID,Domain,DomainName) VALUES (2,'Capability','Capability');
INSERT INTO hs_test.domains (DomainID,Domain,DomainName) VALUES (3,'Opportunity','Opportunity');


CREATE TABLE Categories
(
  CategoryID INT NOT NULL,
  Category VARCHAR(20) NOT NULL,
  CategoryName VARCHAR(50) NOT NULL,
  CategoryLabel VARCHAR(6) ,
  CategoryText VARCHAR(60),
  DomainID INT NOT NULL,
  PRIMARY KEY (CategoryID),
  FOREIGN KEY (DomainID) REFERENCES Domains(DomainID)
);

INSERT INTO hs_test.categories (CategoryID,Category,CategoryName,CategoryLabel,DomainID) VALUES (1, 'Wellbeing', 'Wellbeing', 'WB', 1);
INSERT INTO hs_test.categories (CategoryID,Category,CategoryName,CategoryText,DomainID) VALUES (2, 'Wellness', 'Wellness', 'Maintaining integrity of body and soul', 2);
INSERT INTO hs_test.categories (CategoryID,Category,CategoryName,CategoryText,DomainID) VALUES (3, 'Resilience', 'Resilience', 'Ability to solve problems, handle setbacks and adapt',2);
INSERT INTO hs_test.categories (CategoryID,Category,CategoryName,CategoryText,DomainID) VALUES (4, 'Life Skills', 'Life Skills','Capabilities required for responsible independence',2);
INSERT INTO hs_test.categories (CategoryID,Category,CategoryName,DomainID) VALUES (5, 'Resources','Resources',3);
INSERT INTO hs_test.categories (CategoryID,Category,CategoryName,DomainID) VALUES (6, 'Structures', 'Access to Societal Structures and Services',3);
INSERT INTO hs_test.categories (CategoryID,Category,CategoryName,DomainID) VALUES (7, 'Self-Development', 'Access to Self-Development',3);
INSERT INTO hs_test.categories (CategoryID,Category,CategoryName,DomainID) VALUES (8, 'Relationships', 'Access to Relationships',3);


CREATE TABLE SubCategories
(
  SubCategoryID INT NOT NULL,
  SubCategory VARCHAR(50) NOT NULL,
  SubCategoryName VARCHAR(50), --check redun
  SubCategoryLabel VARCHAR(10),
  SubCategoryText VARCHAR(75),
  CategoryID INT,
  PRIMARY KEY (SubCategoryID),
  FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (1,'Wellbeing',1);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (2,'Community',2);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (3,'Mental Health',2);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (4,'Passion',2);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (5,'Physical Health',2);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (6,'Purpose',2);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (7,'Self-Acceptance',2);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (8,'Adaptability',3);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (9,'Coping',3);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (10,'Determination',3);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (11,'Discipline',3);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (12,'Problem Solving',3);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (13,'Self-belief',3);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (14,'Communication Skills',4);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (15,'Daily Life Skills',4);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (16,'Employment Skills',4);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (17,'Financial Literacy',4);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (18,'Health Management',4);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (19,'Housing',4);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (20,'Leadership',4);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (21,'Learning Skills',4);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (22,'Parenting',4);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,SubCategoryText,CategoryID) VALUES (23,'Personal Development','Personal and Social Development',4);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (24,'Relationship Skills',4);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (25,'Nutrition',5);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (26,'Water',5);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (27,'Culture',6);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (28,'Education Services',6);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (29,'Employment Opportunities',6);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (30,'Home',6);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (31,'Market Access',6);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (32,'Political Participation',6);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (33,'Stability',6);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (34,'Relationship Opportunities',8);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (35,'Cognitive',7);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (36,'Emotional',7);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory,CategoryID) VALUES (37,'Internet',6);
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory) VALUES (38,'Physical');
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory) VALUES (39,'Self-Expression');
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory) VALUES (40,'Self-Respect');
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory) VALUES (41,'Social');
INSERT INTO hs_test.subcategories (SubCategoryID,SubCategory) VALUES (42,'Vulnerability');


CREATE TABLE Factors
(
  FactorID INT NOT NULL,
  OldFactorID VARCHAR(20),
  Factor VARCHAR(50) NOT NULL,
  FactorLabel VARCHAR(80),
  FactorText VARCHAR(80),
  SubCategoryID INT NOT NULL,
  PRIMARY KEY (FactorID),
  FOREIGN KEY (SubCategoryID) REFERENCES SubCategories(SubCategoryID)
);

INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (1,1,'F10000001','Life Appreciation','Life appreciation and outlook');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (2,1,'F10000002','Life Conditions','Current life conditions');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (3,1,'F10000003','Current Life Satisfaction','Current life satisfaction');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (4,1,'F10000004','Life Attainments','Satisfaction with life attainments');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (5,1,'F10000005','Past Life Satisfaction','Satisfaction with life history');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (6,2,'F10000013','Community Connection','Community connection');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (7,2,'F10000053','Community Influence','Community influence');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (8,3,'F10000009','Anxiety','Anxiety');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (9,3,'F10000011','Enjoyment','Enjoyment');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (10,3,'F10000049','Feeling Safe','Feeling safe');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (11,3,'F10000080','Feelings of Anger','Feelings of anger');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (12,3,'F10000063','Feelings of Guilt or Shame','Feelings of guilt, anger or shame');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (13,3,'F10000010','Happiness','Happiness');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (14,3,'F10000051','Hope','Hope');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (15,3,'F10000050','Peaceful Home','Peaceful home');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (16,3,'F10000087','Problems Sleeping','Problems sleeping');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (17,3,'F10000008','Sadness','Sadness');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (18,3,'F10000064','Vulnerability with Others','Vulnerability with others');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (19,4,'F10000016','Passion','Passion');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (20,5,'F10000006','Physical Health','Physical health');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (21,5,'F10000007','Health Impedance','Health impedance');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (22,5,'F10000069','Physically Active','Physically active');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (23,5,'F10000012','Substance Abuse','Substance abuse');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (24,6,'F10000015','Meaning','Meaning');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (25,6,'F10000052','Purpose','Purpose');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (26,7,'F10000079','Confidence','Confidence');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (27,7,'F10000014','Pride','Pride in accomplishments');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (28,7,'F10000048','Self-love','Self-love');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (29,8,'F10000054','Adaptability','Adapting for unexpected events');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (30,9,'F10000082','Composure','Taking things in your stride');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (31,9,'F10000083','Feeling Overwhelmed','Feeling overwhelmed');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (32,9,'F10000022','Humour','Humour');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (33,9,'F10000018','Multitasking','Handling many things at a time');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (34,9,'F10000081','Overcome difficulty','Skills to overcome difficulty');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (35,9,'F10000017','Persistence','Persistence');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (36,9,'F10000086','Positiveness','Handling what comes one''s way');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (37,9,'F10000084','Remaining Calm','Remaining calm in difficult situations');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (38,10,'F10000019','Determination','Determination');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (39,10,'F10000027','Interest in things','Interest in things');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (40,10,'F10000020','Perseverance','Perseverance');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (41,11,'F10000021','Self-discipline','Self-discipline');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (42,12,'F10000025','Adeptness','Adeptness');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (43,12,'F10000026','Finding solutions','Finding solutions');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (44,12,'F10000024','Reliability','Reliability');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (45,13,'F10000023','Self-belief','Self-belief');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (46,14,'F10000042','Conversation','Conversation');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (47,14,'F10000085','Self-awareness','Understanding ones thoughts and feelings');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (48,15,'F10000041','Household','Household');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (49,15,'F10000076','Personal Hygiene','Personal Hygiene');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (50,16,'F10000057','Agricultural skills','Agricultural skills');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (51,16,'F10000059','Aspirations for Children','Helping my children have a good life');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (52,16,'F10000033','Employment Skills','Employment skills');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (53,16,'F10000035','Job Attitude','Job attitude');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (54,16,'F10000060','Support Financially','Financially providing for family');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (55,17,'F10000030','Debts','Debts');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (56,17,'F10000028','Financial Plan','Financial plan');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (57,17,'F10000029','Money','Money');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (58,18,'F10000036','Diet','Diet');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (59,18,'F10000039','Drugs','Drugs');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (60,18,'F10000040','Health Issues','Health issues');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (61,18,'F10000037','Lifestyle','Lifestyle');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (62,18,'F10000038','Safe Sex','Safe sex');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (63,18,'F10000095','Seeking Assistance','Knowing where to go for help (basic)');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (64,19,'F10000032','Accommodation','Accommodation');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (65,19,'F10000031','Emergency Accommodation','Emergency accommodation');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (66,20,'F10000090','Acknowledgement','Praising people when they do well');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (67,20,'F10000088','Communicating','Leading through enthusiastic and frequent communication');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (68,20,'F10000089','Encouraging Learning', 'Encouraging others to learn new skills');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (69,20,'F10000092','Encouraging Participation','Letting everyone in the team have their say');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (70,20,'F10000091','Motivating','Motivating and getting the best out of people');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (71,21,'F10000034','Education','Education');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (72,21,'F10000058','New Skills','New skills');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (73,23,'F10000046','Faith in Law','Faith in law');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (74,23,'F10000045','Goals','Goals');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (75,23,'F10000047','Regret','Regretting decisions');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (76,24,'F10000055','Domestic Relationships','Making decisions in the home');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (77,24,'F10000044','Peer Pressure','Peer pressure');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (78,24,'F10000043','Relationships','Forming and maintaining relationships');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorLabel) VALUES (79,24,'F10000061','Self-disclosure','Sharing personal information');
INSERT INTO hs_test.factors (FactorID,SubCategoryID,OldFactorID,Factor,FactorText) VALUES (80,24,'F10000062','Trusting','Knowing who to trust');


select subcategoryid, count(*) from factors group by subcategoryid; --how many factors in each subcategory

select categoryid,  count(*) from subcategories group by categoryid; --how many subcategories in each category

select domainid, count(*) from categories group by domainid; --how many categories in each domain

select category, subcategory from subcategories s, categories c  where s.categoryid = c.categoryid --

select factor, subcategory from factors f, subcategories s where f.subcategoryid =s.subcategoryid 

select domain, category from domains d , categories c where d.domainid =c.domainid;

create view Factors_and_its_associates as
select f.factor, s.subcategory, c.category, d.domain 
from factors f, subcategories s,categories c,domains d 
where f.subcategoryid  = s.subcategoryid and s.categoryid =c.categoryid and c.domainid =d.domainid;
