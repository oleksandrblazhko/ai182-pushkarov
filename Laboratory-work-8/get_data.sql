create or replace function get_data(u_name VARCHAR)
returns table (u_id INTEGER, name VARCHAR, year INTEGER) as $$
declare
str VARCHAR;
begin
str := 'SELECT u_id, name, year from university where name = ''' || u_name || '''';
raise notice 'Query=%', str;
return query execute str;
end;
$$ language plpgsql;
