TRANSFORM COUNT(Service_Type) AS [Count]
SELECT LEFT(Make_and_Model, INSTR(Make_and_Model," ")-1) AS Brand, COUNT(VEHICLES.Vehicle_ID) AS [Number of Vehicles]
FROM VEHICLES INNER JOIN SERVICES ON VEHICLES.Vehicle_ID = SERVICES.Vehicle_ID
GROUP BY LEFT(Make_and_Model, INSTR(Make_and_Model," ")-1)
PIVOT Service_Type;
-- Write your SQL query below:
