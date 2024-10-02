SQL> DESC tbl_user
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                       NOT NULL NUMBER(3)
 USER_NAME                                         VARCHAR2(30)
 PASSWORD                                          VARCHAR2(10)
 IMAGE                                             BLOB                                         VARCHAR2(50)


SQL> DESCRIBE EMPLOYE;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMP_ID                                    NOT NULL NUMBER(4)
 FIRST_NAME                                         VARCHAR2(50)
 LAST_NAME                                          VARCHAR2(50)
 DEPARTMENT                                         VARCHAR2(15)
 ROLE                                               VARCHAR2(10)
 GENDER                                             VARCHAR2(7)
 BIRTH_DAY                                          DATE
 JOIN_DAY                                           DATE
 LEAVING_DAY                                        DATE
 EMP_MAIL                                           VARCHAR2(25)
 IMAGE                                              BLOB
 SALARY                                             NUMBER(5)
 PHONE                                              VARCHAR2(20)
 NATIONALITY                                        VARCHAR2(15)
 ADDRESS                                            VARCHAR2(255)
 IMAGE_PATH                                         VARCHAR2(255)

SQL> DESCRIBE LEAVING;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_LEAVING                                NOT NULL NUMBER(3)
 EMPLOYE_ID                                         NUMBER(3)
 NAME_LEAVING                                       VARCHAR2(18)
 START_LEAVING                                      DATE
 END_LEAVING                                        DATE
 STATUS                                             VARCHAR2(15)
 NOTE                                               VARCHAR2(2500)
 DAYS                                               NUMBER(5)



SQL> DESC NATION
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 E_NATIONALITY                                      VARCHAR2(20)

SQL> DESC DEP;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEP_ID                                    NOT NULL NUMBER(4)
 DEP_NAME                                           VARCHAR2(50)

SQL> SELECT uc.constraint_name, ucc.column_name
  2  FROM user_constraints uc
  3  JOIN user_cons_columns ucc ON uc.constraint_name = ucc.constraint_name
  4  WHERE uc.constraint_type = 'P'
  5  AND uc.table_name = 'Leaving';

no rows selected

SQL> SELECT acc.column_name
  2  FROM all_cons_columns acc
  3  JOIN all_constraints ac ON acc.constraint_name = ac.constraint_name
  4  WHERE ac.constraint_type = 'P'
  5  AND acc.table_name = UPPER('YOUR_TABLE_NAME');

no rows selected

SQL> SELECT acc.column_name
  2  FROM all_cons_columns acc
  3  JOIN all_constraints ac ON acc.constraint_name = ac.constraint_name
  4  WHERE ac.constraint_type = 'P'
  5  AND acc.table_name = UPPER('YOUR_TABLE_NAME');

no rows selected

SQL> SELECT acc.column_name
  2  FROM all_cons_columns acc
  3  JOIN all_constraints ac ON acc.constraint_name = ac.constraint_name
  4  WHERE ac.constraint_type = 'P'
  5  AND acc.table_name = UPPER('employe');

COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
EMP_ID                                                                          

SQL> SELECT acc.column_name
  2  FROM all_cons_columns acc
  3  JOIN all_constraints ac ON acc.constraint_name = ac.constraint_name
  4  WHERE ac.constraint_type = 'P'
  5  AND acc.table_name = UPPER('leaving');

COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
ID_LEAVING                                                                      

SQL> SELECT acc.column_name, ac_pk.table_name AS referenced_table, acc_pk.column_name AS referenced_column
  2  FROM all_cons_columns acc
  3  JOIN all_constraints ac ON acc.constraint_name = ac.constraint_name
  4  JOIN all_constraints ac_pk ON ac.r_constraint_name = ac_pk.constraint_name
  5  JOIN all_cons_columns acc_pk ON acc_pk.constraint_name = ac_pk.constraint_name AND acc.position = acc_pk.position
  6  WHERE ac.constraint_type = 'R'
  7  AND acc.table_name = UPPER('leaving');

COLUMN_NAME                                                                     
--------------------------------------------------------------------------------
REFERENCED_TABLE                                                                
------------------------------                                                  
REFERENCED_COLUMN                                                               
--------------------------------------------------------------------------------
EMPLOYE_ID                                                                      
EMPLOYE                                                                         
EMP_ID                                                                          
                                                                                

SQL> spool off;
