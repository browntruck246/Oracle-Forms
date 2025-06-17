-- Example: Using an explicit cursor in PL/SQL

DECLARE
  -- Declare a cursor to select employees in department 10
  CURSOR emp_cur IS
    SELECT empno, ename, sal
      FROM emp
     WHERE deptno = 10;

  -- Variables to hold the fetched values
  v_empno emp.empno%TYPE;
  v_ename emp.ename%TYPE;
  v_sal   emp.sal%TYPE;

BEGIN
  -- Open the cursor
  OPEN emp_cur;

  -- Loop through each row returned by the cursor
  LOOP
    FETCH emp_cur INTO v_empno, v_ename, v_sal;
    EXIT WHEN emp_cur%NOTFOUND;

    -- Output employee info and give a 10% raise
    DBMS_OUTPUT.PUT_LINE('Employee: ' || v_empno || ', ' || v_ename || ', Current Salary: ' || v_sal);

    UPDATE emp
       SET sal = v_sal * 1.10
     WHERE empno = v_empno;
  END LOOP;

  -- Close the cursor
  CLOSE emp_cur;

  DBMS_OUTPUT.PUT_LINE('Salary updates complete.');
END;
/
