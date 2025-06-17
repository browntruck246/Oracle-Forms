-- Create table statement for EMP
CREATE TABLE emp (
    empno    NUMBER(4) PRIMARY KEY,
    ename    VARCHAR2(20),
    job      VARCHAR2(9),
    mgr      NUMBER(4),
    hiredate DATE,
    sal      NUMBER(7,2),
    comm     NUMBER(7,2),
    deptno   NUMBER(2)
);

-- Insert sample data into EMP
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7369, 'SMITH',  'CLERK',     7902, DATE '2022-01-17', 800,   NULL, 20);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7499, 'ALLEN',  'SALESMAN',  7698, DATE '2022-02-20', 1600,  300,  30);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7521, 'WARD',   'SALESMAN',  7698, DATE '2022-02-22', 1250,  500,  30);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7566, 'JONES',  'MANAGER',   7839, DATE '2022-04-02', 2975,  NULL, 20);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7698, 'BLAKE',  'MANAGER',   7839, DATE '2022-05-01', 2850,  NULL, 30);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7782, 'CLARK',  'MANAGER',   7839, DATE '2022-06-09', 2450,  NULL, 10);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7788, 'SCOTT',  'ANALYST',   7566, DATE '2022-12-09', 3000,  NULL, 20);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7839, 'KING',   'PRESIDENT', NULL, DATE '2022-11-17', 5000,  NULL, 10);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7844, 'TURNER', 'SALESMAN',  7698, DATE '2022-09-08', 1500,    0, 30);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7876, 'ADAMS',  'CLERK',     7788, DATE '2022-12-12', 1100,  NULL, 20);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7900, 'JAMES',  'CLERK',     7698, DATE '2023-03-18', 950,   NULL, 30);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7902, 'FORD',   'ANALYST',   7566, DATE '2023-06-23', 3000,  NULL, 20);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (7934, 'MILLER', 'CLERK',     7782, DATE '2023-01-23', 1300,  NULL, 10);
-- Add a few employees in department 10 for your cursor example
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (8001, 'JOHN',   'CLERK',     7782, DATE '2024-01-10', 1500,  NULL, 10);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (8002, 'MARY',   'MANAGER',   7839, DATE '2024-02-15', 3500,  NULL, 10);
INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES (8003, 'DAVID',  'CLERK',     7782, DATE '2024-03-22', 1700,  NULL, 10);

COMMIT;
