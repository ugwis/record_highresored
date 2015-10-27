<?php

date_default_timezone_set('UTC');

while(1){
	$date = new DateTime();
	$date->setTimestamp(floor($date->getTimestamp()/300-1)*300);
	$now = $date->format('YmdHi').PHP_EOL;
	system("sh getTile.sh {$now}\&");
	sleep(300);
}

?>
