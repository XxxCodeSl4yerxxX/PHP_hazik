<?php

$a=mysqli_connect("localhost","root","");
mysqli_select_db($a,"olimpia");

	if(isset($_POST['a1']))
	{
		
		$arany=mysqli_query($a,"SELECT DISTINCT versenyzok.nev AS elsok FROM versenyzok,eredmenyek,sportagak,versenyszamokWHERE versenyzok.azon=eredmenyek.VERSENYZO_AZON AND versenyszamok.SPORTAG_AZON=sportagak.AZON AND sportagak.NEV='úszás' AND eredmenyek.HELYEZES=1;");
		
		while($sor=mysqli_fetch_array($arany))
		{
			echo $sor['elsok'];
			echo "<br>";
		}
	}
	
	if(isset($_POST['a3']))
	{
		$a2=$_POST['a2'];
		$arany=mysqli_query($a,"SELECT DISTINCT versenyzok.nev AS elsok FROM versenyzok,eredmenyek,sportagak,versenyszamokWHERE versenyzok.azon=eredmenyek.VERSENYZO_AZON AND versenyszamok.SPORTAG_AZON=sportagak.AZON AND sportagak.NEV='$a2' AND eredmenyek.HELYEZES=1;");
		
		while($sor=mysqli_fetch_array($arany))
		{
			echo $sor['elsok'];
			echo "<br>";
		}
	}
	
	if (isset($_POST['a5'])) 
	{
		$nem=$_POST['a4'];
		if ($nem == 'ferfi')
			$nem='férfi';
		else if ($nem == 'no')
			$nem='női';
		
    $eredmeny=mysqli_query($a, "SELECT VERSENYSZAM AS nev from versenyszamok where sportag_azon = (SELECT AZON FROM `sportagak` WHERE nev='Kajak-kenu')AND FERFI_NOI='$nem';");
    while($sor=mysqli_fetch_array($eredmeny))
        echo $sor['azon'] . "<br/>";

	}
	
	/*
	if(isset($_POST['a7']))
	{
		$a6=$_POST['a6'];
		$=mysqli_query($a,"");
		
		while($sor=mysqli_fetch_array($))
		{
			echo $sor[''];
			echo "<br>";
		}
	}
	*/
	
	if (isset($_POST["a9"])) 
	{
		$orszag=$_POST['a8'];
		$erem=$_POST['a10'];
		$eredmeny=mysqli_query($a, "UPDATE erem_tabla set $erem=$erem+1 WHERE orszag_azon = (SELECT AZON from orszagok where orszag='$orszag')");
	}
	if (isset($_POST['a11'])) {
		$eredmeny=mysqli_query($a,'SELECT orszag FROM orszagok ;');
		while ($sor=mysqli_fetch_array($eredmeny))
		{
			echo $sor['orszag'] . '<br/>';
		}
	}
	
	if (isset($_POST['a13'])) 
	{
		mysqli_query($a,'DELETE FROM orszagok WHERE ORSZAG IN (SELECT orszag from orszagok where azon IN(SELECT DISTINCT orszag_azon from versenyzok WHERE AZON NOT IN(SELECT versenyzo_azon from eredmenyek where helyezes<=3)))');
	}


?>