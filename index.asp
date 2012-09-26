<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-9" />
<title></title>
<!--
/*
#POWERED BY FIRAT KOYUNCU
#T.C. Kimlik No Doğrulama Sistemi
#Yazar: Firat KOYUNCU
#Nick: FK Designer
#Twitter Sayfasi: www.twitter.com/fkdesigner
*/
-->
<style type="text/css">
.giris_baslik { font-family:Verdana, Arial, Helvetica, sans-serif; font-size:10px; color:#FF0000; }
.baslik { font-family:Verdana, Arial, Helvetica, sans-serif; font-size:10px; color:#000000; font-weight:bold; }
</style>
<script type="text/javascript" language="javascript">
function kontrol(){
	//Boş bırakılamaz.
	if (tc_kontrol.tc_kimlik_no.value == ""){
	document.getElementById("sonuc").innerHTML = "<b><font face='verdana' size='1' color='red'>Kimlik numaranızı giriniz</font></b>";
	}
	else{
	document.gerElementById("sonuc").innetHTML = ".";
	}
	
}
</script>
</head>
<body>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<table width="804" border="1" align="center">
  <tr>
    <td width="794">
	<form action="kontrol.asp" method="post" name="tc_kontrol" id="tc_kontrol">
	<table width="709" border="0" align="center">
      <tr>
        <td colspan="3" class="baslik" align="center">T.C. KİMLİK NUMARASI KONTROL SİSTEMİ </td>
      </tr>
	    <tr>
        <td colspan="3">&nbsp;</td>
      </tr>
      <tr>
        <td width="180" height="25"  valign="middle" class="giris_baslik">T.C. Kimlik Numarası</td>
        <td width="7" valign="middle" height="25" class="giris_baslik">:</td>
        <td width="508" height="25" valign="middle"><label>
          <div style="height:25px; vertical-align:middle;">
          <input type="text" name="tc_kimlik_no" size="30" maxlength="11" onkeyup="kontrol()" style="float:left;" /><div id="sonuc" style="width:200px; height:25px; float:left; vertical-align:baseline; padding-top:5px; padding-left:5px;"></div>
          &nbsp;&nbsp;&nbsp;<input type="submit" name="Submit" value="Kontrol Et" />
         </div>
        </label></td>
      </tr>
      <tr>
        <td colspan="3">
		</td>
      </tr>
    </table>
	</form>
	</td>
  </tr>
</table>
</body>
</html>
