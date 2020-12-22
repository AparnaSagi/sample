$params = @{

  'Database' = 'testdb-azurepoc'

  'ServerInstance' =  'srvr-azurepoc-2.database.windows.net'

  'Username' = 'pocadmin

  'Password' = 'Azuretfa@9'

  'OutputSqlErrors' = $true

  'Query' = 'SELECT session_id,        
   status,
        DB_NAME(database_id) [Database],
        blocking_session_id,
        wait_type,
        wait_time,
        wait_resource 
FROM    sys.dm_exec_requests
WHERE   blocking_session_id <> 0'

  }

  Invoke-Sqlcmd  @params
