  $edit = $pdo->prepare('UPDATE pessoa SET nome = ? WHERE id = ?');
  $edit->execute(array("Valter", 2));
