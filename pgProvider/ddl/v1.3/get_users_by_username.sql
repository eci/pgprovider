﻿CREATE OR REPLACE FUNCTION get_users_by_username(partial_username character varying, _application_name character varying) RETURNS SETOF user_record
    LANGUAGE plpgsql
    AS $$
	begin
	return query
	select
		user_id,
		user_name,
		last_activity,
		created,
		email,
		approved,
		last_lockout,
		last_login,
		last_password_changed,
		password_question,
		comment
	from
		users
	where
		lower(application_name) = lower(_application_name)
		and user_name ilike '%' || partial_username || '%'
	order by
		user_id asc;
end;$$;