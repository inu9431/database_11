 -- 1. `employees 테이블을 생성해주세요`**
--     - `속성명 **id의** 자료형은 INT입니다. 추가로 자동으로 1씩 증가하도록 설정하고 기본키로 지정합니다.`
--     - `속성명 **name의** 자료형은 VARCHAR(100)입니다.`
--     - `속성명 **position의** 자료형은 VARCHAR(100)입니다.`
--     - `속성명 **salary의** 자료형은 DECIMAL(10, 2)입니다.`-- USE testdatabase;
 -- SET SQL_SAFE_UPDATES = 0;

 CREATE TABLE employees (
 id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(100),
 position VARCHAR(100),
 salary DECIMAL(10,2)
); 

 -- 2.   직원데이터를 employees에 추가해주세요
-- - 이름: 혜린, 직책:PM,연봉:90000- 이름: 혜린, 직책: PM, 연봉: 90000
-- - 이름: 은우, 직책: Frontend, 연봉: 80000
-- - 이름: 가을, 직책: Backend, 연봉: 92000
-- - 이름: 지수, 직책: Frontend, 연봉: 78000
-- - 이름: 민혁, 직책: Frontend, 연봉: 96000
-- - 이름: 하온, 직책: Backend, 연봉: 130000
 INSERT INTO employees (name,position,salary)
 VALUES 
('혜린','PM',90000),
('은우','Frontend',80000),
('가을','Backend',92000),
('지수','Frontend',78000),
('민혁','Frontend',96000),
('하온','Backend',130000);

-- 3.모든 직원의 이름과 연봉 정보만을 조회하는 쿼리를 작성해주세요
-- 4. Frontend 직책을 가진 직원중에서 연봉이 90000이하인 직원의 이름과
-- 연봉을 조회하세요
-- 5. PM 직책을 가진 모든 직원의 연봉을 10% 인상한 후 그결과를 확인하세요
-- 6. 모든 Backend 직책을 가진 직원의 연봉을 5% 인상하세요.
-- 7.민혁 사원의 데이터를 삭제하세여
-- 8. 모든 직원을 position 별로 그룹화 하여 각 직책의 평균 연봉을 계산하세요.
-- 9. employees 	테이블을 삭제하세요
SELECT * FROM employees;


SELECT name,salary  
FROM employees
WHERE position = 'Frontend' AND salary <=90000; 

UPDATE employees
SET salary = salary * 1.10
WHERE position = 'PM';

UPDATE employees
SET salary = salary * 1.05
WHERE position = 'Backend';

DELETE FROM employees
WHERE name = '민혁';

SELECT Position, AVG(salary) AS average_salrary
FROM employees
GROUP BY position;

DROP TABLE employees;



