
#!bin/bash
#Script começa na linha 193
#\\||// BY J(*)RD150N \\||//
#----------INDEX TIPO "1"
index1() {
clear
echo -n "[+]Nome da sua html > " && read -r nomehtml
test $nomehtml
if [ $? = 0 ]; then
echo 
else echo "Atenção! Digite o nome para html"
sleep 1s
index1 
fi
echo -n "[+]Cor da fonte > " && read -r cor
echo -n "[+]Seu Nickname > "  && read -r Nick
echo -n "[+]Link da imagem > " && read -r imagem
echo -n "[+]Frase > " && read -r frase
echo -n "[+]greetz > " && read -r greetz 
echo -n "[+]musica > " && read -r musica
echo "
<html>
<head>
    <title>HACKED</title>
	<meta charset ="wutf-8">
<script>alert('owned')</script>
	<style>
		body {
			color: $cor ;
			background: #000;
			text-align: center;
			font-family: Verdana;
			font-size: 19px;
		}
		h1 {
			margin: 3px;
			font-size: 45px;
		}
	</style>
</head>
<body><br>
<h1>HACKED</h1>
 
<small>by $Nick <br><br>
<img src=$imagem><br><br>
<center>$frase</center>salve:<marquee><br>
 $greetz <br></marquee>
<iframe src=https://www.youtube.com/embed/$musica?autoplay=true\ width=0 height=0 frameborder=0></iframe>
</small>
</body>
</html>
 " >> $nomehtml.html
#fim do script (index 1)
clear
echo "Criado com Sucesso!"
sleep 1s
exit 
}

#----------INDEX TIPO "2"
index2() {
clear
echo -n "Nome da sua html > " && read -r nomehtml
test $nomehtml
if [ $? = 0 ]; then
echo 
else echo "Atenção! Digite o nome para html"
sleep 1s
index2
fi
echo -n "link background > " && read -r link
echo -n "Seu Nickname > " && read -r Nick
echo -n "salve > " && read -r salve
echo -n "escolha uma frase : " && read -r frase
echo -n "musica : " && read -r musica
echo "
<html>
<head>
<title>Owned</title>
<style>
<meta charset="utf-8">
body { 
  background: url("$link") no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  color: white;
}
.line1{
  font-family: Arial, sans-serif  ;
  font-size: 50px;
  text-shadow: grey 0px 0px 4px ;
}

.line2{
  font-family: Arial;
  font-size: 30px;
  text-shadow: grey 0px 0px 4px ;
}
.line3{
  font-family: HELVETICA ;
  font-size: 43px;
  text-shadow: grey 0px 0px 4px ;
}
.line4{
  font-family: HELVETICA ;
  font-size: 19px;
  text-shadow: grey 0px 0px 4px ;
}
.line5{
  font-family: HELVETICA ;
  font-size: 23px;
  text-shadow: grey 0px 0px 4px ;
}
.line6{
  font-family: Arial, sans-serif  ;
  font-size: 34px;
  text-shadow: darkred 0px 0px 4px ;
}
.twitter a{
  text-decoration: none;
  font-family: Arial, sans-serif  ;
  font-size: 32px;
}

}</style>
</head>
<body><center>
<table width=100% height=100%><td align=center>
<DIV class=line1><font color=grey><BIG><strong>HACKED</strong></BIG></div>
<DIV class=line2><font color=white><BIG>BY</BIG></div>
<DIV class=line3><font color=white><BIG> $Nick </BIG></div>
<DIV class=line1><font color=grey><BIG><strong> $frase </strong></BIG></div>
<DIV class=line2><font color=white><BIG> GREETZ:</BIG></div>
<marquee><DIV class=line4><font color=white><BIG> $salve </BIG></div></font></marquee>
<iframe src=\"https://www.youtube.com/embed/$musica?autoplay=true\"width=\"0\"height=\"0\"frameborder=\"0\"></iframe>
" >> $nomehtml.html
#fim do script(index 2)
clear
echo "Criado com Sucesso!"
sleep 1s
exit
}

#----------------BANNER--------------
banner() {
clear
sleep 1
echo "
010101010101010101010101010101010101010101010101010101
1               ********************                 1
0               * Gerador de index *                 0
1               *         by       *                 1
1               *    J(*)RD150N    *                 0
0               ********************                 1
010101010101010101010101010101010101010101010101010101
-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
" 
sleep 2
echo "
Escolha :
================================
[1]-> index1

[2]-> index2

[3]-> ajuda

[0]-> exit
================================
[?]Escolha um numero: " && read -r selindex
case $selindex in
1) index1;;
2) index2;;
3) ajuda;;
0) exit;;
*) echo "Invalido, escolha 1, 2, 3 ou 4"; sleep 1s; banner;;
esac
}

#-----------AJUDA
ajuda() {
echo "
  AJUDA
=============================================================
=-> use  cod hexadecimal para colocar a cor da fonte        =
=-> na imagem aconselho usar links do imgur                 =
=-> na musica vc cola so o id dela exemplo = pIU7P2vbTU     =
=                                                           =
=-> Background é o fundo da Página                          =
=-> Caso tenha algum erro, edite o proprio html             =
=-> obs == PODE OCORRER  ALGUM ERRO NA MUSICA. fica a seu   =
=   criterio configurar.                                    =
= ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++=
=             Salve especial pra Kyz Team                   =  
=============================================================
#############################################################
salve ->
-------------------------------------------------------------
John Kaiser, Mindset Security, LILITH, Kyz team 
-------------------------------------------------------------
Alivemindset, xCyf, Deivid, SmogHoax and  John-Cross
#############################################################"
read space
banner
}
#script começar aqui!
banner
