create or replace function get_id 
return number is
  FunctionResult number;
begin
  SELECT c_id INTO FunctionResult
  FROM (
    SELECT c_id
    FROM customer
    ORDER BY DBMS_RANDOM.VALUE
  )
  WHERE ROWNUM = 1;
      
  return(FunctionResult);
end get_id;
/
