<?php 
// This page only sends out the reminders, those are set today.
// If there is no reminder set on current date it prints message.
include('connect.php');
$subject = 'Reminder';
$to = ''; // an email address is required to be given here.
$header = 'From: Reminder System \nContent-Type: text/plain';

// the following query selects only those reminders which are set today
$Reminder_Result = $sql->dbQuery("select * from reminders where date='".date('Y-m-d')."' and flag = '1'"); 
$NumOfResult = $sql->dbNumRows($Reminder_Result);

if($NumOfResult > 0) // check, if there is some result? 
{
	while($Reminder = $sql->dbFetchAssoc($Reminder_Result))
	{
		$message  = "Event : ".$Reminder['title'];
		$message .= "\nDate : ".date('D M j, Y',strtotime($Reminder['date']));
		$message .= "\n".$Reminder['description']."\n\n";
		mail($to,$subject,$message,$header);
		
		$sql->dbQuery("update reminders set flag = '0' where id = '$Reminder[id]'"); // set the reminder to expired
				
	}
}
else
{
$Status_message = "There are no reminders set today,Today is : " .date('Y-m-d, H:i:s'); // if there are no active remindes set today.
}

?> 