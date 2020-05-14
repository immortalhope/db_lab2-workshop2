--Populating the museum_type table.
INSERT INTO museum_type (m_type)
VALUES ('HISTORY MUSEUM');
INSERT INTO museum_type (m_type)
VALUES ('ARBORETUM, BOTANICAL GARDEN, OR NATURE CENTER');
INSERT INTO museum_type (m_type)
VALUES ('SCIENCE AND TECHNOLOGY MUSEUM OR PLANETARIUM');
INSERT INTO museum_type (m_type)
VALUES ('HISTORIC PRESERVATION');
INSERT INTO museum_type (m_type)
VALUES ('GENERAL MUSEUM');
INSERT INTO museum_type (m_type)
VALUES ('ZOO, AQUARIUM, OR WILDLIFE CONSERVATION');
INSERT INTO museum_type (m_type)
VALUES ('ART MUSEUM');
INSERT INTO museum_type (m_type)
VALUES ('CHILDREN`S MUSEUM');
INSERT INTO museum_type (m_type)
VALUES ('NATURAL HISTORY MUSEUM');



--populating the museums table
INSERT INTO museums (museum_id, museum_name, m_type) 
VALUES (8400200098, 'ALASKA AVIATION HERITAGE MUSEUM,ALASKA AVIATION HERITAGE MUSEUM', 'HISTORY MUSEUM');
INSERT INTO museums (museum_id, museum_name, m_type) 
VALUES (8409500494, 'GULF COAST EXPLOREUM SCIENCE CENTER', 'SCIENCE AND TECHNOLOGY MUSEUM OR PLANETARIUM');
INSERT INTO museums (museum_id, museum_name, m_type) 
VALUES (8400200117, 'ALASKA BOTANICAL GARDEN', 'ARBORETUM, BOTANICAL GARDEN, OR NATURE CENTER');
INSERT INTO museums (museum_id, museum_name, m_type) 
VALUES (8400200131, 'ALASKA NATIONAL GUARD HISTORICAL HOLDING-MUSEUM', 'HISTORIC PRESERVATION');
INSERT INTO museums (museum_id, museum_name, m_type) 
VALUES (8400200122, 'WHITESTONE FARMS', 'HISTORIC PRESERVATION');
INSERT INTO museums (museum_id, museum_name, m_type) 
VALUES (8400601274, 'CABRILLO COLLEGE GALLERY', 'ART MUSEUM');
INSERT INTO museums (museum_id, museum_name, m_type) 
VALUES (8403600231, 'JOHN MALLOY ART', 'ART MUSEUM');
INSERT INTO museums (museum_id, museum_name, m_type) 
VALUES (8403600877, 'MUSEUM OF ARTS AND DESIGN', 'ART MUSEUM');
INSERT INTO museums (museum_id, museum_name, m_type) 
VALUES (8400500193, 'HISTORIC PRESERVATION ALLIANCE OF ARKANSAS', 'HISTORIC PRESERVATION');
INSERT INTO museums (museum_id, museum_name, m_type) 
VALUES (8400602927, 'LOMPOC VALLEY HISTORICAL SOCIETY', 'HISTORIC PRESERVATION');
INSERT INTO museums (museum_id, museum_name, m_type) 
VALUES (8403600212, 'JAZZ MUSEUM', 'GENERAL MUSEUM');
INSERT INTO museums (museum_id, museum_name, m_type) 
VALUES (8403600237, 'JEWISH CHILDREN`S LEARNING LAB', 'CHILDREN`S MUSEUM');


--Populating the museum_income table
INSERT INTO museum_income (museum_id, income)
VALUES (8400200098, 602912);
INSERT INTO museum_income (museum_id, income)
VALUES (8409500494, 602965);
INSERT INTO museum_income (museum_id, income)
VALUES (8400200117, 1379576);
INSERT INTO museum_income (museum_id, income)
VALUES (8400200131, NULL);
INSERT INTO museum_income (museum_id, income)
VALUES (8400200122, 357970);
INSERT INTO museum_income (museum_id, income)
VALUES (8400601274, null);
INSERT INTO museum_income (museum_id, income)
VALUES (8403600231, NULL);
INSERT INTO museum_income (museum_id, income)
VALUES (8403600877, 27904762);
INSERT INTO museum_income (museum_id, income)
VALUES (8400500193, 198127);
INSERT INTO museum_income (museum_id, income)
VALUES (8400602927, 51978);
INSERT INTO museum_income (museum_id, income)
VALUES (8403600212, NULL);
INSERT INTO museum_income (museum_id, income)
VALUES (8403600237, NULL);


--Populating the museum_location table
INSERT INTO museum_location (museum_id, m_state, city, street)
VALUES (8400200098, 'AK', 'ANCHORAGE', '4721 AIRCRAFT DR');
INSERT INTO museum_location (museum_id, m_state, city, street)
VALUES (8409500494, 'AL', 'MOBILE', '3779 BARTLETT ST');
INSERT INTO museum_location (museum_id, m_state, city, street)
VALUES (8400200117, 'AK', 'ANCHORAGE', '4601 CAMPBELL AIRSTRIP RD');
INSERT INTO museum_location (museum_id, m_state, city, street)
VALUES (8400200131, 'AK', 'FORT RICHARDSON', 'PO BPX 5800');
INSERT INTO museum_location (museum_id, m_state, city, street)
VALUES (8400200122, 'AK', 'DELTA JCT', 'PO BOX 1229');
INSERT INTO museum_location (museum_id, m_state, city, street)
VALUES (8400601274, 'CA', 'APTOS', '4721 AIRCRAFT DR');
INSERT INTO museum_location (museum_id, m_state, city, street)
VALUES (8403600231, 'NY', 'NEW YORK', 'AVENUE 5');
INSERT INTO museum_location (museum_id, m_state, city, street)
VALUES (8403600877, 'NY', 'NEW YORK', '4721 AIRCRAFT DR');
INSERT INTO museum_location (museum_id, m_state, city, street)
VALUES (8400500193, 'AR', 'LITTLE ROCK', 'street');
INSERT INTO museum_location (museum_id, m_state, city, street)
VALUES (8400602927, 'CA', 'LOMPOC', 'street');
INSERT INTO museum_location (museum_id, m_state, city, street)
VALUES (8403600212, 'NY', 'NEW YORK', 'street');
INSERT INTO museum_location (museum_id, m_state, city, street)
VALUES (8403600237, 'NY', 'NEW YORK', 'street');



