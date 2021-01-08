µ
oD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\DataAccess\DataManager\AdminDataManager.cs
	namespace 	

DataAccess
 
. 
DataManager  
{ 
public		 

class		 
AdminDataManager		 !
{

 
private 
readonly 
JugadoresDBEntities ,
context- 4
=5 6
new7 :
JugadoresDBEntities; N
(N O
)O P
;P Q
public 
bool 
CheckNickname !
(! "
string" (
nickname) 1
)1 2
{ 	
bool 
existe 
= 
false 
;  
existe 
= 
context 
. 
Administrador *
.* +
Any+ .
(. /
admin/ 4
=>5 7
admin8 =
.= >

apodoAdmin> H
.H I
EqualsI O
(O P
nicknameP X
)X Y
)Y Z
;Z [
return 
existe 
; 
} 	
public 
bool 
EsPasswordCorrecto &
(& '
string' -
password. 6
,6 7
string8 >
nickname? G
)G H
{ 	
bool 

esCorrecto 
= 
false #
;# $

esCorrecto 
= 
context  
.  !
Administrador! .
.. /
Any/ 2
(2 3
admin3 8
=>9 ;
admin< A
.A B

apodoAdminB L
.L M
EqualsM S
(S T
nicknameT \
)\ ]
&&^ `
admina f
.f g
contraseniag r
.r s
Equalss y
(y z
password	z Ç
)
Ç É
)
É Ñ
;
Ñ Ö
return 

esCorrecto 
; 
} 	
} 
} µ
jD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\DataAccess\DataManager\HashManager.cs
	namespace 	

DataAccess
 
. 
DataManager  
{		 
public

 

class

 
HashManager

 
{ 
byte 
[ 
] 
transformSource 
; 
byte 
[ 
] 
transformHash 
; 
public 
HashManager 
( 
) 
{ 	
transformSource 
= 
null "
;" #
transformHash 
= 
null  
;  !
} 	
public 
String 

TextToHash  
(  !
string! '

sourceData( 2
)2 3
{ 	
MD5 
md5Code 
= 
MD5 
. 
Create $
($ %
)% &
;& '
transformSource 
= 
Encoding &
.& '
ASCII' ,
., -
GetBytes- 5
(5 6

sourceData6 @
)@ A
;A B
transformHash 
= 
md5Code #
.# $
ComputeHash$ /
(/ 0
transformSource0 ?
)? @
;@ A
StringBuilder 
	hashChain #
=$ %
new& )
StringBuilder* 7
(7 8
)8 9
;9 :
foreach 
( 
var 
letter 
in  "
transformHash# 0
)0 1
{ 
	hashChain   
.   
Append    
(    !
letter  ! '
.  ' (
ToString  ( 0
(  0 1
$str  1 5
)  5 6
)  6 7
;  7 8
}!! 
return## 
	hashChain## 
.## 
ToString## %
(##% &
)##& '
;##' (
}$$ 	
}&& 
}'' ΩR
qD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\DataAccess\DataManager\JugadorDataManager.cs
	namespace		 	

DataAccess		
 
.		 
DataManager		  
{

 
public 

class 
JugadorDataManager #
{ 
public 
static 
readonly 
string %
ACTIVATION_STATE& 6
=7 8
$str9 H
;H I
public 
static 
readonly 
string %
ACTIVE_STATE& 2
=3 4
$str5 =
;= >
public 
static 
readonly 
string %
REPORTED_STATE& 4
=5 6
$str7 D
;D E
public 
static 
readonly 
string %

DOWN_STATE& 0
=1 2
$str3 9
;9 :
private 
readonly 
JugadoresDBEntities ,
context- 4
=5 6
new7 :
JugadoresDBEntities; N
(N O
)O P
;P Q
public 
bool 
CheckNickname !
(! "
string" (
nickname) 1
)1 2
{ 	
bool 
existe 
= 
false 
;  
existe 
= 
context 
. 
Jugador $
.$ %
Any% (
(( )
jugador) 0
=>1 3
jugador4 ;
.; <
apodo< A
.A B
EqualsB H
(H I
nicknameI Q
)Q R
)R S
;S T
return 
existe 
; 
} 	
public 
bool 

CheckState 
( 
string %
nickname& .
). /
{ 	
bool   
existe   
=   
false   
;    
existe"" 
="" 
context"" 
."" 
Jugador"" $
.""$ %
Any""% (
(""( )
jugador"") 0
=>""1 3
jugador""4 ;
.""; <
apodo""< A
.""A B
Equals""B H
(""H I
nickname""I Q
)""Q R
&&""S U
jugador""V ]
.""] ^
status""^ d
.""d e
Equals""e k
(""k l
ACTIVE_STATE""l x
)""x y
)""y z
;""z {
return$$ 
existe$$ 
;$$ 
}%% 	
public'' 
bool'' 
EsPasswordCorrecto'' &
(''& '
string''' -
password''. 6
,''6 7
string''8 >
nickname''? G
)''G H
{(( 	
bool)) 

esCorrecto)) 
=)) 
false)) #
;))# $

esCorrecto++ 
=++ 
context++  
.++  !
Jugador++! (
.++( )
Any++) ,
(++, -
jugador++- 4
=>++5 7
jugador++8 ?
.++? @
apodo++@ E
.++E F
Equals++F L
(++L M
nickname++M U
)++U V
&&++W Y
jugador++Z a
.++a b
contrasenia++b m
.++m n
Equals++n t
(++t u
password++u }
)++} ~
)++~ 
;	++ Ä
return-- 

esCorrecto-- 
;-- 
}.. 	
public00 
bool00 
PinCorrecto00 
(00  
string00  &
nickname00' /
,00/ 0
string001 7
	pinPlayer008 A
)00A B
{11 	
bool22 

esCorrecto22 
=22 
false22 #
;22# $

esCorrecto44 
=44 
context44  
.44  !
Jugador44! (
.44( )
Any44) ,
(44, -
jugador44- 4
=>445 7
jugador448 ?
.44? @
apodo44@ E
==44F H
nickname44I Q
&&44R T
jugador44U \
.44\ ]
pinConfirmacion44] l
==44m o
	pinPlayer44p y
)44y z
;44z {
return66 

esCorrecto66 
;66 
}77 	
public99 
int99 
SaveNewPlayer99  
(99  !
Jugador99! (
jugadorNuevo99) 5
)995 6
{:: 	
int;; 
guardado;; 
;;; 
context<< 
.<< 
Jugador<< 
.<< 
Add<< 
(<<  
jugadorNuevo<<  ,
)<<, -
;<<- .
try== 
{>> 
guardado?? 
=?? 
context?? "
.??" #
SaveChanges??# .
(??. /
)??/ 0
;??0 1
}@@ 
catchAA 
(AA 
DbUpdateExceptionAA #
)AA# $
{BB 
throwCC 
newCC 
DbUpdateExceptionCC +
(CC+ ,
)CC, -
;CC- .
}DD 
returnFF 
guardadoFF 
;FF 
}GG 	
publicII 
intII 
VerifyNewPlayerII "
(II" #
JugadorII# *
verifyPlayerII+ 7
)II7 8
{JJ 	
intKK 
savedKK 
=KK 
$numKK 
;KK 
tryLL 
{MM 
varNN 
playerStateNN 
=NN  !
contextNN" )
.NN) *
JugadorNN* 1
.NN1 2
WhereNN2 7
(NN7 8
playerNN8 >
=>NN? A
verifyPlayerNNB N
.NNN O
apodoNNO T
==NNU W
playerNNX ^
.NN^ _
apodoNN_ d
)NNd e
.NNe f
FirstOrDefaultNNf t
<NNt u
JugadorNNu |
>NN| }
(NN} ~
)NN~ 
;	NN Ä
playerStateOO 
.OO 
statusOO "
=OO# $
ACTIVE_STATEOO% 1
;OO1 2
savedPP 
=PP 
contextPP 
.PP  
SaveChangesPP  +
(PP+ ,
)PP, -
;PP- .
}RR 
catchSS 
(SS 
DbUpdateExceptionSS $
)SS$ %
{TT 
throwUU 
newUU 
DbUpdateExceptionUU +
(UU+ ,
)UU, -
;UU- .
}VV 
returnXX 
savedXX 
;XX 
}YY 	
public[[ 
bool[[ 

CheckEmail[[ 
([[ 
string[[ %
email[[& +
)[[+ ,
{\\ 	
bool]] 
existsPlayer]] 
=]] 
false]]  %
;]]% &
existsPlayer__ 
=__ 
context__ "
.__" #
Jugador__# *
.__* +
Any__+ .
(__. /
jugador__/ 6
=>__7 9
jugador__: A
.__A B
correoElectronico__B S
.__S T
Equals__T Z
(__Z [
email__[ `
)__` a
)__a b
;__b c
returnaa 
existsPlayeraa 
;aa  
}bb 	
publicdd 
Jugadordd 
ChangePinByNicknamedd *
(dd* +
stringdd+ 1
nicknamedd2 :
)dd: ;
{ee 	
Randomff 
randomff 
=ff 
newff 
Randomff  &
(ff& '
)ff' (
;ff( )
Jugadorgg 
playergg 
=gg 
contextgg $
.gg$ %
Jugadorgg% ,
.gg, -
Wheregg- 2
(gg2 3
playerSearchgg3 ?
=>gg@ B
playerSearchggC O
.ggO P
apodoggP U
==ggV X
nicknameggY a
)gga b
.ggb c
FirstOrDefaultggc q
<ggq r
Jugadorggr y
>ggy z
(ggz {
)gg{ |
;gg| }
playerii 
.ii 
pinConfirmacionii "
=ii# $
randomii% +
.ii+ ,
Nextii, 0
(ii0 1
$numii1 6
,ii6 7
$numii8 =
)ii= >
.ii> ?
ToStringii? G
(iiG H
)iiH I
;iiI J
contextjj 
.jj 
SaveChangesjj 
(jj  
)jj  !
;jj! "
returnll 
playerll 
;ll 
}mm 	
publicoo 
intoo 
ChangePasswordoo !
(oo! "
stringoo" (
nicknameoo) 1
,oo1 2
stringoo3 9
newPasswordoo: E
)ooE F
{pp 	
intrr 
savedrr 
=rr 
$numrr 
;rr 
trytt 
{uu 
varvv 
playerStatevv 
=vv  !
contextvv" )
.vv) *
Jugadorvv* 1
.vv1 2
Wherevv2 7
(vv7 8
playervv8 >
=>vv? A
nicknamevvB J
==vvK M
playervvN T
.vvT U
apodovvU Z
)vvZ [
.vv[ \
FirstOrDefaultvv\ j
<vvj k
Jugadorvvk r
>vvr s
(vvs t
)vvt u
;vvu v
playerStateww 
.ww 
contraseniaww '
=ww( )
ACTIVE_STATEww* 6
;ww6 7
savedxx 
=xx 
contextxx 
.xx  
SaveChangesxx  +
(xx+ ,
)xx, -
;xx- .
}zz 
catch{{ 
({{ 
DbUpdateException{{ $
){{$ %
{|| 
throw}} 
new}} 
DbUpdateException}} +
(}}+ ,
)}}, -
;}}- .
}~~ 
return
ÄÄ 
saved
ÄÄ 
;
ÄÄ 
}
ÅÅ 	
public
ÉÉ 
Jugador
ÉÉ !
GetPlayerByNickname
ÉÉ *
(
ÉÉ* +
string
ÉÉ+ 1
playerNickname
ÉÉ2 @
)
ÉÉ@ A
{
ÑÑ 	
Jugador
ÖÖ 
searchedPlayer
ÖÖ "
=
ÖÖ# $
context
ÖÖ% ,
.
ÖÖ, -
Jugador
ÖÖ- 4
.
ÖÖ4 5
Where
ÖÖ5 :
(
ÖÖ: ;
playerSearch
ÖÖ; G
=>
ÖÖH J
playerSearch
ÖÖK W
.
ÖÖW X
apodo
ÖÖX ]
==
ÖÖ^ `
playerNickname
ÖÖa o
)
ÖÖo p
.
ÖÖp q
FirstOrDefault
ÖÖq 
<ÖÖ Ä
JugadorÖÖÄ á
>ÖÖá à
(ÖÖà â
)ÖÖâ ä
;ÖÖä ã
return
áá 
searchedPlayer
áá !
;
áá! "
}
àà 	
}
ââ 
}ää ˝D
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
;P Q
public 
List 
< 

DataAccess 
. 
Ranking &
>& '
GetRankingList( 6
(6 7
)7 8
{ 	
List 
< 

DataAccess 
. 
Ranking #
># $
playerRankings% 3
=4 5
null6 :
;: ;
playerRankings 
= 
context $
.$ %
Ranking% ,
., -
OrderBy- 4
(4 5
position5 =
=>> @
positionA I
.I J
rankJ N
)N O
.O P
ToListP V
(V W
)W X
;X Y
return 
playerRankings !
;! "
} 	
public 
Dominio 
. 
Jugador 
GetPlayerByID ,
(, -
int- 0
playerID1 9
)9 :
{ 	
Dominio 
. 
Jugador 
searchedPlayer *
=+ ,
new- 0
Dominio1 8
.8 9
Jugador9 @
(@ A
)A B
;B C
try 
{ 
Jugador 
queriedPlayer %
=& '
null( ,
;, -
queriedPlayer 
= 
context  '
.' (
Jugador( /
./ 0
Find0 4
(4 5
playerID5 =
)= >
;> ?
searchedPlayer   
.   
Apodo   $
=  % &
queriedPlayer  ' 4
.  4 5
apodo  5 :
;  : ;
searchedPlayer!! 
.!! 
Contrasenia!! *
=!!+ ,
queriedPlayer!!- :
.!!: ;
contrasenia!!; F
;!!F G
searchedPlayer"" 
."" 
CorreoElectronico"" 0
=""1 2
queriedPlayer""3 @
.""@ A
correoElectronico""A R
;""R S
searchedPlayer## 
.## 
Status## %
=##& '
queriedPlayer##( 5
.##5 6
status##6 <
;##< =
searchedPlayer$$ 
.$$ !
RespuestaConfirmacion$$ 4
=$$5 6
queriedPlayer$$7 D
.$$D E!
respuestaConfirmacion$$E Z
;$$Z [
searchedPlayer%% 
.%%  
PreguntaRecuperacion%% 3
=%%4 5
queriedPlayer%%6 C
.%%C D 
preguntaRecuperacion%%D X
;%%X Y
searchedPlayer&& 
.&& 
PinConfirmacion&& .
=&&/ 0
queriedPlayer&&1 >
.&&> ?
pinConfirmacion&&? N
;&&N O
searchedPlayer'' 
.'' 
	IdCreador'' (
='') *
queriedPlayer''+ 8
.''8 9
	idCreador''9 B
;''B C
searchedPlayer(( 
.(( 

IdLenguaje(( )
=((* +
queriedPlayer((, 9
.((9 :
idioma((: @
;((@ A
})) 
catch** 
(** 
DbUpdateException** $
)**$ %
{++ 
throw,, 
new,, 
DbUpdateException,, +
(,,+ ,
),,, -
;,,- .
}-- 
return.. 
searchedPlayer.. !
;..! "
}// 	
public11 
void11 
UpdateMatchResults11 &
(11& '
Dominio11' .
.11. /
Jugador11/ 6
	playerOne117 @
,11@ A
int11B E
playerOneCheckers11F W
,11W X
Dominio11Y `
.11` a
Jugador11a h
	playerTwo11i r
,11r s
int11t w
playerTwoCheckers	11x â
,
11â ä
int
11ã é 
playerNumberWinner
11è °
)
11° ¢
{22 	
try33 
{44 
if55 
(55 
playerNumberWinner55 &
==55' )
$num55* +
)55+ ,
{66 
var77 
winnerRankingChange77 +
=77, -
context77. 5
.775 6
Ranking776 =
.77= >
Where77> C
(77C D
ranking77D K
=>77L N
	playerOne77O X
.77X Y
	IdJugador77Y b
==77c e
ranking77f m
.77m n
idDuenio77n v
)77v w
.77w x
FirstOrDefault	77x Ü
<
77Ü á
Ranking
77á é
>
77é è
(
77è ê
)
77ê ë
;
77ë í
winnerRankingChange88 '
.88' (
rank88( ,
+=88- /
(880 1
playerOneCheckers881 B
*88C D
$num88E G
)88G H
+88I J
$num88K M
;88M N
winnerRankingChange99 '
.99' (
numeroVictorias99( 7
+=998 :
$num99; <
;99< =
winnerRankingChange:: '
.::' (
partidasJugadas::( 7
++::7 9
;::9 :
var;; 
loserRankingChange;; *
=;;+ ,
context;;- 4
.;;4 5
Ranking;;5 <
.;;< =
Where;;= B
(;;B C
ranking;;C J
=>;;K M
	playerTwo;;N W
.;;W X
	IdJugador;;X a
==;;b d
ranking;;e l
.;;l m
idDuenio;;m u
);;u v
.;;v w
FirstOrDefault	;;w Ö
<
;;Ö Ü
Ranking
;;Ü ç
>
;;ç é
(
;;é è
)
;;è ê
;
;;ê ë
loserRankingChange<< &
.<<& '
rank<<' +
+=<<, .
$num<</ 1
;<<1 2
loserRankingChange== &
.==& '
numeroPerdidas==' 5
+===6 8
$num==9 :
;==: ;
loserRankingChange>> &
.>>& '
partidasJugadas>>' 6
++>>6 8
;>>8 9
context?? 
.?? 
SaveChanges?? '
(??' (
)??( )
;??) *
}@@ 
elseAA 
{BB 
varCC 
winnerRankingChangeCC +
=CC, -
contextCC. 5
.CC5 6
RankingCC6 =
.CC= >
WhereCC> C
(CCC D
rankingCCD K
=>CCL N
	playerTwoCCO X
.CCX Y
	IdJugadorCCY b
==CCc e
rankingCCf m
.CCm n
idDuenioCCn v
)CCv w
.CCw x
FirstOrDefault	CCx Ü
<
CCÜ á
Ranking
CCá é
>
CCé è
(
CCè ê
)
CCê ë
;
CCë í
winnerRankingChangeDD '
.DD' (
rankDD( ,
+=DD- /
(DD0 1
playerTwoCheckersDD1 B
*DDC D
$numDDE G
)DDG H
+DDI J
$numDDK M
;DDM N
winnerRankingChangeEE '
.EE' (
numeroVictoriasEE( 7
+=EE8 :
$numEE; <
;EE< =
winnerRankingChangeFF '
.FF' (
partidasJugadasFF( 7
++FF7 9
;FF9 :
varGG 
loserRankingChangeGG *
=GG+ ,
contextGG- 4
.GG4 5
RankingGG5 <
.GG< =
WhereGG= B
(GGB C
rankingGGC J
=>GGK M
	playerOneGGN W
.GGW X
	IdJugadorGGX a
==GGb d
rankingGGe l
.GGl m
idDuenioGGm u
)GGu v
.GGv w
FirstOrDefault	GGw Ö
<
GGÖ Ü
Ranking
GGÜ ç
>
GGç é
(
GGé è
)
GGè ê
;
GGê ë
loserRankingChangeHH &
.HH& '
rankHH' +
+=HH, .
$numHH/ 1
;HH1 2
loserRankingChangeII &
.II& '
rankII' +
+=II, .
$numII/ 1
;II1 2
loserRankingChangeJJ &
.JJ& '
numeroPerdidasJJ' 5
+=JJ6 8
$numJJ9 :
;JJ: ;
loserRankingChangeKK &
.KK& '
partidasJugadasKK' 6
++KK6 8
;KK8 9
contextLL 
.LL 
SaveChangesLL '
(LL' (
)LL( )
;LL) *
}MM 
}NN 
catchOO 
(OO 
DbUpdateExceptionOO $
)OO$ %
{PP 
throwQQ 
newQQ 
DbUpdateExceptionQQ +
(QQ+ ,
)QQ, -
;QQ- .
}RR 
}SS 	
}TT 
}UU ï
jD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\DataAccess\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str %
)% &
]& '
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str '
)' (
]( )
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *