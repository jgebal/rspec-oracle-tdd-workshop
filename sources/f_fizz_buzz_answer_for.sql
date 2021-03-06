CREATE OR REPLACE FUNCTION fizz_buzz_answer_for(p_num INTEGER)
  RETURN VARCHAR2 IS
  BEGIN
    CASE
      WHEN p_num IS NULL THEN RAISE_APPLICATION_ERROR(-20000, 'cannot pass null');
      WHEN (mod(p_num, 15)=0) THEN RETURN 'FizzBuzz';
      WHEN (mod(p_num, 3)=0) THEN RETURN 'Fizz';
      WHEN (mod(p_num, 5)=0) THEN RETURN 'Buzz';
      ELSE RETURN p_num;
    END CASE;
  END;
/