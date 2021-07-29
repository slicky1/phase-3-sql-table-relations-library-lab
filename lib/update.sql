UPDATE characters 
SET species = 'Martian' 
WHERE id = (
  SELECT COUNT(*) FROM characters
);