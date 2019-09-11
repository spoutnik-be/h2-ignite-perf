
SET @APATH='c:/temp/sgperf/h2-stackoverflow/data/';

INSERT INTO C SELECT * from CSVREAD ( @APATH || 'C.csv', 'ID,CR,UPR,FPR');

INSERT INTO M SELECT * from CSVREAD ( @APATH || '/M.csv', 'ID,FO,CR'); 

INSERT INTO F SELECT * from CSVREAD ( @APATH || '/F.csv', 'ID,O'); 

INSERT INTO H SELECT * from CSVREAD ( @APATH || '/H.csv', 'ID,HR,HI,PT,PR');

INSERT INTO N SELECT * from CSVREAD ( @APATH || '/N.csv', 'ID,A,PT,PR');

INSERT INTO L SELECT * from CSVREAD ( @APATH || '/L.csv', 'ID,PR,RR,CR,IPR,ET' ) ;

INSERT INTO P SELECT * from CSVREAD ( @APATH || '/P.csv', 'ID,PR,PT,PTPR,IPR'); 

INSERT INTO R SELECT * from CSVREAD ( @APATH || '/R.csv', 'SELECT ID, RPR, IPR'); 

INSERT INTO S SELECT * from CSVREAD ( @APATH || '/S.csv', 'ID,PR,ET,RR,IPR');

COMMIT;

ANALYZE;