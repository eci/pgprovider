﻿create or replace function get_users_by_username(
	partial_username varchar(250),
	_application_name varchar(250)
	)returns setof user_record as $$
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
		application_name = _application_name
		and user_name ilike '%' || partial_username || '%'
	order by
		user_id asc;
end;
$$ language plpgsql;
