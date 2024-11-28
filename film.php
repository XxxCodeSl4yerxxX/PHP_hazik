<?php
	
	$a=mysqli_connect("localhost","root","");
	mysqli_select_db($a,"film");
	
	if(isset($_POST['a1']))
	{
		$eredmeny=mysqli_query($a,"SELECT szinesz FROM `szereplo` WHERE szinesz=szerep;");
		
		while($sor=mysqli_fetch_array($eredmeny))
		{
			echo $sor['szinesz']."<br>";
		}
	}
	
	if(isset($_POST['a3']))
	{
		$ertek=$_POST['a2'];
		$eredmeny=mysqli_query($a,"SELECT film.cim AS cim, COUNT(stab.szereploid) AS szam FROM szereplo,stab,film WHERE szereplo.id=stab.szereploid AND stab.filmid=film.id  GROUP BY film.cim HAVING szam<'$ertek'");
		
		while($sor=mysqli_fetch_array($eredmeny))
		{
			echo $sor['cim']." ".$sor['szam']."<br>";
		}
	}
	
	if(isset($_POST['a5']))
	{
		$ertek=$_POST['a4'];
		$eredmeny=mysqli_query($a,"SELECT szerep AS szepnev,szinesz AS szinnev FROM szereplo,stab,film WHERE szereplo.id=stab.szereploid AND stab.filmid=film.id AND film.cim='$ertek';");
		
		while($sor=mysqli_fetch_array($eredmeny))
		{
			echo "szerepnév: ".$sor['szepnev']."/ "."szinésznév: ".$sor['szinnev']."<br>";
		}
	}
	
	if(isset($_POST['a7']))
	{
		$eredmeny=mysqli_query($a,"SELECT szinesz FROM `szereplo` WHERE szinesz=szerep;");
		
		while($sor=mysqli_fetch_array($eredmeny))
		{
			echo $sor['szinesz']."<br>";
		}
	}
	
	if(isset($_POST['a9']))
	{
		$a="";
		$b="";
		$c="";
		$d="";
		$e="";
		$f="";
		$g="";
		$h="";
		$i="";
		if(isset($_POST['a8'])) $a="";
		if(isset($_POST['b8']))
		if(isset($_POST['c8']))
		if(isset($_POST['d8']))
		if(isset($_POST['e8']))
		if(isset($_POST['f8']))
		if(isset($_POST['g8']))
		if(isset($_POST['h8']))
		if(isset($_POST['i8']))
	}
?>