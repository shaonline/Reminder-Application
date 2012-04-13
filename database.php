<?php
	class connectionMNGR
	{
		public function connect()
		{
			$dbConn = mysql_pconnect("localhost", "root","") or die ('MySQL connection failed. . . ' . mysql_error());
			$db = mysql_select_db('reminder', $dbConn) or die('Cannot select database. . . ' . mysql_error());
		}
	}

	class SQL
	{
			function dbQuery($sql)
			{
				$result = mysql_query($sql) or die(mysql_error());
				
				return $result;
			}
			
			function dbFetchAssoc($result)
			{
				return mysql_fetch_assoc($result);
			}
						
			function dbFreeResult($result)
			{
				return mysql_free_result($result);
			}
			
			function dbNumRows($result)
			{
				return mysql_num_rows($result);
			}
			
			
			
	} // class SQL ends			
?>