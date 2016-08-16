*the code below counts all relationships in the database.

rglobi::query('START r=rel(*)
RETURN count (r)')
