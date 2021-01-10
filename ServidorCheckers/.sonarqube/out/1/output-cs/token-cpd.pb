�
oD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\DataAccess\DataManager\AdminDataManager.cs
	namespace 	

DataAccess
 
. 
DataManager  
{ 
public 

class 
AdminDataManager !
{ 
private 
readonly 
JugadoresDBEntities ,
dataBase- 5
=6 7
new8 ;
JugadoresDBEntities< O
(O P
)P Q
;Q R
public		 
bool		 
CheckNickname		 !
(		! "
string		" (
nickname		) 1
)		1 2
{

 	
bool 
exist 
= 
false 
; 
exist 
= 
dataBase 
. 
Administrador *
.* +
Any+ .
(. /
admin/ 4
=>5 7
admin8 =
.= >

apodoAdmin> H
.H I
EqualsI O
(O P
nicknameP X
)X Y
)Y Z
;Z [
return 
exist 
; 
} 	
public 
bool 
EsPasswordCorrecto &
(& '
string' -
password. 6
,6 7
string8 >
nickname? G
)G H
{ 	
bool 
correctPassword  
=! "
false# (
;( )
var 
playerSearched 
=  
dataBase! )
.) *
Administrador* 7
.7 8
Where8 =
(= >
admin> C
=>D F
adminG L
.L M

apodoAdminM W
.W X
EqualsX ^
(^ _
nickname_ g
)g h
)h i
.i j
FirstOrDefaultj x
<x y
Administrador	y �
>
� �
(
� �
)
� �
;
� �
if 
( 
HashManager 
. 
CompareHash '
(' (
password( 0
,0 1
playerSearched2 @
.@ A
contraseniaA L
)L M
)M N
{ 
correctPassword 
=  !
true" &
;& '
} 
return 
correctPassword "
;" #
} 	
} 
} �
jD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\DataAccess\DataManager\HashManager.cs
	namespace 	

DataAccess
 
. 
DataManager  
{ 
public 

class 
HashManager 
{ 
public 
HashManager 
( 
) 
{ 	
}		 	
public 
String 

TextToHash  
(  !
string! '

sourceData( 2
)2 3
{ 	
return 
BCrypt 
. 
Net 
. 
BCrypt $
.$ %
HashPassword% 1
(1 2

sourceData2 <
)< =
;= >
} 	
public 
static 
bool 
CompareHash &
(& '
string' -
	inputText. 7
,7 8
string9 ?
hashText@ H
)H I
{ 	
bool 
correctPassword  
=! "
false# (
;( )
if 
( 
BCrypt 
. 
Net 
. 
BCrypt !
.! "
Verify" (
(( )
	inputText) 2
,2 3
hashText4 <
)< =
)= >
{ 
correctPassword 
=  !
true" &
;& '
} 
return 
correctPassword "
;" #
} 	
} 
} ��
qD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\DataAccess\DataManager\JugadorDataManager.cs
	namespace 	

DataAccess
 
. 
DataManager  
{ 
public

 

class

 
JugadorDataManager

 #
{ 
public 
static 
readonly 
string %
ACTIVATION_STATE& 6
=7 8
$str9 H
;H I
public 
static 
readonly 
string %
ACTIVE_STATE& 2
=3 4
$str5 =
;= >
public 
static 
readonly 
string %
REPORTED_STATE& 4
=5 6
$str7 D
;D E
public 
static 
readonly 
string %

DOWN_STATE& 0
=1 2
$str3 9
;9 :
private 
readonly 
JugadoresDBEntities ,
dataBase- 5
=6 7
new8 ;
JugadoresDBEntities< O
(O P
)P Q
;Q R
public 
bool 
CheckNickname !
(! "
string" (
nickname) 1
)1 2
{ 	
bool 
existe 
= 
false 
;  
existe 
= 
dataBase 
. 
Jugador %
.% &
Any& )
() *
jugador* 1
=>2 4
jugador5 <
.< =
apodo= B
.B C
EqualsC I
(I J
nicknameJ R
)R S
)S T
;T U
return 
existe 
; 
} 	
public 
bool 

CheckState 
( 
string %
nickname& .
). /
{ 	
bool 
existe 
= 
false 
;  
existe   
=   
dataBase   
.   
Jugador   %
.  % &
Any  & )
(  ) *
jugador  * 1
=>  2 4
jugador  5 <
.  < =
apodo  = B
.  B C
Equals  C I
(  I J
nickname  J R
)  R S
&&  T V
jugador  W ^
.  ^ _
status  _ e
.  e f
Equals  f l
(  l m
ACTIVE_STATE  m y
)  y z
)  z {
;  { |
return"" 
existe"" 
;"" 
}## 	
public%% 
bool%% 
CheckBannedState%% $
(%%$ %
string%%% +
nickname%%, 4
)%%4 5
{&& 	
bool'' 
banned'' 
='' 
false'' 
;''  
banned)) 
=)) 
dataBase)) 
.)) 
Jugador)) %
.))% &
Any))& )
())) *
jugador))* 1
=>))2 4
jugador))5 <
.))< =
apodo))= B
.))B C
Equals))C I
())I J
nickname))J R
)))R S
&&))T V
jugador))W ^
.))^ _
status))_ e
.))e f
Equals))f l
())l m

DOWN_STATE))m w
)))w x
)))x y
;))y z
return++ 
banned++ 
;++ 
},, 	
public.. 
bool.. 
EsPasswordCorrecto.. &
(..& '
string..' -
password... 6
,..6 7
string..8 >
nickname..? G
)..G H
{// 	
bool00 
correctPassword00  
=00! "
false00# (
;00( )
var22 
playerSearched22 
=22  
dataBase22! )
.22) *
Jugador22* 1
.221 2
Where222 7
(227 8
player228 >
=>22? A
player22B H
.22H I
apodo22I N
.22N O
Equals22O U
(22U V
nickname22V ^
)22^ _
)22_ `
.22` a
FirstOrDefault22a o
<22o p
Jugador22p w
>22w x
(22x y
)22y z
;22z {
if44 
(44 
HashManager44 
.44 
CompareHash44 '
(44' (
password44( 0
,440 1
playerSearched442 @
.44@ A
contrasenia44A L
)44L M
)44M N
{55 
correctPassword66 
=66  !
true66" &
;66& '
}77 
return88 
correctPassword88 "
;88" #
}99 	
public;; 
bool;; 
CorrectAnswer;; !
(;;! "
string;;" (
nickname;;) 1
,;;1 2
string;;3 9
answer;;: @
);;@ A
{<< 	
bool== 
	isCorrect== 
=== 
false== "
;==" #
	isCorrect?? 
=?? 
dataBase??  
.??  !
Jugador??! (
.??( )
Any??) ,
(??, -
jugador??- 4
=>??5 7
jugador??8 ?
.??? @
apodo??@ E
==??F H
nickname??I Q
&&??R T
jugador??U \
.??\ ]!
respuestaConfirmacion??] r
==??s u
answer??v |
)??| }
;??} ~
returnAA 
	isCorrectAA 
;AA 
}BB 	
publicDD 
boolDD 
PinCorrectoDD 
(DD  
stringDD  &
nicknameDD' /
,DD/ 0
stringDD1 7
	pinPlayerDD8 A
)DDA B
{EE 	
boolFF 

esCorrectoFF 
=FF 
falseFF #
;FF# $

esCorrectoHH 
=HH 
dataBaseHH !
.HH! "
JugadorHH" )
.HH) *
AnyHH* -
(HH- .
jugadorHH. 5
=>HH6 8
jugadorHH9 @
.HH@ A
apodoHHA F
==HHG I
nicknameHHJ R
&&HHS U
jugadorHHV ]
.HH] ^
pinConfirmacionHH^ m
==HHn p
	pinPlayerHHq z
)HHz {
;HH{ |
returnJJ 

esCorrectoJJ 
;JJ 
}KK 	
publicMM 
intMM 
SaveNewPlayerMM  
(MM  !
JugadorMM! (
jugadorNuevoMM) 5
)MM5 6
{NN 	
intOO 
guardadoOO 
;OO 
dataBasePP 
.PP 
JugadorPP 
.PP 
AddPP  
(PP  !
jugadorNuevoPP! -
)PP- .
;PP. /
tryQQ 
{RR 
guardadoSS 
=SS 
dataBaseSS #
.SS# $
SaveChangesSS$ /
(SS/ 0
)SS0 1
;SS1 2
}TT 
catchUU 
(UU 
DbUpdateExceptionUU $
)UU$ %
{VV 
throwWW 
newWW 
DbUpdateExceptionWW +
(WW+ ,
)WW, -
;WW- .
}XX 
returnZZ 
guardadoZZ 
;ZZ 
}[[ 	
public]] 
int]] 
VerifyNewPlayer]] "
(]]" #
Jugador]]# *
verifyPlayer]]+ 7
)]]7 8
{^^ 	
int__ 
saved__ 
=__ 
$num__ 
;__ 
try`` 
{aa 
varbb 
playerStatebb 
=bb  !
dataBasebb" *
.bb* +
Jugadorbb+ 2
.bb2 3
Wherebb3 8
(bb8 9
playerbb9 ?
=>bb@ B
verifyPlayerbbC O
.bbO P
apodobbP U
==bbV X
playerbbY _
.bb_ `
apodobb` e
)bbe f
.bbf g
FirstOrDefaultbbg u
<bbu v
Jugadorbbv }
>bb} ~
(bb~ 
)	bb �
;
bb� �
playerStatecc 
.cc 
statuscc "
=cc# $
ACTIVE_STATEcc% 1
;cc1 2
saveddd 
=dd 
dataBasedd  
.dd  !
SaveChangesdd! ,
(dd, -
)dd- .
;dd. /
}ff 
catchgg 
(gg 
DbUpdateExceptiongg $
)gg$ %
{hh 
throwii 
newii 
DbUpdateExceptionii +
(ii+ ,
)ii, -
;ii- .
}jj 
returnll 
savedll 
;ll 
}mm 	
publicoo 
booloo 

CheckEmailoo 
(oo 
stringoo %
emailoo& +
)oo+ ,
{pp 	
boolqq 
existsPlayerqq 
=qq 
falseqq  %
;qq% &
existsPlayerss 
=ss 
dataBasess #
.ss# $
Jugadorss$ +
.ss+ ,
Anyss, /
(ss/ 0
jugadorss0 7
=>ss8 :
jugadorss; B
.ssB C
correoElectronicossC T
==ssU W
emailssX ]
)ss] ^
;ss^ _
returnuu 
existsPlayeruu 
;uu  
}vv 	
publicxx 
Jugadorxx 
ChangePinByNicknamexx *
(xx* +
stringxx+ 1
nicknamexx2 :
)xx: ;
{yy 	
varzz 
randomGeneratorzz 
=zz  !!
RandomNumberGeneratorzz" 7
.zz7 8
Createzz8 >
(zz> ?
)zz? @
;zz@ A
byte{{ 
[{{ 
]{{ 
data{{ 
={{ 
new{{ 
byte{{ "
[{{" #
$num{{# $
]{{$ %
;{{% &
randomGenerator|| 
.|| 
GetBytes|| $
(||$ %
data||% )
)||) *
;||* +
int~~ 

dataNumber~~ 
=~~ 
Math~~ !
.~~! "
Abs~~" %
(~~% &
BitConverter~~& 2
.~~2 3
ToInt32~~3 :
(~~: ;
data~~; ?
,~~? @
$num~~A B
)~~B C
)~~C D
;~~D E
int 
numberOfDigits 
=  
(! "
int" %
)% &
Math& *
.* +
Floor+ 0
(0 1
Math1 5
.5 6
Log106 ;
(; <

dataNumber< F
)F G
)G H
;H I
int
�� 
	pinNumber
�� 
=
�� 
$num
�� 
;
�� 
if
�� 
(
�� 
numberOfDigits
�� 
>=
�� !
$num
��" #
)
��# $
{
�� 
	pinNumber
�� 
=
�� 
(
�� 
int
��  
)
��  !
Math
��! %
.
��% &
Truncate
��& .
(
��. /
(
��/ 0

dataNumber
��0 :
/
��; <
Math
��= A
.
��A B
Pow
��B E
(
��E F
$num
��F H
,
��H I
numberOfDigits
��J X
-
��Y Z
$num
��[ \
)
��\ ]
)
��] ^
)
��^ _
;
��_ `
}
�� 
Jugador
�� 
player
�� 
=
�� 
dataBase
�� %
.
��% &
Jugador
��& -
.
��- .
Where
��. 3
(
��3 4
playerSearch
��4 @
=>
��A C
playerSearch
��D P
.
��P Q
apodo
��Q V
==
��W Y
nickname
��Z b
)
��b c
.
��c d
FirstOrDefault
��d r
<
��r s
Jugador
��s z
>
��z {
(
��{ |
)
��| }
;
��} ~
player
�� 
.
�� 
pinConfirmacion
�� "
=
��# $
	pinNumber
��% .
.
��. /
ToString
��/ 7
(
��7 8
)
��8 9
;
��9 :
dataBase
�� 
.
�� 
SaveChanges
��  
(
��  !
)
��! "
;
��" #
return
�� 
player
�� 
;
�� 
}
�� 	
public
�� 
int
�� 
ChangePassword
�� !
(
��! "
string
��" (
nickname
��) 1
,
��1 2
string
��3 9
newPassword
��: E
)
��E F
{
�� 	
int
�� 
saved
�� 
=
�� 
$num
�� 
;
�� 
try
�� 
{
�� 
var
�� 
playerState
�� 
=
��  !
dataBase
��" *
.
��* +
Jugador
��+ 2
.
��2 3
Where
��3 8
(
��8 9
player
��9 ?
=>
��@ B
nickname
��C K
==
��L N
player
��O U
.
��U V
apodo
��V [
)
��[ \
.
��\ ]
FirstOrDefault
��] k
<
��k l
Jugador
��l s
>
��s t
(
��t u
)
��u v
;
��v w
playerState
�� 
.
�� 
contrasenia
�� '
=
��( )
newPassword
��* 5
;
��5 6
saved
�� 
=
�� 
dataBase
��  
.
��  !
SaveChanges
��! ,
(
��, -
)
��- .
;
��. /
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
)
��$ %
{
�� 
throw
�� 
new
�� 
DbUpdateException
�� +
(
��+ ,
)
��, -
;
��- .
}
�� 
return
�� 
saved
�� 
;
�� 
}
�� 	
public
�� 
int
�� 
	BanPlayer
�� 
(
�� 
string
�� #
nickname
��$ ,
)
��, -
{
�� 	
const
�� 
int
�� #
PLAYER_ALREADY_BANNED
�� +
=
��, -
$num
��. /
;
��/ 0
int
�� 
saved
�� 
=
�� 
$num
�� 
;
�� 
try
�� 
{
�� 
var
�� 
reportedPlayer
�� "
=
��# $
dataBase
��% -
.
��- .
Jugador
��. 5
.
��5 6
Where
��6 ;
(
��; <
player
��< B
=>
��C E
nickname
��F N
==
��O Q
player
��R X
.
��X Y
apodo
��Y ^
)
��^ _
.
��_ `
FirstOrDefault
��` n
<
��n o
Jugador
��o v
>
��v w
(
��w x
)
��x y
;
��y z
if
�� 
(
�� 
reportedPlayer
�� !
.
��! "
status
��" (
==
��) +

DOWN_STATE
��, 6
)
��6 7
{
�� 
saved
�� 
=
�� #
PLAYER_ALREADY_BANNED
�� 1
;
��1 2
}
�� 
else
�� 
if
�� 
(
�� 
reportedPlayer
�� '
.
��' (
status
��( .
!=
��/ 1

DOWN_STATE
��2 <
)
��< =
{
�� 
reportedPlayer
�� "
.
��" #
status
��# )
=
��* +

DOWN_STATE
��, 6
;
��6 7
saved
�� 
=
�� 
dataBase
�� $
.
��$ %
SaveChanges
��% 0
(
��0 1
)
��1 2
;
��2 3
}
�� 
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
)
��$ %
{
�� 
throw
�� 
new
�� 
DbUpdateException
�� +
(
��+ ,
)
��, -
;
��- .
}
�� 
return
�� 
saved
�� 
;
�� 
}
�� 	
public
�� 
Jugador
�� !
GetPlayerByNickname
�� *
(
��* +
string
��+ 1
playerNickname
��2 @
)
��@ A
{
�� 	
Jugador
�� 
searchedPlayer
�� "
=
��# $
dataBase
��% -
.
��- .
Jugador
��. 5
.
��5 6
Where
��6 ;
(
��; <
playerSearch
��< H
=>
��I K
playerSearch
��L X
.
��X Y
apodo
��Y ^
==
��_ a
playerNickname
��b p
)
��p q
.
��q r
FirstOrDefault��r �
<��� �
Jugador��� �
>��� �
(��� �
)��� �
;��� �
return
�� 
searchedPlayer
�� !
;
��! "
}
�� 	
public
�� 
Dominio
�� 
.
�� 
Jugador
�� !
GetDomainPlayerByID
�� 2
(
��2 3
int
��3 6
playerID
��7 ?
)
��? @
{
�� 	
Jugador
�� 
queriedPlayer
�� !
=
��" #
null
��$ (
;
��( )
queriedPlayer
�� 
=
�� 
dataBase
�� $
.
��$ %
Jugador
��% ,
.
��, -
Find
��- 1
(
��1 2
playerID
��2 :
)
��: ;
;
��; <
Dominio
�� 
.
�� 
Jugador
�� 
matchedPlayer
�� )
=
��* +
new
��, /
Dominio
��0 7
.
��7 8
Jugador
��8 ?
{
�� 
Apodo
�� 
=
�� 
queriedPlayer
�� %
.
��% &
apodo
��& +
,
��+ ,
Contrasenia
�� 
=
�� 
queriedPlayer
�� +
.
��+ ,
contrasenia
��, 7
,
��7 8
CorreoElectronico
�� !
=
��" #
queriedPlayer
��$ 1
.
��1 2
correoElectronico
��2 C
,
��C D
Status
�� 
=
�� 
queriedPlayer
�� &
.
��& '
status
��' -
,
��- .#
RespuestaConfirmacion
�� %
=
��& '
queriedPlayer
��( 5
.
��5 6#
respuestaConfirmacion
��6 K
,
��K L"
PreguntaRecuperacion
�� $
=
��% &
queriedPlayer
��' 4
.
��4 5"
preguntaRecuperacion
��5 I
,
��I J
PinConfirmacion
�� 
=
��  !
queriedPlayer
��" /
.
��/ 0
pinConfirmacion
��0 ?
,
��? @
	IdCreador
�� 
=
�� 
queriedPlayer
�� )
.
��) *
	idCreador
��* 3
,
��3 4

IdLenguaje
�� 
=
�� 
queriedPlayer
�� *
.
��* +
idioma
��+ 1
}
�� 
;
�� 
return
�� 
matchedPlayer
��  
;
��  !
}
�� 	
}
�� 
}�� �J
qD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\DataAccess\DataManager\RankingDataManager.cs
	namespace 	

DataAccess
 
. 
DataManager  
{ 
public 

class 
RankingDataManager #
{ 
private 
readonly 
JugadoresDBEntities ,
context- 4
=5 6
new7 :
JugadoresDBEntities; N
(N O
)O P
;P Q
private 
const 
int 
CHECKER_POINT_VALUE -
=. /
$num0 2
;2 3
public 
void 
NewPlayerRank !
(! "
Jugador" )
	newPlayer* 3
)3 4
{ 	
string 
playerNickname !
=" #
	newPlayer$ -
.- .
apodo. 3
;3 4
	newPlayer 
= 
GetPlayerByNickname +
(+ ,
playerNickname, :
): ;
;; <
DateTime 

actualDate 
=  !
DateTime" *
.* +
Now+ .
;. /
string 
sqlDate 
= 

actualDate '
.' (
ToString( 0
(0 1
$str1 J
)J K
;K L

actualDate 
= 
Convert  
.  !

ToDateTime! +
(+ ,
sqlDate, 3
)3 4
;4 5
Ranking 
newRank 
= 
new !
Ranking" )
() *
)* +
{ 
idDuenio 
= 
	newPlayer $
.$ %
	idJugador% .
,. /
fechaRegistracion !
=" #

actualDate$ .
,. /
numeroVictorias 
=  !
$num" #
,# $
numeroPerdidas 
=  
$num! "
," #
partidasJugadas 
=  !
$num" #
,# $
rank   
=   
$num   
}!! 
;!! 
try"" 
{## 
context$$ 
.$$ 
Ranking$$ 
.$$  
Add$$  #
($$# $
newRank$$$ +
)$$+ ,
;$$, -
}%% 
catch&& 
(&& 
DbUpdateException&& $
)&&$ %
{'' 
throw(( 
new(( 
DbUpdateException(( +
(((+ ,
)((, -
;((- .
})) 
}++ 	
public-- 
List-- 
<-- 

DataAccess-- 
.-- 
Ranking-- &
>--& '
GetRankingList--( 6
(--6 7
)--7 8
{.. 	
List// 
<// 

DataAccess// 
.// 
Ranking// #
>//# $
playerRankings//% 3
=//4 5
null//6 :
;//: ;
playerRankings11 
=11 
context11 $
.11$ %
Ranking11% ,
.11, -
OrderBy11- 4
(114 5
position115 =
=>11> @
position11A I
.11I J
rank11J N
)11N O
.11O P
ToList11P V
(11V W
)11W X
;11X Y
return33 
playerRankings33 !
;33! "
}44 	
public66 

DataAccess66 
.66 
Jugador66 !
GetPlayerByNickname66" 5
(665 6
string666 <
playerNickname66= K
)66K L
{77 	
try88 
{99 
Jugador:: 
searchedPlayer:: &
=::' (
context::( /
.::/ 0
Jugador::0 7
.::7 8
Where::8 =
(::= >
playerSearch::> J
=>::K M
playerSearch::N Z
.::Z [
apodo::[ `
==::a c
playerNickname::d r
)::r s
.::s t
FirstOrDefault	::t �
<
::� �
Jugador
::� �
>
::� �
(
::� �
)
::� �
;
::� �
return<< 
searchedPlayer<< %
;<<% &
}== 
catch>> 
(>> 
DbUpdateException>> $
)>>$ %
{?? 
throw@@ 
new@@ 
DbUpdateException@@ +
(@@+ ,
)@@, -
;@@- .
}AA 
}BB 	
publicDD 
voidDD 
UpdateMatchResultsDD &
(DD& '
DominioDD' .
.DD. /
JugadorDD/ 6
	playerOneDD7 @
,DD@ A
intDDB E
playerOneCheckersDDF W
,DDW X
DominioDDY `
.DD` a
JugadorDDa h
	playerTwoDDi r
,DDr s
intDDt w
playerTwoCheckers	DDx �
,
DD� �
int
DD� � 
playerNumberWinner
DD� �
)
DD� �
{EE 	
tryFF 
{GG 
ifHH 
(HH 
playerNumberWinnerHH &
==HH' )
$numHH* +
)HH+ ,
{II 
varJJ 
winnerRankingChangeJJ +
=JJ, -
contextJJ. 5
.JJ5 6
RankingJJ6 =
.JJ= >
WhereJJ> C
(JJC D
rankingJJD K
=>JJL N
	playerOneJJO X
.JJX Y
	IdJugadorJJY b
==JJc e
rankingJJf m
.JJm n
idDuenioJJn v
)JJv w
.JJw x
FirstOrDefault	JJx �
<
JJ� �
Ranking
JJ� �
>
JJ� �
(
JJ� �
)
JJ� �
;
JJ� �
winnerRankingChangeKK '
.KK' (
rankKK( ,
+=KK- /
(KK0 1
playerOneCheckersKK1 B
*KKC D
$numKKE G
)KKG H
+KKI J
$numKKK M
;KKM N
winnerRankingChangeLL '
.LL' (
numeroVictoriasLL( 7
+=LL8 :
$numLL; <
;LL< =
winnerRankingChangeMM '
.MM' (
partidasJugadasMM( 7
++MM7 9
;MM9 :
varNN 
loserRankingChangeNN *
=NN+ ,
contextNN- 4
.NN4 5
RankingNN5 <
.NN< =
WhereNN= B
(NNB C
rankingNNC J
=>NNK M
	playerTwoNNN W
.NNW X
	IdJugadorNNX a
==NNb d
rankingNNe l
.NNl m
idDuenioNNm u
)NNu v
.NNv w
FirstOrDefault	NNw �
<
NN� �
Ranking
NN� �
>
NN� �
(
NN� �
)
NN� �
;
NN� �
loserRankingChangeOO &
.OO& '
rankOO' +
+=OO, .
CHECKER_POINT_VALUEOO/ B
;OOB C
loserRankingChangePP &
.PP& '
numeroPerdidasPP' 5
+=PP6 8
$numPP9 :
;PP: ;
loserRankingChangeQQ &
.QQ& '
partidasJugadasQQ' 6
++QQ6 8
;QQ8 9
contextRR 
.RR 
SaveChangesRR '
(RR' (
)RR( )
;RR) *
}SS 
elseTT 
{UU 
varVV 
winnerRankingChangeVV +
=VV, -
contextVV. 5
.VV5 6
RankingVV6 =
.VV= >
WhereVV> C
(VVC D
rankingVVD K
=>VVL N
	playerTwoVVO X
.VVX Y
	IdJugadorVVY b
==VVc e
rankingVVf m
.VVm n
idDuenioVVn v
)VVv w
.VVw x
FirstOrDefault	VVx �
<
VV� �
Ranking
VV� �
>
VV� �
(
VV� �
)
VV� �
;
VV� �
winnerRankingChangeWW '
.WW' (
rankWW( ,
+=WW- /
(WW0 1
playerTwoCheckersWW1 B
*WWC D
$numWWE G
)WWG H
+WWI J
$numWWK M
;WWM N
winnerRankingChangeXX '
.XX' (
numeroVictoriasXX( 7
+=XX8 :
$numXX; <
;XX< =
winnerRankingChangeYY '
.YY' (
partidasJugadasYY( 7
++YY7 9
;YY9 :
varZZ 
loserRankingChangeZZ *
=ZZ+ ,
contextZZ- 4
.ZZ4 5
RankingZZ5 <
.ZZ< =
WhereZZ= B
(ZZB C
rankingZZC J
=>ZZK M
	playerOneZZN W
.ZZW X
	IdJugadorZZX a
==ZZb d
rankingZZe l
.ZZl m
idDuenioZZm u
)ZZu v
.ZZv w
FirstOrDefault	ZZw �
<
ZZ� �
Ranking
ZZ� �
>
ZZ� �
(
ZZ� �
)
ZZ� �
;
ZZ� �
loserRankingChange[[ &
.[[& '
rank[[' +
+=[[, .
CHECKER_POINT_VALUE[[/ B
;[[B C
loserRankingChange\\ &
.\\& '
rank\\' +
+=\\, .
CHECKER_POINT_VALUE\\/ B
;\\B C
loserRankingChange]] &
.]]& '
numeroPerdidas]]' 5
+=]]6 8
$num]]9 :
;]]: ;
loserRankingChange^^ &
.^^& '
partidasJugadas^^' 6
++^^6 8
;^^8 9
context__ 
.__ 
SaveChanges__ '
(__' (
)__( )
;__) *
}`` 
}aa 
catchbb 
(bb 
DbUpdateExceptionbb $
)bb$ %
{cc 
throwdd 
newdd 
DbUpdateExceptiondd +
(dd+ ,
)dd, -
;dd- .
}ee 
}ff 	
}gg 
}hh �
pD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\DataAccess\DataManager\ReportDataManager.cs
	namespace		 	

DataAccess		
 
.		 
DataManager		  
{

 
public 

class 
ReportDataManager "
{ 
private 
readonly 
JugadoresDBEntities ,
context- 4
=5 6
new7 :
JugadoresDBEntities; N
(N O
)O P
;P Q
public 
List 
< 

DataAccess 
. 
Reporte &
>& '
GetReportList( 5
(5 6
)6 7
{ 	
List 
< 

DataAccess 
. 
Reporte #
># $
playerReports% 2
=3 4
null5 9
;9 :
playerReports 
= 
context #
.# $
Reporte$ +
.+ ,
ToList, 2
(2 3
)3 4
;4 5
return 
playerReports  
;  !
} 	
public 
int 
ReportPlayer 
(  
int  #
idPlayerReported$ 4
,4 5
int6 9
idPlayerReporting: K
,K L
stringL R
reportExplainS `
)` a
{ 	
int 

saveReport 
; 

DataAccess 
. 
Reporte 
	newReport (
=) *
new+ .

DataAccess/ 9
.9 :
Reporte: A
(A B
)B C
{ 

idAcusador 
= 
idPlayerReporting .
,. /
idReportado 
= 
idPlayerReported .
,. /
descripcionAcuso  
=! "
reportExplain# 0
,0 1
}   
;   
context!! 
.!! 
Reporte!! 
.!! 
Add!! 
(!!  
	newReport!!  )
)!!) *
;!!* +
try"" 
{## 

saveReport$$ 
=$$ 
context$$ $
.$$$ %
SaveChanges$$% 0
($$0 1
)$$1 2
;$$2 3
}%% 
catch&& 
(&& 
DbUpdateException&& $
)&&$ %
{'' 
throw(( 
new(( 
DbUpdateException(( +
(((+ ,
)((, -
;((- .
})) 
return++ 

saveReport++ 
;++ 
},, 	
}-- 
}.. �
jD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\DataAccess\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str %
)% &
]& '
[ 
assembly 	
:	 

AssemblyDescription 
( 
$str !
)! "
]" #
[		 
assembly		 	
:			 
!
AssemblyConfiguration		  
(		  !
$str		! #
)		# $
]		$ %
[

 
assembly

 	
:

	 

AssemblyCompany

 
(

 
$str

 
)

 
]

 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str '
)' (
]( )
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *