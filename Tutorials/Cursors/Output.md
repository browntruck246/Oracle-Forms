## What is the output of this PL/SQL block?

### Step 1: Which employees are selected?
The cursor selects all employees from `emp` where `deptno = 10`.

From your data, these employees are:

| empno | ename  | sal  |
|-------|--------|------|
| 7782  | CLARK  | 2450 |
| 7839  | KING   | 5000 |
| 7934  | MILLER | 1300 |
| 8001  | JOHN   | 1500 |
| 8002  | MARY   | 3500 |
| 8003  | DAVID  | 1700 |

---

### Step 2: What happens in the loop?
For each employee in department 10:
- The current employee’s details and salary are printed.
- Their salary (`sal`) is increased by 10% (`sal = sal * 1.10`) for that row.

---

### Step 3: What is printed?
The output to `DBMS_OUTPUT` will be:

```
Employee: 7782, CLARK, Current Salary: 2450
Employee: 7839, KING, Current Salary: 5000
Employee: 7934, MILLER, Current Salary: 1300
Employee: 8001, JOHN, Current Salary: 1500
Employee: 8002, MARY, Current Salary: 3500
Employee: 8003, DAVID, Current Salary: 1700
Salary updates complete.
```

---

### Step 4: What are the final salaries after the block runs?
| empno | ename  | original sal | updated sal |
|-------|--------|-------------|-------------|
| 7782  | CLARK  | 2450        | 2695        |
| 7839  | KING   | 5000        | 5500        |
| 7934  | MILLER | 1300        | 1430        |
| 8001  | JOHN   | 1500        | 1650        |
| 8002  | MARY   | 3500        | 3850        |
| 8003  | DAVID  | 1700        | 1870        |

Other employees (not in dept 10) are unaffected.

---

## Summary of Output
The program prints each employee’s info before the raise, and at the end:

```
Employee: 7782, CLARK, Current Salary: 2450
Employee: 7839, KING, Current Salary: 5000
Employee: 7934, MILLER, Current Salary: 1300
Employee: 8001, JOHN, Current Salary: 1500
Employee: 8002, MARY, Current Salary: 3500
Employee: 8003, DAVID, Current Salary: 1700
Salary updates complete.
```

And updates the salaries of those employees to 110% of their original value.
