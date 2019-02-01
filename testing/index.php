<?php
/*
 * Converts CSV to JSON
 * Example uses Google Spreadsheet CSV feed
 * csvToArray function I think I found on php.net
 */

header('Content-type:text/html');

// Set your CSV feed
//$feed = 'https://docs.google.com/spreadsheets/d/1eKfgW5w9Ez0a_utbP30vf1ZgfsvHG5wFV3zQEDBRRps/pub?gid=0&single=true&output=csv';
$feed = 'https://docs.google.com/spreadsheets/d/1CXnFq_vxS7Y8QMjvbjXyKusywbZW2GILrTGaEijqeqo/pub?gid=394247564&single=true&output=csv';
// Arrays we'll use later
$keys = array();
$newArray = array();

// Function to convert CSV into associative array
function csvToArray($file, $delimiter) { 
  if (($handle = fopen($file, 'r')) !== FALSE) { 
    $i = 0; 
    while (($lineArray = fgetcsv($handle, 4000, $delimiter, '"')) !== FALSE) { 
      for ($j = 0; $j < count($lineArray); $j++) { 
        $arr[$i][$j] = $lineArray[$j]; 
      } 
      $i++; 
    } 
    fclose($handle); 
  } 
  return $arr; 
} 

// Do it
$data = csvToArray($feed, ',');

// Set number of elements (minus 1 because we shift off the first row)
$count = count($data) - 1;
  
//Use first row for names  
$labels = array_shift($data);  

foreach ($labels as $label) {
  $keys[] = $label;
}

// Add Ids, just in case we want them later
$keys[] = 'id';

for ($i = 0; $i < $count; $i++) {
  $data[$i][] = $i;
}
  
// Bring it all together
for ($j = 0; $j < $count; $j++) {
  $d = array_combine($keys, $data[$j]);
  $newArray[$j] = $d;
}

// Print it out as JSON
//echo json_encode($newArray);


if(count($newArray)){
	echo "<style>body{font-family:Arial,sans-serif;}</style>";
	echo "<h1>MUZ1K D3P'T RULZ</h1><hr/><div><ul>";
	foreach($newArray as $id){
		echo "<li>
			<h3 style=\"margin:1em 0 0 0;\">$id[format] - $id[artistName] - $id[albumName]</h3>
			<div>$id[category] - $id[rating]</div>
			<div>$id[albumLength]</div>
			<div>$id[recordLabel] - $id[albumRelease]</div>
			<div style=\"margin-top:.5em\">$id[review]</div>
		</li>";
	}
	echo "</ul></div>";
}

?>

