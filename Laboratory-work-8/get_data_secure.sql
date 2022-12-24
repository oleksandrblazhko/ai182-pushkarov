create or replace function get_data(u_name VARCHAR)
returns table (u_id INTEGER, name VARCHAR, year INTEGER) as $$
declare
str VARCHAR;
begin
str := 'SELECT u_id, name, year from university where name = $1';
raise notice 'Query=%', str;
return query execute str USING u_name;
end;
$$ language plpgsql;
