*the code below counts all Nodes in the database.

rglobi::query('START n=node(*)
RETURN count(n)')
