ô
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
Administrador	y Ü
>
Ü á
(
á à
)
à â
;
â ä
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
} £
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
} ˛è
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
)	bb Ä
;
bbÄ Å
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
ÄÄ 
	pinNumber
ÄÄ 
=
ÄÄ 
$num
ÄÄ 
;
ÄÄ 
if
ÇÇ 
(
ÇÇ 
numberOfDigits
ÇÇ 
>=
ÇÇ !
$num
ÇÇ" #
)
ÇÇ# $
{
ÉÉ 
	pinNumber
ÑÑ 
=
ÑÑ 
(
ÑÑ 
int
ÑÑ  
)
ÑÑ  !
Math
ÑÑ! %
.
ÑÑ% &
Truncate
ÑÑ& .
(
ÑÑ. /
(
ÑÑ/ 0

dataNumber
ÑÑ0 :
/
ÑÑ; <
Math
ÑÑ= A
.
ÑÑA B
Pow
ÑÑB E
(
ÑÑE F
$num
ÑÑF H
,
ÑÑH I
numberOfDigits
ÑÑJ X
-
ÑÑY Z
$num
ÑÑ[ \
)
ÑÑ\ ]
)
ÑÑ] ^
)
ÑÑ^ _
;
ÑÑ_ `
}
ÖÖ 
Jugador
áá 
player
áá 
=
áá 
dataBase
áá %
.
áá% &
Jugador
áá& -
.
áá- .
Where
áá. 3
(
áá3 4
playerSearch
áá4 @
=>
ááA C
playerSearch
ááD P
.
ááP Q
apodo
ááQ V
==
ááW Y
nickname
ááZ b
)
ááb c
.
áác d
FirstOrDefault
áád r
<
áár s
Jugador
áás z
>
ááz {
(
áá{ |
)
áá| }
;
áá} ~
player
ââ 
.
ââ 
pinConfirmacion
ââ "
=
ââ# $
	pinNumber
ââ% .
.
ââ. /
ToString
ââ/ 7
(
ââ7 8
)
ââ8 9
;
ââ9 :
dataBase
ää 
.
ää 
SaveChanges
ää  
(
ää  !
)
ää! "
;
ää" #
return
åå 
player
åå 
;
åå 
}
çç 	
public
èè 
int
èè 
ChangePassword
èè !
(
èè! "
string
èè" (
nickname
èè) 1
,
èè1 2
string
èè3 9
newPassword
èè: E
)
èèE F
{
êê 	
int
ëë 
saved
ëë 
=
ëë 
$num
ëë 
;
ëë 
try
ìì 
{
îî 
var
ïï 
playerState
ïï 
=
ïï  !
dataBase
ïï" *
.
ïï* +
Jugador
ïï+ 2
.
ïï2 3
Where
ïï3 8
(
ïï8 9
player
ïï9 ?
=>
ïï@ B
nickname
ïïC K
==
ïïL N
player
ïïO U
.
ïïU V
apodo
ïïV [
)
ïï[ \
.
ïï\ ]
FirstOrDefault
ïï] k
<
ïïk l
Jugador
ïïl s
>
ïïs t
(
ïït u
)
ïïu v
;
ïïv w
playerState
ññ 
.
ññ 
contrasenia
ññ '
=
ññ( )
newPassword
ññ* 5
;
ññ5 6
saved
óó 
=
óó 
dataBase
óó  
.
óó  !
SaveChanges
óó! ,
(
óó, -
)
óó- .
;
óó. /
}
ôô 
catch
öö 
(
öö 
DbUpdateException
öö $
)
öö$ %
{
õõ 
throw
úú 
new
úú 
DbUpdateException
úú +
(
úú+ ,
)
úú, -
;
úú- .
}
ùù 
return
üü 
saved
üü 
;
üü 
}
†† 	
public
¢¢ 
int
¢¢ 
	BanPlayer
¢¢ 
(
¢¢ 
string
¢¢ #
nickname
¢¢$ ,
)
¢¢, -
{
££ 	
const
§§ 
int
§§ #
PLAYER_ALREADY_BANNED
§§ +
=
§§, -
$num
§§. /
;
§§/ 0
int
•• 
saved
•• 
=
•• 
$num
•• 
;
•• 
try
ßß 
{
®® 
var
©© 
reportedPlayer
©© "
=
©©# $
dataBase
©©% -
.
©©- .
Jugador
©©. 5
.
©©5 6
Where
©©6 ;
(
©©; <
player
©©< B
=>
©©C E
nickname
©©F N
==
©©O Q
player
©©R X
.
©©X Y
apodo
©©Y ^
)
©©^ _
.
©©_ `
FirstOrDefault
©©` n
<
©©n o
Jugador
©©o v
>
©©v w
(
©©w x
)
©©x y
;
©©y z
if
™™ 
(
™™ 
reportedPlayer
™™ !
.
™™! "
status
™™" (
==
™™) +

DOWN_STATE
™™, 6
)
™™6 7
{
´´ 
saved
¨¨ 
=
¨¨ #
PLAYER_ALREADY_BANNED
¨¨ 1
;
¨¨1 2
}
≠≠ 
else
ÆÆ 
if
ÆÆ 
(
ÆÆ 
reportedPlayer
ÆÆ '
.
ÆÆ' (
status
ÆÆ( .
!=
ÆÆ/ 1

DOWN_STATE
ÆÆ2 <
)
ÆÆ< =
{
ØØ 
reportedPlayer
∞∞ "
.
∞∞" #
status
∞∞# )
=
∞∞* +

DOWN_STATE
∞∞, 6
;
∞∞6 7
saved
±± 
=
±± 
dataBase
±± $
.
±±$ %
SaveChanges
±±% 0
(
±±0 1
)
±±1 2
;
±±2 3
}
≤≤ 
}
≥≥ 
catch
¥¥ 
(
¥¥ 
DbUpdateException
¥¥ $
)
¥¥$ %
{
µµ 
throw
∂∂ 
new
∂∂ 
DbUpdateException
∂∂ +
(
∂∂+ ,
)
∂∂, -
;
∂∂- .
}
∑∑ 
return
ππ 
saved
ππ 
;
ππ 
}
∫∫ 	
public
ºº 
Jugador
ºº !
GetPlayerByNickname
ºº *
(
ºº* +
string
ºº+ 1
playerNickname
ºº2 @
)
ºº@ A
{
ΩΩ 	
Jugador
ææ 
searchedPlayer
ææ "
=
ææ# $
dataBase
ææ% -
.
ææ- .
Jugador
ææ. 5
.
ææ5 6
Where
ææ6 ;
(
ææ; <
playerSearch
ææ< H
=>
ææI K
playerSearch
ææL X
.
ææX Y
apodo
ææY ^
==
ææ_ a
playerNickname
ææb p
)
ææp q
.
ææq r
FirstOrDefaultæær Ä
<ææÄ Å
JugadorææÅ à
>ææà â
(ææâ ä
)ææä ã
;ææã å
return
¿¿ 
searchedPlayer
¿¿ !
;
¿¿! "
}
¡¡ 	
public
√√ 
Dominio
√√ 
.
√√ 
Jugador
√√ !
GetDomainPlayerByID
√√ 2
(
√√2 3
int
√√3 6
playerID
√√7 ?
)
√√? @
{
ƒƒ 	
Jugador
≈≈ 
queriedPlayer
≈≈ !
=
≈≈" #
null
≈≈$ (
;
≈≈( )
queriedPlayer
∆∆ 
=
∆∆ 
dataBase
∆∆ $
.
∆∆$ %
Jugador
∆∆% ,
.
∆∆, -
Find
∆∆- 1
(
∆∆1 2
playerID
∆∆2 :
)
∆∆: ;
;
∆∆; <
Dominio
«« 
.
«« 
Jugador
«« 
matchedPlayer
«« )
=
««* +
new
««, /
Dominio
««0 7
.
««7 8
Jugador
««8 ?
{
»» 
Apodo
…… 
=
…… 
queriedPlayer
…… %
.
……% &
apodo
……& +
,
……+ ,
Contrasenia
   
=
   
queriedPlayer
   +
.
  + ,
contrasenia
  , 7
,
  7 8
CorreoElectronico
ÀÀ !
=
ÀÀ" #
queriedPlayer
ÀÀ$ 1
.
ÀÀ1 2
correoElectronico
ÀÀ2 C
,
ÀÀC D
Status
ÃÃ 
=
ÃÃ 
queriedPlayer
ÃÃ &
.
ÃÃ& '
status
ÃÃ' -
,
ÃÃ- .#
RespuestaConfirmacion
ÕÕ %
=
ÕÕ& '
queriedPlayer
ÕÕ( 5
.
ÕÕ5 6#
respuestaConfirmacion
ÕÕ6 K
,
ÕÕK L"
PreguntaRecuperacion
ŒŒ $
=
ŒŒ% &
queriedPlayer
ŒŒ' 4
.
ŒŒ4 5"
preguntaRecuperacion
ŒŒ5 I
,
ŒŒI J
PinConfirmacion
œœ 
=
œœ  !
queriedPlayer
œœ" /
.
œœ/ 0
pinConfirmacion
œœ0 ?
,
œœ? @
	IdCreador
–– 
=
–– 
queriedPlayer
–– )
.
––) *
	idCreador
––* 3
,
––3 4

IdLenguaje
—— 
=
—— 
queriedPlayer
—— *
.
——* +
idioma
——+ 1
}
““ 
;
““ 
return
‘‘ 
matchedPlayer
‘‘  
;
‘‘  !
}
’’ 	
}
÷÷ 
}◊◊ ¥F
qD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\DataAccess\DataManager\RankingDataManager.cs
	namespace

 	

DataAccess


 
.

 
DataManager

  
{ 
public 

class 
RankingDataManager #
{ 
private 
readonly 
JugadoresDBEntities ,
context- 4
=5 6
new7 :
JugadoresDBEntities; N
(N O
)O P
;P Q
private 
const 
int 
CHECKER_POINT_VALUE -
=. /
$num0 2
;2 3
public 
List 
< 

DataAccess 
. 
Ranking &
>& '
GetRankingList( 6
(6 7
)7 8
{ 	
List 
< 

DataAccess 
. 
Ranking #
># $
playerRankings% 3
=4 5
null6 :
;: ;
playerRankings 
= 
context $
.$ %
Ranking% ,
., -
OrderBy- 4
(4 5
position5 =
=>> @
positionA I
.I J
rankJ N
)N O
.O P
ToListP V
(V W
)W X
;X Y
return 
playerRankings !
;! "
} 	
public 
Dominio 
. 
Jugador 
GetPlayerByID ,
(, -
int- 0
playerID1 9
)9 :
{ 	
Dominio 
. 
Jugador 
searchedPlayer *
=+ ,
new- 0
Dominio1 8
.8 9
Jugador9 @
(@ A
)A B
;B C
try 
{ 
Jugador 
queriedPlayer %
=& '
null( ,
;, -
queriedPlayer   
=   
context    '
.  ' (
Jugador  ( /
.  / 0
Find  0 4
(  4 5
playerID  5 =
)  = >
;  > ?
searchedPlayer!! 
.!! 
Apodo!! $
=!!% &
queriedPlayer!!' 4
.!!4 5
apodo!!5 :
;!!: ;
searchedPlayer"" 
."" 
Contrasenia"" *
=""+ ,
queriedPlayer""- :
."": ;
contrasenia""; F
;""F G
searchedPlayer## 
.## 
CorreoElectronico## 0
=##1 2
queriedPlayer##3 @
.##@ A
correoElectronico##A R
;##R S
searchedPlayer$$ 
.$$ 
Status$$ %
=$$& '
queriedPlayer$$( 5
.$$5 6
status$$6 <
;$$< =
searchedPlayer%% 
.%% !
RespuestaConfirmacion%% 4
=%%5 6
queriedPlayer%%7 D
.%%D E!
respuestaConfirmacion%%E Z
;%%Z [
searchedPlayer&& 
.&&  
PreguntaRecuperacion&& 3
=&&4 5
queriedPlayer&&6 C
.&&C D 
preguntaRecuperacion&&D X
;&&X Y
searchedPlayer'' 
.'' 
PinConfirmacion'' .
=''/ 0
queriedPlayer''1 >
.''> ?
pinConfirmacion''? N
;''N O
searchedPlayer(( 
.(( 
	IdCreador(( (
=(() *
queriedPlayer((+ 8
.((8 9
	idCreador((9 B
;((B C
searchedPlayer)) 
.)) 

IdLenguaje)) )
=))* +
queriedPlayer)), 9
.))9 :
idioma)): @
;))@ A
}** 
catch++ 
(++ 
DbUpdateException++ $
)++$ %
{,, 
throw-- 
new-- 
DbUpdateException-- +
(--+ ,
)--, -
;--- .
}.. 
return// 
searchedPlayer// !
;//! "
}00 	
public22 
void22 
UpdateMatchResults22 &
(22& '
Dominio22' .
.22. /
Jugador22/ 6
	playerOne227 @
,22@ A
int22B E
playerOneCheckers22F W
,22W X
Dominio22Y `
.22` a
Jugador22a h
	playerTwo22i r
,22r s
int22t w
playerTwoCheckers	22x â
,
22â ä
int
22ã é 
playerNumberWinner
22è °
)
22° ¢
{33 	
try44 
{55 
if66 
(66 
playerNumberWinner66 &
==66' )
$num66* +
)66+ ,
{77 
var88 
winnerRankingChange88 +
=88, -
context88. 5
.885 6
Ranking886 =
.88= >
Where88> C
(88C D
ranking88D K
=>88L N
	playerOne88O X
.88X Y
	IdJugador88Y b
==88c e
ranking88f m
.88m n
idDuenio88n v
)88v w
.88w x
FirstOrDefault	88x Ü
<
88Ü á
Ranking
88á é
>
88é è
(
88è ê
)
88ê ë
;
88ë í
winnerRankingChange99 '
.99' (
rank99( ,
+=99- /
(990 1
playerOneCheckers991 B
*99C D
$num99E G
)99G H
+99I J
$num99K M
;99M N
winnerRankingChange:: '
.::' (
numeroVictorias::( 7
+=::8 :
$num::; <
;::< =
winnerRankingChange;; '
.;;' (
partidasJugadas;;( 7
++;;7 9
;;;9 :
var<< 
loserRankingChange<< *
=<<+ ,
context<<- 4
.<<4 5
Ranking<<5 <
.<<< =
Where<<= B
(<<B C
ranking<<C J
=><<K M
	playerTwo<<N W
.<<W X
	IdJugador<<X a
==<<b d
ranking<<e l
.<<l m
idDuenio<<m u
)<<u v
.<<v w
FirstOrDefault	<<w Ö
<
<<Ö Ü
Ranking
<<Ü ç
>
<<ç é
(
<<é è
)
<<è ê
;
<<ê ë
loserRankingChange== &
.==& '
rank==' +
+===, .
CHECKER_POINT_VALUE==/ B
;==B C
loserRankingChange>> &
.>>& '
numeroPerdidas>>' 5
+=>>6 8
$num>>9 :
;>>: ;
loserRankingChange?? &
.??& '
partidasJugadas??' 6
++??6 8
;??8 9
context@@ 
.@@ 
SaveChanges@@ '
(@@' (
)@@( )
;@@) *
}AA 
elseBB 
{CC 
varDD 
winnerRankingChangeDD +
=DD, -
contextDD. 5
.DD5 6
RankingDD6 =
.DD= >
WhereDD> C
(DDC D
rankingDDD K
=>DDL N
	playerTwoDDO X
.DDX Y
	IdJugadorDDY b
==DDc e
rankingDDf m
.DDm n
idDuenioDDn v
)DDv w
.DDw x
FirstOrDefault	DDx Ü
<
DDÜ á
Ranking
DDá é
>
DDé è
(
DDè ê
)
DDê ë
;
DDë í
winnerRankingChangeEE '
.EE' (
rankEE( ,
+=EE- /
(EE0 1
playerTwoCheckersEE1 B
*EEC D
$numEEE G
)EEG H
+EEI J
$numEEK M
;EEM N
winnerRankingChangeFF '
.FF' (
numeroVictoriasFF( 7
+=FF8 :
$numFF; <
;FF< =
winnerRankingChangeGG '
.GG' (
partidasJugadasGG( 7
++GG7 9
;GG9 :
varHH 
loserRankingChangeHH *
=HH+ ,
contextHH- 4
.HH4 5
RankingHH5 <
.HH< =
WhereHH= B
(HHB C
rankingHHC J
=>HHK M
	playerOneHHN W
.HHW X
	IdJugadorHHX a
==HHb d
rankingHHe l
.HHl m
idDuenioHHm u
)HHu v
.HHv w
FirstOrDefault	HHw Ö
<
HHÖ Ü
Ranking
HHÜ ç
>
HHç é
(
HHé è
)
HHè ê
;
HHê ë
loserRankingChangeII &
.II& '
rankII' +
+=II, .
CHECKER_POINT_VALUEII/ B
;IIB C
loserRankingChangeJJ &
.JJ& '
rankJJ' +
+=JJ, .
CHECKER_POINT_VALUEJJ/ B
;JJB C
loserRankingChangeKK &
.KK& '
numeroPerdidasKK' 5
+=KK6 8
$numKK9 :
;KK: ;
loserRankingChangeLL &
.LL& '
partidasJugadasLL' 6
++LL6 8
;LL8 9
contextMM 
.MM 
SaveChangesMM '
(MM' (
)MM( )
;MM) *
}NN 
}OO 
catchPP 
(PP 
DbUpdateExceptionPP $
)PP$ %
{QQ 
throwRR 
newRR 
DbUpdateExceptionRR +
(RR+ ,
)RR, -
;RR- .
}SS 
}TT 	
}UU 
}VV „
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
}.. ï
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