<?php

	$a=mysqli_connect("localhost","root","");
	mysqli_select_db($a,"orszagok");

	if(isset($_POST['a1']))
	{
		$foldresz=$_POST['a2'];
		
		$sql=mysqli_query($a,"SELECT orszag AS nev,fovaros AS nev2 FROM `orszagok` WHERE foldr_hely LIKE '%$foldresz%' ORDER BY orszag ASC;");
		
		while($sor=mysqli_fetch_array($sql))
			echo $sor['nev'].$sor['nev2']."<br>";
		
	}
	
	if(isset($_POST['a3']))
	{
		$orszag=$_POST['a4'];
		
		$sql=mysqli_query($a,"SELECT terulet AS ter FROM `orszagok` WHERE orszag = '$orszag';");
		
		while($sor=mysqli_fetch_array($sql))
			echo $sor['ter']."<br>";
	}
	
	if(isset($_POST['a5']))
	{
		$sql=mysqli_query($a,"SELECT DISTINCT allamforma AS allamforma FROM `orszagok`;");
		while($sor=mysqli_fetch_array($sql))
			echo $sor['allamforma']."<br>";
	}
	
	if(isset($_POST['a7']))
	{
		$allamforma=$_POST['a6'];
		
		$sql=mysqli_query($a,"SELECT orszag AS orszagok FROM `orszagok` WHERE allamforma = '$allamforma';");
		while($sor=mysqli_fetch_array($sql))
			echo $sor['orszagok']."<br>";
	}
	
	if(isset($_POST['a9']))
	{
		$a8="";
		$b8="";
		$c8="";
		$d8="";

		if(isset($_POST['a8'])) $a8=" foldr_hely LIKE '%félsziget%' OR";
		if(isset($_POST['b8'])) $b8=" foldr_hely LIKE '%szigetország%' OR";
		if(isset($_POST['c8'])) $c8=" foldr_hely LIKE '%törpeállam%' OR";
		if(isset($_POST['d8'])) $d8=" foldr_hely LIKE '%városállam%' OR";
		
		$sql="SELECT orszag AS nev FROM orszagok WHERE".$a8.$b8.$c8.$d8;
		
		$sql=rtrim($sql,'OR');
		$foe=mysqli_query($a,$sql);
		
		while($sor=mysqli_fetch_array($foe))
			echo $sor['nev']."<br>";
	}
	
	if(isset($_POST['a11']))
	{
		$ertek=$_POST['a10'];
		echo $ertek." fő/km <sup> 2 </sup>"."<br>";
		$sql=mysqli_query($a,"SELECT orszag AS nev FROM `orszagok` WHERE (nepesseg / terulet)<'$ertek' ORDER BY orszag ASC");
		
		while($sor=mysqli_fetch_array($sql))
		{	
			echo $sor['nev']."<br>";
		}
	}	
	
	if(isset($_POST['a13']))
	{
		$orszag=$_POST['a12'];
		
		$sql=mysqli_query($a,"UPDATE orszagok SET gdp=gdp-(gdp/100) WHERE orszag='$orszag'");
	}
?>
