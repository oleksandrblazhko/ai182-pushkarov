create or replace function change_data(role_name VARCHAR, access_level INTEGER)
returns integer as $$
declare
	str varchar;
begin
	str := 'update role_access_level set access_level = $1 WHERE role_name = $2';
	raise notice 'query=%', str;
	EXECUTE str;
    return access_level USING access_level, role_name;
end;
$$ language plpgsql;
