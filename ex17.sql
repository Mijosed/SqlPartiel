DELETE FROM character
WHERE lastconn < NOW() - INTERVAL '1 year';
