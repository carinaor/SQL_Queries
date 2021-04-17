select top 100 st.last_execution_time, te.text
from sys.dm_exec_query_stats st
cross apply sys.dm_exec_sql_text(st.sql_handle) te
order by st.last_execution_time desc