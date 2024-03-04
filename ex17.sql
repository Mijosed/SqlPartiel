-- 1 ans à partir de quand ?

DELETE FROM character 
WHERE lastconn < NOW() - INTERVAL '31556926 seconds';
