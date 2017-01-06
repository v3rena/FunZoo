<!DOCTYPE html>

<h3>Tier hinzufügen</h3>

<form action="Stored Procedures/InsertAnimal.php" method="post">
  <ul><!-- alternativ wäre <ol> für geordnete Liste -->
    <li>
      <label for="gehegeName">Gehege-Name</label>
      <input id="gehegeName" name="gehegeName">
    </li>
    <li>
      <label for="tierName">Tier-Name</label>
      <input id="tierName" name="tierName">
    </li>
    <li>
      <label for="tierGeschl">Tier-Geschlecht</label>
      <input id="tierGeschl" name="tierGeschl">
    </li>
    <li>
      <label for="tierSpezies">Tier-Spezies</label>
      <input id="tierSpezies" name="tierSpezies">
    </li>
    <li>
      <label for="tierpflegerVorn">Pfleger-Vorname</label>
      <input id="tierpflegerVorn" name="tierpflegerVorn">
    </li>
    <li>
      <label for="tierpflegerNachn">Pfleger-Nachname</label>
      <input id="tierpflegerNachn" name="tierpflegerNachn">
    </li>
    <li>
      <label for="futterName">Futterart</label>
      <input id="futterName" name="futterName">
    </li>
    <li>
      <label for="futterBedarf">Futterbedarf</label>
      <input id="futterBedarf" name="futterBedarf">
    </li>
    <li>
      <button>Hinzufügen</button>
    </li>
  </ul>
</form>

<br/>

<h3>Tier hinzufügen</h3>

<form action="Stored Procedures/DeleteAnimal.php" method="post">
  <ul><!-- alternativ wäre <ol> für geordnete Liste -->
    <li>
      <label for="tierName">Tier-Name</label>
      <input id="tierName" name="tierName">
    </li>
    <li>
      <button>Entfernen</button>
    </li>
  </ul>
</form>


<script src="tierverwaltungScript.js"></script>