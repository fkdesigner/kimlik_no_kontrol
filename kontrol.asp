<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-9" />
<title>T.C. Kimlik No Do�rulama Sistemi</title>
</head>
<body>
<%
'#POWERED BY FIRAT KOYUNCU
'#T.C. Kimlik No Do�rulama Sistemi
'#Yazar: Firat KOYUNCU
'#Nick: FK Designer
'#Twitter Sayfasi: www.twitter.com/fkdesigner

'T.C. Kimlik numaras�n� al�yoruz ve de�i�kene at�yoruz;
tc_kimlik_no = request.Form("tc_kimlik_no")
'Sadece say� girildi�inden emin oluyoruz;
if IsNumeric(tc_kimlik_no) then
else
Response.Write ("<b><font face='verdana' size='2' color='red'>Ge�erli Bir Kimlik Numaras� De�il !</font></b><br><br><font face='verdana' size='1'><a href='index.asp' style='text-decoration:none;'> << geri </a></font>")
Response.End()
end if
'11 karakter girildi�inden emin oluyoruz;
karakter = Len(tc_kimlik_no)
if karakter = 11 then
else
Response.Write ("<b><font face='verdana' size='2' color='red'>Ge�erli Bir Kimlik Numaras� De�il !</font></b><br><br><font face='verdana' size='1'><a href='index.asp' style='text-decoration:none;'> << geri </a></font>")
Response.End()
end if
'#T.C. K�ML�K ALGOR�TMA BA�LANGICI;
'Numaralar� de�i�kenlere at�yoruz;
tc_1 = Mid (tc_kimlik_no, 1, 1)
tc_2 = Mid (tc_kimlik_no, 2, 1)
tc_3 = Mid (tc_kimlik_no, 3, 1)
tc_4 = Mid (tc_kimlik_no, 4, 1)
tc_5 = Mid (tc_kimlik_no, 5, 1)
tc_6 = Mid (tc_kimlik_no, 6, 1)
tc_7 = Mid (tc_kimlik_no, 7, 1)
tc_8 = Mid (tc_kimlik_no, 8, 1)
tc_9 = Mid (tc_kimlik_no, 9, 1)
tc_10 = Mid (tc_kimlik_no, 10, 1)
tc_11 = Mid (tc_kimlik_no, 11, 1)
'�lk hane 0 olamaz;
if tc_1 = 0 then
Response.Write ("<b><font face='verdana' size='2' color='red'>Ge�erli Bir Kimlik Numaras� De�il !</font></b><br><br><font face='verdana' size='1'><a href='index.asp' style='text-decoration:none;'> << geri </a></font>")
Response.End()
else
end if
'1,3,5,7 ve 9 hanelerin toplam�n�n 7 kat�ndan; 2,4,6 ve 8. hanelerin toplam� ��kart�ld���nda, elde edilen sonucun 10'a b�l�m�nden kalan, bize 10. haneyi verir.
toplam_1 = 0 + tc_1 + tc_3 + tc_5 + tc_7 + tc_9
toplam_1 = toplam_1 * 7
toplam_2 = 0 + tc_2 + tc_4 + tc_6 + tc_8
sonuc = toplam_1 - toplam_2
sonuc = sonuc Mod 10 + 0
if sonuc + 0 = tc_10 + 0 then
else
Response.Write("<b><font face='verdana' size='2' color='red'>Ge�erli Bir Kimlik Numaras� De�il !</font></b><br><br><font face='verdana' size='1'><a href='index.asp' style='text-decoration:none;'> << geri </a></font>")
Response.End()
end if
'1,2,3,4,5,6,7,8,9. ve 10. hanelerin toplam�ndan elde edilen sonucun 10'a b�l�m�nden kalan, 11. haneyi verir.
son_toplam = 0 + tc_1 + tc_2 + tc_3 + tc_4 + tc_5 + tc_6 + tc_7 + tc_8 + tc_9 + tc_10
son_toplam = son_toplam Mod 10 + 0
if tc_11 + 0 = son_toplam + 0 then
else
Response.Write("<b><font face='verdana' size='2' color='red'>Ge�erli Bir Kimlik Numaras� De�il !</font></b><br><br><font face='verdana' size='1'><a href='index.asp' style='text-decoration:none;'> << geri </a></font>")
Response.End()
end if
'E�er b�t�n �artlar sa�lanm��sa i�lem ba�ar�l� olmu�tur.
Response.Write ("<b><font face='verdana' size='2' color='green'>Kimlik Numaras� Ge�erli</font></b><br></br><font face='verdana' size='1'><a href='index.asp' style='text-decoration:none;'> << geri </a></font>")
%>
</body>
</html>
