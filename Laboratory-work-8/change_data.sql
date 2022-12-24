create or replace function change_data(role_name VARCHAR, access_level INTEGER)
returns integer as $$
declare
	str varchar;
begin
	str := 'update role_access_level set access_level = ' || access_level || ' where role_name = ''' || role_name || '''';
	raise notice 'query=%', str;
	EXECUTE str;
    return access_level;
end;
$$ language plpgsql;
