<?php
	
	$a=mysqli_connect("localhost","root","");
	mysqli_select_db($a,"olimpia");
	
	if(isset($_POST['a1']))
	{
		$foldresz=mysqli_query($a,"SELECT DISTINCT FOLDRESZ AS foldresz FROM `orszagok`;");
		
		while($sor=mysqli_fetch_array($foldresz))
			echo $sor['foldresz']."<br>";
	}
	
	if(isset($_POST['a2']))
	{
		$foldresz=$_POST['a3'];
		
		$sql=mysqli_query($a,"SELECT ORSZAG AS orszag FROM `orszagok` WHERE FOLDRESZ='$foldresz'");
		While($sor=mysqli_fetch_array($sql))
			echo $sor['orszag']."<br>";
	}
	
	if(isset($_POST['a5']))
	{
		$orszag=$_POST['a4'];
		
		$sql=mysqli_query($a,"SELECT FOVAROS AS fovaros FROM `orszagok` WHERE ORSZAG='$orszag'");
		While($sor=mysqli_fetch_array($sql))
			echo $sor['fovaros'];
	}
	
	if(isset($_POST['a7']))
	{
		$erem=$_POST['a6'];
		
		$sql=mysqli_query($a,"SELECT DISTINCT versenyzok.NEV AS ermes FROM versenyzok,eredmenyek WHERE eredmenyek.VERSENYZO_AZON=versenyzok.AZON AND versenyzok.EGYEN_CSAPAT='e' AND eredmenyek.HELYEZES='$erem';");
		
		while($sor=mysqli_fetch_array($sql))
			echo $sor['ermes']."<br>";
	}

?>