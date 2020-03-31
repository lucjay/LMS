SELECT *
FROM session_privs;
SELECT *
FROM hr.employees;
UPDATE hr.employees
SET salary = salary*1.1;
SELECT *
FROM hr.emp_list_vu;
CREATE SYNONYM e FOR hr.emp_list_vu;
SELECT *
FROM e;
SELECT *
FROM HR.dname_sum_vu;
CREATE SYNONYM d_sum FOR hr.dname_sum_vu;
SELECT * FROM d_sum;
SELECT * FROM hr.dept_list_vu;
SELECT * FROM d;
