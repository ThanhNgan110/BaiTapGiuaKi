<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS only -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<div>
<h2>_Level 1</h2>
<h2>Processor</h2>
<form action="Order.jsp">

<input type="radio" name="processor" value="CeleronD">CeleronD
<input type="radio" name="processor" value="PentiumIV">PentiumIV
<input type="radio" name="processor" value="PentiumV">PentiumV
<h2>Accessories</h2>
<input type="checkbox" name="monitor" value="Monitor">Monitor
<h2>_Level 2</h2>
<select name="dlitem" multiple="multiple">
<option value="Camera">Camera</option>
<option value="Printer">Printer</option>
<option value="Scanner">Scanner</option>
</select>

<h2>_Level3</h2>
<select id="txtLuaChon" onchange="MonitorOption()">
<option value="Monitor">Monitor</option>
<option value="Printer">Printer</option>
<option value="Scanner">Scanner</option>
</select>
<!-- <select name="dlitem2" onchange="MonitorOption()">
<option value="DELL" name="dlmonitor">Monitor</option>
<option value="LENOVO">LENOVO</option>
<option value="ASUS">ASUS</option>
<option value="HANG KHAC">HANG KHAC</option>
</select> -->
<select id="selectMonitor" style="display:none" onchange="MonitorOther()">
<option value="DELL">DELL</option>
<option value="LENOVO">LENOVO</option>
<option value="ASUS">ASUS</option>
<option value="HANG KHAC">HANG KHAC</option>
</select>

<select id="selectPrinter" style="display:none" onchange="PrinterOther()">
<option value="Cannon">Cannon</option>
<option value="HP">HP</option>
<option value="Epson">Epson</option>
<option value="Brother">Brother</option>
<option value="HANG KHAC">HANG KHAC</option>
</select>

<select id="selectScanner" style="display:none" onchange="ScannerOther()" >
<option value="Plusktes">Plusktes</option>
<option value="HP">HP</option>
<option value="EBROTHER">EBROTHER</option>
<option value="HANG KHAC">HANG KHAC</option>
</select>

<div id="OtherDell" style="display:none;">
<input type="checkbox" id="DP1" name="DP1" value="DP1">
<label for="DP1">DP1</label>
<input type="checkbox" id="DP2" name="DP2" value="DP2">
<label for="DP2">DP2</label>
<input type="checkbox" id="DP3" name="DP3" value="DP3">
<label for="DP3">DP3</label>
</div>



<div id="LenoVoOther" style="display: none;">
<input type="checkbox" id="SP1" name="SP1" value="SP1">
<label for="SP1">SP1</label>
<input type="checkbox" id="SP2" name="SP2" value="SP2">
<label for="SP2">SP2</label>
<input type="checkbox" id="SP3" name="SP3" value="SP3">
<label for="SP3">SP3</label>

</div>

<div id="AsusOther" style="display: none;">

  <input type="checkbox" id="AP1" name="AP1" value="AP1">
  <label for="AP1">AP1</label>
  <input type="checkbox" id="AP2" name="AP2" value="AP2">
  <label for="AP2">AP2</label>
  <input type="checkbox" id="AP3" name="AP3" value="AP3">
  <label for="AP3">AP3</label>
</div>

<div id="HangKhac" style="display: none;">
  <input type="checkbox" id="HP1" name="HP1" value="HP1">
  <label for="HP1">HP1</label>
  <input type="checkbox" id="HP2" name="HP2" value="HP2">
  <label for="HP2">HP2</label>
  <input type="checkbox" id="HP3" name="HP3" value="HP3">
  <label for="HP3">HP3</label>
</div>


<div id="Cannon" style="display: none;">
  <input type="checkbox" id="CP1" name="CP1" value="CP1">
  <label for="CP1">CP1</label>
  <input type="checkbox" id="CP2" name="CP2" value="CP2">
  <label for="CP2">CP2</label>
  <input type="checkbox" id="CP3" name="CP3" value="CP3">
  <label for="CP3">CP3</label>
</div>

<div id="HP" style="display: none;">
  <input type="checkbox" id="HP1" name="HP1" value="HP1">
  <label for="HP1">HP1</label>
  <input type="checkbox" id="HP2" name="HP2" value="HP2">
  <label for="HP2">HP2</label>
  <input type="checkbox" id="HP3" name="HP3" value="HP3">
  <label for="HP3">HP3</label>
</div>

<div id="Epson" style="display: none;">
  <input type="checkbox" id="HP1" name="HP1" value="HP1">
  <label for="HP1">EP1</label>
  <input type="checkbox" id="HP2" name="HP2" value="HP2">
  <label for="HP2">EP2</label>
  <input type="checkbox" id="HP3" name="HP3" value="HP3">
  <label for="HP3">EP3</label>
</div>
<div id="Brother" style="display: none;">
  <input type="checkbox" id="HP1" name="HP1" value="HP1">
  <label for="HP1">BP1</label>
  <input type="checkbox" id="HP2" name="HP2" value="HP2">
  <label for="HP2">BP2</label>
  <input type="checkbox" id="HP3" name="HP3" value="HP3">
  <label for="HP3">BP3</label>
</div>

<div id="HangKhac" style="display: none;">
  <input type="checkbox" id="HK1" name="HK1" value="HK1">
  <label for="HK1">HK1</label>
  <input type="checkbox" id="HK2" name="HK2" value="HK2">
  <label for="HK2">HK2</label>
  <input type="checkbox" id="HK3" name="HK3" value="HK3">
  <label for="HK3">HK3</label>
</div>

<div id="Plusktes" style="display: none;">
  <input type="checkbox" id="HP1" name="HP1" value="HP1">
  <label for="HP1">PP1</label>
  <input type="checkbox" id="HP2" name="HP2" value="HP2">
  <label for="HP2">PP2</label>
  <input type="checkbox" id="HP3" name="HP3" value="HP3">
  <label for="HP3">PP3</label>
</div>

<div id="HP2" style="display: none;">
  <input type="checkbox" id="HP1" name="HP1" value="HP1">
  <label for="HP1">HP1</label>
  <input type="checkbox" id="HP2" name="HP2" value="HP2">
  <label for="HP2">HP2</label>
  <input type="checkbox" id="HP3" name="HP3" value="HP3">
  <label for="HP3">HP3</label>
</div>

<div id="EBROTHER" style="display: none;">
  <input type="checkbox" id="HP1" name="HP1" value="HP1">
  <label for="HP1">EBP1</label>
  <input type="checkbox" id="HP2" name="HP2" value="HP2">
  <label for="HP2">EBP2</label>
  <input type="checkbox" id="HP3" name="HP3" value="HP3">
  <label for="HP3">EBP3</label>
</div>

<div id="HANG KHAC2" style="display: none;">
  <input type="checkbox" id="HP1" name="HP1" value="HP1">
  <label for="HP1">HK1</label>
  <input type="checkbox" id="HP2" name="HP2" value="HP2">
  <label for="HP2">HK2</label>
  <input type="checkbox" id="HP3" name="HP3" value="HP3">
  <label for="HP3">HK3</label>
</div>

<input type="text" id="txtluachon1">
<input  type="text" id="txtluachon2">
<button type="submit" class="btn btn-primary">PURCHASE</button>
</form>
</div>

<script type="text/javascript">
    function MonitorOption(){
      var giatri = document.getElementById("txtLuaChon").value;
      document.getElementById("txtluachon1").value = giatri;
      if(giatri == "Monitor"){
        document.getElementById("selectMonitor").style.display = "block";
        document.getElementById("selectPrinter").style.display = "none";
        document.getElementById("selectScanner").style.display = "none";
        }
      else if(giatri=="Printer"){
        document.getElementById("selectPrinter").style.display = "block";
        document.getElementById("selectMonitor").style.display = "none";
        document.getElementById("selectScanner").style.display = "none";
        }
     else{
        document.getElementById("selectScanner").style.display = "block";
        document.getElementById("selectMonitor").style.display = "none";
        document.getElementById("selectPrinter").style.display = "none";
        }
    }

    function MonitorOther(){
      var giatri =document.getElementById("selectMonitor").value;
      document.getElementById("txtluachon2").value=giatri;
      if(giatri=="DELL"){
       
        document.getElementById("OtherDell").style.display = "block";
        document.getElementById("LenoVoOther").style.display = "none";
        document.getElementById("AsusOther").style.display = "none";
        document.getElementById("HangKhac").style.display = "none";
      }
      else if(giatri=="LENOVO"){
        document.getElementById("LenoVoOther").style.display = "block";
        document.getElementById("OtherDell").style.display = "none";
        document.getElementById("AsusOther").style.display = "none";
        document.getElementById("HangKhac").style.display = "none";
      }
      else if(giatri=="ASUS"){
        document.getElementById("AsusOther").style.display = "block";
        document.getElementById("OtherDell").style.display = "none";
        document.getElementById("LenoVoOther").style.display = "none";
        document.getElementById("HangKhac").style.display = "none";
      }
      else{
        document.getElementById("HangKhac").style.display = "block";
        document.getElementById("OtherDell").style.display = "none";
        document.getElementById("LenoVoOther").style.display = "none";
        document.getElementById("AsusOther").style.display = "none";
      }
     
    }

    function PrinterOther(){
      var giatri =document.getElementById("selectPrinter").value;
      document.getElementById("txtluachon2").value=giatri;
      if(giatri =="Cannon"){
        document.getElementById("Cannon").style.display = "block";
        document.getElementById("HP").style.display = "none";
        document.getElementById("Epson").style.display = "none";
        document.getElementById("Brother").style.display = "none";
        document.getElementById("HangKhac").style.display = "none";
      }
      else if(giatri =="HP"){
        document.getElementById("HP").style.display = "block";
        document.getElementById("Cannon").style.display = "none";
        document.getElementById("Epson").style.display = "none";
        document.getElementById("Brother").style.display = "none";
        document.getElementById("HangKhac").style.display = "none";
      }
      else if(giatri =="Epson"){
        document.getElementById("Epson").style.display = "block";
        document.getElementById("Cannon").style.display = "none";
        document.getElementById("HP").style.display = "none";
        document.getElementById("Brother").style.display = "none";
        document.getElementById("HangKhac").style.display = "none";
      }
      else if(giatri =="Brother"){
        document.getElementById("Brother").style.display = "block";
        document.getElementById("Cannon").style.display = "none";
        document.getElementById("HP").style.display = "none";
        document.getElementById("Epson").style.display = "none";
        document.getElementById("HangKhac").style.display = "none";
      }
      else{
        document.getElementById("HangKhac").style.display = "block";
        document.getElementById("Cannon").style.display = "none";
        document.getElementById("HP").style.display = "none";
        document.getElementById("Epson").style.display = "none";
        document.getElementById("Brother").style.display = "none";
      }  

    }
/*     function ScannerOther(){
      var giatri =document.getElementById("selectScanner").value;
      document.getElementById("txtluachon2").value=giatri;
      if(giatri=="Plusket"){
        document.getElementById("Plusket").style.display = "block";
        document.getElementById("HP2").style.display = "none";
        document.getElementById("EBROTHER").style.display = "none";
        document.getElementById("HANG KHAC2").style.display = "none";
      }
      else if(giatri=="HP"){
        document.getElementById("HP2").style.display = "block";
        document.getElementById("Plusket").style.display = "none";
        document.getElementById("EBROTHER").style.display = "none";
        document.getElementById("HANG KHAC2").style.display = "none";
      }
      else if(giatri=="EBROTHER"){
        document.getElementById("EBROTHER").style.display = "block";
        document.getElementById("Plusket").style.display = "none";
        document.getElementById("HP2").style.display = "none";
        document.getElementById("HANG KHAC2").style.display = "none";
      }
      else{
        document.getElementById("HANG KHAC2").style.display = "block";
        document.getElementById("Plusket").style.display = "none";
        document.getElementById("HP2").style.display = "none";
        document.getElementById("EBROTHER").style.display = "none";
      }
      
     */
    
   
        

   
    
    

</script>
</body>
</html>