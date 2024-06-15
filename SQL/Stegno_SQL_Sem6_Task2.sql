SELECT @hour := HOUR(NOW());

DELIMITER -

DROP FUNCTION IF EXISTS hello-
CREATE FUNCTION hello (hour INT)
RETURNS TEXT
BEGIN
  IF 6<=hour<12 THEN
    RETURN 'Доброе утро';
  ELSEIF 12 <= hour < 18 THEN
    RETURN 'Добрый день';
  ELSEIF 18 <= hour < 24 THEN
    RETURN 'Добрый вечер';
  ELSE 
    RETURN 'Доброй ночи';
  END IF;
END-


DROP FUNCTION IF EXISTS hello1-
CREATE FUNCTION hello1 ()
RETURNS TEXT
BEGIN
  IF 6<= HOUR(NOW()) <12 THEN
    RETURN 'Доброе утро';
  ELSEIF (HOUR(NOW()) >= 12 AND HOUR(NOW()) < 18) THEN
    RETURN 'Добрый день';
  ELSEIF (HOUR(NOW()) >= 18 AND HOUR(NOW()) < 24) THEN
    RETURN 'Добрый вечер';
  ELSE 
    RETURN 'Доброй ночи';
  END IF;
END-

DELIMITER ;

SELECT hello1;

SELECT hello(@hour);