<?php

require_once('../api_common_private.php');
//$rawdata = get_array('playlists');

$rawdata = array();

global $_GET;
global $db;


if(isset($_GET['show'])) $show_id = $_GET['show']; else $show_id = 0;

$query = 'SELECT * FROM playsheets WHERE playsheets.show_id = '.$show_id.' ORDER BY playsheets.start_time DESC ';

if ($result = mysqli_query($db, $query) ) {
    $playlists = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $playlists [] = $row;
    }
} else {
    $error .= mysqli_error($db);
    finish();
}



$query2 = '
  SELECT * FROM podcast_episodes
  WHERE show_id = '.$show_id;

if ($result2 = mysqli_query($db, $query2) ) {
    $podcasts = array();
    while ($row = mysqli_fetch_assoc($result2)) {
        $podcasts [] = $row;
    }
} else {
    $error .= mysqli_error($db);
    finish();
}


foreach($playlists as $i => $playlist){
    foreach($podcasts as $j => $podcast){
        if (array_key_exists('duration', $podcast) && $podcast['duration'] == 0 && array_key_exists('end_time', $playlist)){
            $start = strtotime($podcast['date']);
            $end = strtotime($playlist['end_time'], $start);
            $podcast['duration'] = $end - $start;
        }

        if ($podcast['playsheet_id'] == $playlist['id']){
            $rawdata []= ['playlist' => $playlist, 'podcast' => $podcast];


        }
    }
}


$data = $rawdata;

finish();