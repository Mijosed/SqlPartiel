DELETE FROM character 
WHERE lastconn < NOW() - INTERVAL '31556926 seconds';
