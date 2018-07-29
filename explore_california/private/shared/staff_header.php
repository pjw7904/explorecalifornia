<?php
  if(!isset($page_title)) { $page_title = 'Explore California Booking Area'; }
?>

<!doctype html>

<html lang="en">
  <head>
    <title>Explore California - <?php echo h($page_title); ?></title>
    <meta charset="utf-8">
    <link rel="stylesheet" media="all" href="<?php echo url_for('/stylesheets/staff.css'); ?>" />
  </head>

  <body>
    <header>
      <h1>Explore California Booking Area</h1>
    </header>

    <navigation>
      <ul>
        <li><a href="<?php echo url_for('/staff/index.php'); ?>">Menu</a></li>
      </ul>
    </navigation>
