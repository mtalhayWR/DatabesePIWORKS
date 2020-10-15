select username 
from i_users
where userId IN(select userId
from i_user_login_logs
group by userId
having count(*)>2)