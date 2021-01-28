<?php
  if(!isset($page_title)) { $page_title = 'Staff Area'; } // set
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>GBI - <?php echo $page_title; ?></title>
  <link rel="stylesheet" media="all" href="<?php echo url_for('/stylesheets/staff.css'); ?>">
</head>
<body>
  <header>
    <h1>GBI Staff Area</h1>
  </header>
  <!-- relative url x absolute url -->
  <navigation>
    <ul>
      <!-- <li><a href="<?php echo WWW_ROOT . '/staff/index.php'; ?>">Menu</a></li>  -->
      <li><a href="<?php echo url_for('/staff/index.php'); ?>">Menu</a></li> 
    </ul>
  </navigation>