$mysql = "C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe"
$password = ConvertTo-SecureString "ace123" -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential("ace", $password)
$pass = $cred.GetNetworkCredential().Password
& $mysql --user=ace --password=$pass ace_shard -e "DELETE FROM weenie WHERE class_Id IN (101189990, 101189991, 101189992, 101189993, 101189994, 101189995);"