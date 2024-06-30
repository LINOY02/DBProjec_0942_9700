create or replace function booking_value(cust_id IN NUMBER) 
return number is
  FunctionResult number;
begin
      SELECT b_id INTO FunctionResult
      FROM booking
      WHERE c_id = cust_id 
      AND ROWNUM = 1
      ORDER BY DBMS_RANDOM.VALUE;
      
  return(FunctionResult);
end booking_value;
/
