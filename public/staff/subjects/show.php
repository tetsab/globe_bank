<?php require_once('../../../private/initialize.php') ?>

<?php 
  $id = $_GET['id'] ?? '1'; // $id = isset($_GET['id']) ? $_GET['id'] : '1');

  echo h($id);
?>

<a href="show.php?name=<?php echo u('John Doe'); ?>">Link</a><br />
<a href="show.php?company<?php echo urlencode('Widgets&More'); ?>">Link</a><br />
<a href="show.php?query=<?php echo urlencode('!#*?'); ?>">Link</a><br />