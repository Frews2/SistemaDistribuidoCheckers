ö
]D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\Contratos\IBanManager.cs
	namespace		 	
	Contratos		
 
{

 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /
IBanManagerCallback/ B
)B C
)C D
]D E
public 

	interface 
IBanManager  
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
GetReportData 
( 
) 
; 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
	BanPlayer 
( 
string 
reportedPlayerName 0
)0 1
;1 2
} 
[ 
ServiceContract 
] 
public 

	interface 
IBanManagerCallback (
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void $
GetReportDataQueryResult %
(% &
AdminReportResult& 7
result8 >
)> ?
;? @
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
ReceiveReportData 
( 
List #
<# $
Reporte$ +
>+ ,

reportList- 7
)7 8
;8 9
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
GetBanResult 
( 
	BanResult #
result$ *
)* +
;+ ,
}   
}!! µ/
^D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\Contratos\IGameManager.cs
	namespace 	
	Contratos
 
{ 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. / 
IGameManagerCallback/ C
)C D
)D E
]E F
public 

	interface 
IGameManager !
{ 
[		 	
OperationContract			 
(		 
IsOneWay		 #
=		$ %
true		& *
)		* +
]		+ ,
void

 
CreateMatch

 
(

 
Dominio

  
.

  !
Jugador

! (
currentPlayer

) 6
,

6 7
CheckersGameMode

8 H
gameMode

I Q
)

Q R
;

R S
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
Player1Turn 
( 
Checker  
[  !
]! "
[" #
]# $
updateBoardMatrix% 6
,6 7
int8 ;
matchNumber< G
,G H
intI L
playerTwoCheckersM ^
,^ _
int` c
playerOneCheckersd u
)u v
;v w
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
Player2Turn 
( 
Checker  
[  !
]! "
[" #
]# $
updateBoardMatrix% 6
,6 7
int8 ;
matchNumber< G
,G H
intI L
playerTwoCheckersM ^
,^ _
int` c
playerOneCheckersd u
)u v
;v w
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
FinishPlayerGame 
( 
int !
matchNumber" -
,- .
int/ 2
playerNumber3 ?
,? @
int@ C
playerTwoCheckersD U
,U V
intW Z
playerOneCheckers[ l
)l m
;m n
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
SendGameMessage 
( 
int  
playerNumber! -
,- .
string/ 5
message6 =
,= >
int? B
matchNumberC N
)N O
;O P
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
ReportPlayer 
( 
int !
playerNumberReporting 3
,3 4
int5 8
matchNumber9 D
,D E
stringF L

reportTextM W
)W X
;X Y
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 

LeaveMatch 
( 
int 
matchNumber '
,' (
int) ,
playerNumber- 9
)9 :
;: ;
} 
[ 
ServiceContract 
] 
public   

	interface    
IGameManagerCallback   )
{!! 
["" 	
OperationContract""	 
("" 
IsOneWay"" #
=""$ %
true""& *
)""* +
]""+ ,
void## 
UpdateGameGUI## 
(## 
Checker## "
[##" #
]### $
[##$ %
]##% &
updateBoardMatrix##' 8
,##8 9
int##: =
playerTwoCheckers##> O
,##O P
int##Q T
playerOneCheckers##U f
)##f g
;##g h
[%% 	
OperationContract%%	 
(%% 
IsOneWay%% #
=%%$ %
true%%& *
)%%* +
]%%+ ,
void&& 

FinishGame&& 
(&& 
int&& 
playerTwoCheckers&& -
,&&- .
int&&/ 2
playerOneCheckers&&3 D
)&&D E
;&&E F
[(( 	
OperationContract((	 
((( 
IsOneWay(( #
=(($ %
true((& *
)((* +
]((+ ,
void))  
GetMatchmakingResult)) !
())! "
MatchmakingResult))" 3
result))4 :
,)): ;
Match))< A
match))B G
,))G H
int))I L
playerNumber))M Y
)))Y Z
;))Z [
[++ 	
OperationContract++	 
(++ 
IsOneWay++ #
=++$ %
true++& *
)++* +
]+++ ,
void,, 
UpdateMatchNumber,, 
(,, 
int,, "
newMatchNumber,,# 1
),,1 2
;,,2 3
[.. 	
OperationContract..	 
(.. 
IsOneWay.. #
=..$ %
true..& *
)..* +
]..+ ,
void// 
RecieveGameMessage// 
(//  
string//  &
message//' .
,//. /
int/// 2
playerNumber//3 ?
)//? @
;//@ A
[11 	
OperationContract11	 
(11 
IsOneWay11 #
=11$ %
true11& *
)11* +
]11+ ,
void22 
ReportResult22 
(22 
ReportSaveResult22 *
reportSaveResult22+ ;
)22; <
;22< =
[44 	
OperationContract44	 
(44 
IsOneWay44 #
=44$ %
true44& *
)44* +
]44+ ,
void55 
EndAbandonedGame55 
(55 
)55 
;55  
}66 
}77 î5
`D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\Contratos\IPlayerManager.cs
	namespace 	
	Contratos
 
{ 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /"
IPlayerManagerCallback/ E
)E F
)F G
]G H
public 

	interface 
IPlayerManager #
{ 
[		 	
OperationContract			 
(		 
IsOneWay		 #
=		$ %
true		& *
)		* +
]		+ ,
void

 
Login

 
(

 
Jugador

 
player

 !
)

! "
;

" #
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
LoginPlayer 
( 
Jugador  
player! '
)' (
;( )
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 

SavePlayer 
( 
Jugador 
player  &
)& '
;' (
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
VerifyPlayer 
( 
Jugador !
player" (
)( )
;) *
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
SendMail 
( 
Jugador 
player $
)$ %
;% &
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
PasswordForgotMail 
(  
string  &
actualNickname' 5
)5 6
;6 7
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
	VerifyPin 
( 
string 
actualNickname ,
,, -
string. 4
	playerPin5 >
,> ?
string@ F

answerTextG Q
)Q R
;R S
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
ChangePassword 
( 
string "
userNickname# /
,/ 0
string1 7
password8 @
)@ A
;A B
[!! 	
OperationContract!!	 
(!! 
IsOneWay!! #
=!!$ %
true!!& *
)!!* +
]!!+ ,
void"" 
GetActualPlayer"" 
("" 
Jugador"" $
actualPlayer""% 1
)""1 2
;""2 3
[$$ 	
OperationContract$$	 
($$ 
IsOneWay$$ #
=$$$ %
true$$& *
)$$* +
]$$+ ,
void%% 
CloseSession%% 
(%% 
string%%  
playerNickname%%! /
)%%/ 0
;%%0 1
}&& 
[(( 
ServiceContract(( 
](( 
public)) 

	interface)) "
IPlayerManagerCallback)) +
{** 
[++ 	
OperationContract++	 
(++ 
IsOneWay++ #
=++$ %
true++& *
)++* +
]+++ ,
void,, 
GetAdminLoginResult,,  
(,,  !
LoginResult,,! ,
resultadoLogin,,- ;
,,,; <
Jugador,,< C
playerLoged,,D O
),,O P
;,,P Q
[.. 	
OperationContract..	 
(.. 
IsOneWay.. #
=..$ %
true..& *
)..* +
]..+ ,
void//  
GetPlayerLoginResult// !
(//! "
LoginResult//" -
resultadoLogin//. <
,//< =
Jugador//> E
playerLoged//F Q
)//Q R
;//R S
[11 	
OperationContract11	 
(11 
IsOneWay11 #
=11$ %
true11& *
)11* +
]11+ ,
void22 
GetSaveResult22 
(22 

SaveResult22 %

saveResult22& 0
,220 1
Jugador222 9
	newPlayer22: C
)22C D
;22D E
[44 	
OperationContract44	 
(44 
IsOneWay44 #
=44$ %
true44& *
)44* +
]44+ ,
void55 
GetVerifyResult55 
(55 
VerificationResult55 /!
resultadoVerificacion550 E
)55E F
;55F G
[77 	
OperationContract77	 
(77 
IsOneWay77 #
=77$ %
true77& *
)77* +
]77+ ,
void88 
GetResendMailResult88  
(88  !

MailResult88! +
emailResult88, 7
,887 8
string889 ?
playerNickname88@ N
)88N O
;88O P
[:: 	
OperationContract::	 
(:: 
IsOneWay:: #
=::$ %
true::& *
)::* +
]::+ ,
void;; 
GetMailResult;; 
(;; 

MailResult;; %
emailResult;;& 1
,;;1 2
string;;3 9
playerNickname;;: H
,;;H I
string;;J P
securityQuestion;;Q a
);;a b
;;;b c
[== 	
OperationContract==	 
(== 
IsOneWay== #
===$ %
true==& *
)==* +
]==+ ,
void>> 
GetPinResult>> 
(>> 
	PinResult>> #
	pinResult>>$ -
,>>- .
string>>/ 5
playerNickname>>6 D
)>>D E
;>>E F
[@@ 	
OperationContract@@	 
(@@ 
IsOneWay@@ #
=@@$ %
true@@& *
)@@* +
]@@+ ,
voidAA #
GetPasswordChangeResultAA $
(AA$ % 
PasswordChangeResultAA% 9 
passwordChangeResultAA: N
)AAN O
;AAO P
[CC 	
OperationContractCC	 
(CC 
IsOneWayCC #
=CC$ %
trueCC& *
)CC* +
]CC+ ,
voidDD 
SendActualPlayerDD 
(DD 
DataObtainedResultDD 0
dataObtainedResultDD1 C
,DDC D
DominioDDE L
.DDL M
JugadorDDM T
actualPlayerDDU a
)DDa b
;DDb c
}EE 
}HH ì
aD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\Contratos\IRankingManager.cs
	namespace		 	
	Contratos		
 
{

 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /#
IRankingManagerCallback/ F
)F G
)G H
]H I
public 

	interface 
IRankingManager $
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
GetRankingData 
( 
) 
; 
} 
[ 
ServiceContract 
] 
public 

	interface #
IRankingManagerCallback ,
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
GetRankingResult 
( 
RankingResult +
result, 2
)2 3
;3 4
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
ReceiveRankingData 
(  
List  $
<$ %
Dominio% ,
., -
Ranking- 4
>4 5
rankingList6 A
)A B
;B C
} 
} ¿ô
]D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\Contratos\MainService.cs
	namespace 	
	Contratos
 
{ 
[ 
ServiceBehavior 
( 
InstanceContextMode (
=) *
InstanceContextMode+ >
.> ?
Single? E
,E F
ConcurrencyModeG V
=W X
ConcurrencyModeY h
.h i
Multiplei q
)q r
]r s
public 

partial 
class 
MainService $
:% &
IPlayerManager' 5
{ 
public 
static 
readonly 
string %
ACTIVATION_STATE& 6
=7 8
$str9 H
;H I
public 
static 
readonly 
string %
ACTIVE_STATE& 2
=3 4
$str5 =
;= >
public 
static 
readonly 
string %
REPORTED_STATE& 4
=5 6
$str7 D
;D E
public 
static 
readonly 
string %

DOWN_STATE& 0
=1 2
$str3 9
;9 :
private 
readonly 
string 
mailUser  (
=) * 
ConfigurationManager+ ?
.? @
AppSettings@ K
[K L
$strL V
]V W
;W X
private 
readonly 
string 
mailPassword  ,
=- . 
ConfigurationManager/ C
.C D
AppSettingsD O
[O P
$strP ^
]^ _
;_ `
JugadorDataManager 
jugadorDataManager -
=. /
new0 3
JugadorDataManager4 F
(F G
)G H
;H I
HashManager 
hashText 
= 
new "
HashManager# .
(. /
)/ 0
;0 1
private   

Dictionary   
<   
string   !
,  ! ""
IPlayerManagerCallback  " 8
>  8 9
playersLoggedIn  : I
=  J K
new  L O

Dictionary  P Z
<  Z [
string  [ a
,  a b"
IPlayerManagerCallback  c y
>  y z
(  z {
)  { |
;  | }
public$$ 
void$$ 
Login$$ 
($$ 
Jugador$$ !
player$$" (
)$$( )
{%% 	
LoginResult&& 
result&& 
;&& 
AdminDataManager'' 
adminDataManager'' -
=''. /
new''0 3
AdminDataManager''4 D
(''D E
)''E F
;''F G
if(( 
((( 
adminDataManager((  
.((  !
CheckNickname((! .
(((. /
player((/ 5
.((5 6
Apodo((6 ;
)((; <
)((< =
{)) 
if** 
(** 
adminDataManager** $
.**$ %
EsPasswordCorrecto**% 7
(**7 8
player**8 >
.**> ?
Contrasenia**? J
,**J K
player**L R
.**R S
Apodo**S X
)**X Y
)**Y Z
{++ 
try,, 
{-- 
result.. 
=..  
LoginResult..! ,
..., -
EsAdmin..- 4
;..4 5
playersLoggedIn00 '
.00' (
Add00( +
(00+ ,
player00, 2
.002 3
Apodo003 8
,008 9
PlayerCallback00: H
)00H I
;00I J
}11 
catch22 
(22 (
AddressAlreadyInUseException22 7
)227 8
{33 
result44 
=44  
LoginResult44! ,
.44, -
LOGGED_PLAYER44- :
;44: ;
}55 
PlayerCallback77 "
.77" #
GetAdminLoginResult77# 6
(776 7
result777 =
,77= >
player77? E
)77E F
;77F G
}88 
else99 
{:: 
result;; 
=;; 
LoginResult;; (
.;;( )
PasswordIncorrecto;;) ;
;;;; <
PlayerCallback== "
.==" #
GetAdminLoginResult==# 6
(==6 7
result==7 =
,=== >
player==? E
)==E F
;==F G
}>> 
}?? 
else@@ 
{AA 
LoginPlayerBB 
(BB 
playerBB "
)BB" #
;BB# $
}CC 
}DD 	
publicFF 
voidFF 
LoginPlayerFF 
(FF  
JugadorFF  '
playerFF( .
)FF. /
{GG 	
LoginResultHH 
resultHH 
=HH  
LoginResultHH! ,
.HH, -
NoExisteJugadorHH- <
;HH< =
JugadorDataManagerII 
jugadorManagerII -
=II. /
newII0 3
JugadorDataManagerII4 F
(IIF G
)IIG H
;IIH I
ifJJ 
(JJ 
jugadorManagerJJ 
.JJ 
CheckNicknameJJ ,
(JJ, -
playerJJ- 3
.JJ3 4
ApodoJJ4 9
)JJ9 :
)JJ: ;
{KK 
ifLL 
(LL 
jugadorManagerLL "
.LL" #

CheckStateLL# -
(LL- .
playerLL. 4
.LL4 5
ApodoLL5 :
)LL: ;
)LL; <
{MM 
ifNN 
(NN 
jugadorManagerNN &
.NN& '
EsPasswordCorrectoNN' 9
(NN9 :
playerNN: @
.NN@ A
ContraseniaNNA L
,NNL M
playerNNN T
.NNT U
ApodoNNU Z
)NNZ [
)NN[ \
{OO 

DataAccessPP "
.PP" #
JugadorPP# *
searchedPlayerPP+ 9
=PP: ;
jugadorManagerPP< J
.PPJ K
GetPlayerByNicknamePPK ^
(PP^ _
playerPP_ e
.PPe f
ApodoPPf k
)PPk l
;PPl m
ifQQ 
(QQ 
!QQ 
playersLoggedInQQ ,
.QQ, -
ContainsKeyQQ- 8
(QQ8 9
searchedPlayerQQ9 G
.QQG H
apodoQQH M
)QQM N
)QQN O
{RR 
resultSS "
=SS# $
LoginResultSS% 0
.SS0 1#
ExisteJugadorVerificadoSS1 H
;SSH I
playersLoggedInUU +
.UU+ ,
AddUU, /
(UU/ 0
searchedPlayerUU0 >
.UU> ?
apodoUU? D
,UUD E
PlayerCallbackUUF T
)UUT U
;UUU V
playerVV "
.VV" #
ApodoVV# (
=VV) *
searchedPlayerVV+ 9
.VV9 :
apodoVV: ?
;VV? @
playerWW "
.WW" #

IdLenguajeWW# -
=WW. /
searchedPlayerWW0 >
.WW> ?
idiomaWW? E
;WWE F
playerXX "
.XX" #
	IdJugadorXX# ,
=XX- .
searchedPlayerXX/ =
.XX= >
	idJugadorXX> G
;XXG H
playerYY "
.YY" #
ContraseniaYY# .
=YY/ 0
searchedPlayerYY1 ?
.YY? @
contraseniaYY@ K
;YYK L
playerZZ "
.ZZ" #
CorreoElectronicoZZ# 4
=ZZ5 6
searchedPlayerZZ7 E
.ZZE F
correoElectronicoZZF W
;ZZW X
player[[ "
.[[" # 
PreguntaRecuperacion[[# 7
=[[8 9
searchedPlayer[[: H
.[[H I 
preguntaRecuperacion[[I ]
;[[] ^
PlayerCallback]] *
.]]* + 
GetPlayerLoginResult]]+ ?
(]]? @
result]]@ F
,]]F G
player]]H N
)]]N O
;]]O P
}^^ 
else__ 
{`` 
resultaa "
=aa# $
LoginResultaa% 0
.aa0 1
LOGGED_PLAYERaa1 >
;aa> ?
PlayerCallbackcc *
.cc* + 
GetPlayerLoginResultcc+ ?
(cc? @
resultcc@ F
,ccF G
playerccH N
)ccN O
;ccO P
}dd 
}ee 
elseff 
{gg 
resulthh 
=hh  
LoginResulthh! ,
.hh, -
PasswordIncorrectohh- ?
;hh? @
PlayerCallbackjj &
.jj& ' 
GetPlayerLoginResultjj' ;
(jj; <
resultjj< B
,jjB C
playerjjD J
)jjJ K
;jjK L
}kk 
}ll 
elsemm 
{nn 
CheckBanoo 
(oo 
playeroo #
)oo# $
;oo$ %
}pp 
}qq 
elserr 
{ss 
PlayerCallbacktt 
.tt  
GetPlayerLoginResulttt 3
(tt3 4
resulttt4 :
,tt: ;
playertt< B
)ttB C
;ttC D
}uu 
}vv 	
privatexx 
voidxx 
CheckBanxx 
(xx 
Jugadorxx %
playerxx& ,
)xx, -
{yy 	
LoginResultzz 
resultzz 
;zz 
JugadorDataManager{{ 
jugadorManager{{ -
={{. /
new{{0 3
JugadorDataManager{{4 F
({{F G
){{G H
;{{H I
if|| 
(|| 
jugadorDataManager|| "
.||" #
CheckBannedState||# 3
(||3 4
player||4 :
.||: ;
Apodo||; @
)||@ A
)||A B
{}} 
result~~ 
=~~ 
LoginResult~~ $
.~~$ %
	EsBaneado~~% .
;~~. /
PlayerCallback
ÄÄ 
.
ÄÄ "
GetPlayerLoginResult
ÄÄ 3
(
ÄÄ3 4
result
ÄÄ4 :
,
ÄÄ: ;
player
ÄÄ< B
)
ÄÄB C
;
ÄÄC D
}
ÅÅ 
else
ÇÇ 
{
ÉÉ 
result
ÑÑ 
=
ÑÑ 
LoginResult
ÑÑ $
.
ÑÑ$ %'
ExisteJugadorNoVerificado
ÑÑ% >
;
ÑÑ> ?
PlayerCallback
ÜÜ 
.
ÜÜ "
GetPlayerLoginResult
ÜÜ 3
(
ÜÜ3 4
result
ÜÜ4 :
,
ÜÜ: ;
player
ÜÜ< B
)
ÜÜB C
;
ÜÜC D
}
áá 
}
àà 	
public
ää 
void
ää 

SavePlayer
ää 
(
ää 
Dominio
ää &
.
ää& '
Jugador
ää' .
player
ää/ 5
)
ää5 6
{
ãã 	 
JugadorDataManager
åå 
playerDataManager
åå 0
=
åå1 2
new
åå3 6 
JugadorDataManager
åå7 I
(
ååI J
)
ååJ K
;
ååK L

SaveResult
éé 

saveResult
éé !
;
éé! "

MailResult
èè 

mailResult
èè !
;
èè! "
bool
ëë 
nicknameExists
ëë 
=
ëë  !
playerDataManager
ëë" 3
.
ëë3 4
CheckNickname
ëë4 A
(
ëëA B
player
ëëB H
.
ëëH I
Apodo
ëëI N
)
ëëN O
;
ëëO P
if
ìì 
(
ìì 
!
ìì 
nicknameExists
ìì 
)
ìì  
{
îî 
bool
ïï 
emailExists
ïï  
=
ïï! "
playerDataManager
ïï# 4
.
ïï4 5

CheckEmail
ïï5 ?
(
ïï? @
player
ïï@ F
.
ïïF G
CorreoElectronico
ïïG X
)
ïïX Y
;
ïïY Z
if
óó 
(
óó 
!
óó 
emailExists
óó  
)
óó  !
{
òò 
System
ôô 
.
ôô 
Net
ôô 
.
ôô 
Mail
ôô #
.
ôô# $
MailMessage
ôô$ /
mensaje
ôô0 7
=
ôô8 9
new
ôô: =
System
ôô> D
.
ôôD E
Net
ôôE H
.
ôôH I
Mail
ôôI M
.
ôôM N
MailMessage
ôôN Y
(
ôôY Z
)
ôôZ [
;
ôô[ \
mensaje
õõ 
.
õõ 
To
õõ 
.
õõ 
Add
õõ "
(
õõ" #
player
õõ# )
.
õõ) *
CorreoElectronico
õõ* ;
)
õõ; <
;
õõ< =
mensaje
úú 
.
úú 
Subject
úú #
=
úú$ %
$str
úú& E
+
úúF G
player
úúH N
.
úúN O
Apodo
úúO T
;
úúT U
mensaje
ùù 
.
ùù 
Body
ùù  
=
ùù! "
$str
ùù# +
+
ùù, -
player
ùù. 4
.
ùù4 5
Apodo
ùù5 :
+
ùù; <
$str
ùù= t
+
ùùu v
$str
ûû G
+
ûûH I
player
ûûJ P
.
ûûP Q
PinConfirmacion
ûûQ `
;
ûû` a
mensaje
üü 
.
üü 
From
üü  
=
üü! "
new
üü# &
System
üü' -
.
üü- .
Net
üü. 1
.
üü1 2
Mail
üü2 6
.
üü6 7
MailAddress
üü7 B
(
üüB C
$str
üüC ^
,
üü^ _
$str
üü` w
)
üüw x
;
üüx y
System
°° 
.
°° 
Net
°° 
.
°° 
Mail
°° #
.
°°# $

SmtpClient
°°$ .
cliente
°°/ 6
=
°°7 8
new
°°9 <
System
°°= C
.
°°C D
Net
°°D G
.
°°G H
Mail
°°H L
.
°°L M

SmtpClient
°°M W
{
¢¢ 
Credentials
££ #
=
££$ %
new
££& )
System
££* 0
.
££0 1
Net
££1 4
.
££4 5
NetworkCredential
££5 F
(
££F G
mailUser
££G O
,
££O P
mailPassword
££Q ]
)
££] ^
,
££^ _
Port
§§ 
=
§§ 
$num
§§ "
,
§§" #
	EnableSsl
•• !
=
••" #
true
••$ (
,
••( )
Host
¶¶ 
=
¶¶ 
$str
¶¶ /
,
¶¶/ 0
}
ßß 
;
ßß 
try
®® 
{
©© 

mailResult
™™ "
=
™™# $

MailResult
™™% /
.
™™/ 0
MailSend
™™0 8
;
™™8 9
cliente
´´ 
.
´´  
Send
´´  $
(
´´$ %
mensaje
´´% ,
)
´´, -
;
´´- .
}
¨¨ 
catch
≠≠ 
(
≠≠ 
System
≠≠ !
.
≠≠! "
Net
≠≠" %
.
≠≠% &
Mail
≠≠& *
.
≠≠* +
SmtpException
≠≠+ 8
)
≠≠8 9
{
ÆÆ 

mailResult
ØØ "
=
ØØ# $

MailResult
ØØ% /
.
ØØ/ 0
	SendError
ØØ0 9
;
ØØ9 :
PlayerCallback
∞∞ &
.
∞∞& '!
GetResendMailResult
∞∞' :
(
∞∞: ;

mailResult
∞∞; E
,
∞∞E F
player
∞∞G M
.
∞∞M N
Apodo
∞∞N S
)
∞∞S T
;
∞∞T U
}
±± 
if
≤≤ 
(
≤≤ 

mailResult
≤≤ "
==
≤≤# %

MailResult
≤≤& 0
.
≤≤0 1
MailSend
≤≤1 9
)
≤≤9 :
{
≥≥ 
SaveNewPlayer
¥¥ %
(
¥¥% &
player
¥¥& ,
)
¥¥, -
;
¥¥- .
}
µµ 
}
∂∂ 
else
∑∑ 
{
∏∏ 

saveResult
ππ 
=
ππ  

SaveResult
ππ! +
.
ππ+ ,
CorreoExistente
ππ, ;
;
ππ; <
PlayerCallback
∫∫ "
.
∫∫" #
GetSaveResult
∫∫# 0
(
∫∫0 1

saveResult
∫∫1 ;
,
∫∫; <
player
∫∫= C
)
∫∫C D
;
∫∫D E
}
ªª 
}
ºº 
else
ΩΩ 
{
ææ 

saveResult
øø 
=
øø 

SaveResult
øø '
.
øø' (
NicknameExistente
øø( 9
;
øø9 :
PlayerCallback
¿¿ 
.
¿¿ 
GetSaveResult
¿¿ ,
(
¿¿, -

saveResult
¿¿- 7
,
¿¿7 8
player
¿¿9 ?
)
¿¿? @
;
¿¿@ A
}
¡¡ 
}
¬¬ 	
private
ƒƒ 
void
ƒƒ 
SaveNewPlayer
ƒƒ "
(
ƒƒ" #
Jugador
ƒƒ# *
player
ƒƒ+ 1
)
ƒƒ1 2
{
≈≈ 	

SaveResult
∆∆ 

saveResult
∆∆ !
;
∆∆! "

DataAccess
«« 
.
«« 
Jugador
«« 
	newPlayer
«« (
=
««) *
new
««+ .

DataAccess
««/ 9
.
««9 :
Jugador
««: A
{
»» 
apodo
…… 
=
…… 
player
…… 
.
…… 
Apodo
…… $
,
……$ %
contrasenia
   
=
   
hashText
   &
.
  & '

TextToHash
  ' 1
(
  1 2
player
  2 8
.
  8 9
Contrasenia
  9 D
)
  D E
,
  E F
correoElectronico
ÀÀ !
=
ÀÀ" #
player
ÀÀ$ *
.
ÀÀ* +
CorreoElectronico
ÀÀ+ <
,
ÀÀ< =
status
ÃÃ 
=
ÃÃ 
ACTIVATION_STATE
ÃÃ )
,
ÃÃ) *#
respuestaConfirmacion
ÕÕ %
=
ÕÕ& '
player
ÕÕ( .
.
ÕÕ. /#
RespuestaConfirmacion
ÕÕ/ D
,
ÕÕD E"
preguntaRecuperacion
ŒŒ $
=
ŒŒ% &
player
ŒŒ' -
.
ŒŒ- ."
PreguntaRecuperacion
ŒŒ. B
,
ŒŒB C
pinConfirmacion
œœ 
=
œœ  !
player
œœ" (
.
œœ( )
PinConfirmacion
œœ) 8
,
œœ8 9
	idCreador
–– 
=
–– 
$num
–– 
,
–– 
idioma
—— 
=
—— 
player
—— 
.
——  

IdLenguaje
——  *
}
““ 
;
““  
JugadorDataManager
‘‘ 
jugadorManager
‘‘ -
=
‘‘. /
new
‘‘0 3 
JugadorDataManager
‘‘4 F
(
‘‘F G
)
‘‘G H
;
‘‘H I
int
’’ 
columnasAfectadas
’’ !
=
’’" #
jugadorManager
’’$ 2
.
’’2 3
SaveNewPlayer
’’3 @
(
’’@ A
	newPlayer
’’A J
)
’’J K
;
’’K L 
RankingDataManager
÷÷ 
rankingData
÷÷ *
=
÷÷+ ,
new
÷÷- 0 
RankingDataManager
÷÷1 C
(
÷÷C D
)
÷÷D E
;
÷÷E F
rankingData
◊◊ 
.
◊◊ 
NewPlayerRank
◊◊ %
(
◊◊% &
	newPlayer
◊◊& /
)
◊◊/ 0
;
◊◊0 1
if
ÿÿ 
(
ÿÿ 
columnasAfectadas
ÿÿ !
>
ÿÿ" #
$num
ÿÿ$ %
)
ÿÿ% &
{
ŸŸ 

saveResult
⁄⁄ 
=
⁄⁄ 

SaveResult
⁄⁄ '
.
⁄⁄' (
JugadorGuardado
⁄⁄( 7
;
⁄⁄7 8
PlayerCallback
€€ 
.
€€ 
GetSaveResult
€€ ,
(
€€, -

saveResult
€€- 7
,
€€7 8
player
€€9 ?
)
€€? @
;
€€@ A
}
‹‹ 
else
›› 
{
ﬁﬁ 

saveResult
ﬂﬂ 
=
ﬂﬂ 

SaveResult
ﬂﬂ '
.
ﬂﬂ' (
ErrorGuardado
ﬂﬂ( 5
;
ﬂﬂ5 6
PlayerCallback
‡‡ 
.
‡‡ 
GetSaveResult
‡‡ ,
(
‡‡, -

saveResult
‡‡- 7
,
‡‡7 8
player
‡‡9 ?
)
‡‡? @
;
‡‡@ A
}
·· 
}
‚‚ 	
public
‰‰ 
void
‰‰ 
VerifyPlayer
‰‰  
(
‰‰  !
Dominio
‰‰! (
.
‰‰( )
Jugador
‰‰) 0
player
‰‰1 7
)
‰‰7 8
{
ÂÂ 	 
VerificationResult
ÊÊ 
	resultado
ÊÊ (
=
ÊÊ) * 
VerificationResult
ÊÊ+ =
.
ÊÊ= >
NoExisteJugador
ÊÊ> M
;
ÊÊM N 
JugadorDataManager
ËË 
jugadorManager
ËË -
=
ËË. /
new
ËË0 3 
JugadorDataManager
ËË4 F
(
ËËF G
)
ËËG H
;
ËËH I
if
ÍÍ 
(
ÍÍ 
jugadorManager
ÍÍ 
.
ÍÍ 
CheckNickname
ÍÍ ,
(
ÍÍ, -
player
ÍÍ- 3
.
ÍÍ3 4
Apodo
ÍÍ4 9
)
ÍÍ9 :
)
ÍÍ: ;
{
ÎÎ 
if
ÏÏ 
(
ÏÏ 
jugadorManager
ÏÏ "
.
ÏÏ" #
PinCorrecto
ÏÏ# .
(
ÏÏ. /
player
ÏÏ/ 5
.
ÏÏ5 6
Apodo
ÏÏ6 ;
,
ÏÏ; <
player
ÏÏ= C
.
ÏÏC D
PinConfirmacion
ÏÏD S
)
ÏÏS T
)
ÏÏT U
{
ÌÌ 
int
ÓÓ 
result
ÓÓ 
=
ÓÓ  
jugadorManager
ÓÓ! /
.
ÓÓ/ 0
VerifyNewPlayer
ÓÓ0 ?
(
ÓÓ? @
new
ÓÓ@ C

DataAccess
ÓÓD N
.
ÓÓN O
Jugador
ÓÓO V
{
ÔÔ 
apodo
 
=
 
player
  &
.
& '
Apodo
' ,
,
, -
pinConfirmacion
ÒÒ '
=
ÒÒ( )
player
ÒÒ* 0
.
ÒÒ0 1
PinConfirmacion
ÒÒ1 @
,
ÒÒ@ A
}
ÚÚ 
)
ÚÚ 
;
ÚÚ 
if
ÙÙ 
(
ÙÙ 
result
ÙÙ 
>
ÙÙ  
$num
ÙÙ! "
)
ÙÙ" #
{
ıı 
	resultado
ˆˆ !
=
ˆˆ" # 
VerificationResult
ˆˆ$ 6
.
ˆˆ6 7"
VerificacionExistosa
ˆˆ7 K
;
ˆˆK L
}
˜˜ 
}
¯¯ 
else
˘˘ 
{
˙˙ 
	resultado
˚˚ 
=
˚˚  
VerificationResult
˚˚  2
.
˚˚2 3
PinIncorrecto
˚˚3 @
;
˚˚@ A
}
¸¸ 
}
˝˝ 
else
˛˛ 
{
ˇˇ 
	resultado
ÄÄ 
=
ÄÄ  
VerificationResult
ÄÄ .
.
ÄÄ. /
NoExisteJugador
ÄÄ/ >
;
ÄÄ> ?
}
ÅÅ 
PlayerCallback
ÉÉ 
.
ÉÉ 
GetVerifyResult
ÉÉ *
(
ÉÉ* +
	resultado
ÉÉ+ 4
)
ÉÉ4 5
;
ÉÉ5 6
}
ÑÑ 	
public
ÜÜ 
void
ÜÜ 
SendMail
ÜÜ 
(
ÜÜ 
Jugador
ÜÜ $
player
ÜÜ% +
)
ÜÜ+ ,
{
áá 	

MailResult
àà 
mailSuccesResult
àà '
;
àà' (
System
ää 
.
ää 
Net
ää 
.
ää 
Mail
ää 
.
ää 
MailMessage
ää '
mailMesagge
ää( 3
=
ää4 5
new
ää6 9
System
ää: @
.
ää@ A
Net
ääA D
.
ääD E
Mail
ääE I
.
ääI J
MailMessage
ääJ U
(
ääU V
)
ääV W
;
ääW X
mailMesagge
åå 
.
åå 
To
åå 
.
åå 
Add
åå 
(
åå 
player
åå %
.
åå% &
CorreoElectronico
åå& 7
)
åå7 8
;
åå8 9
mailMesagge
çç 
.
çç 
Subject
çç 
=
çç  !
$str
çç" A
+
ççB C
player
ççD J
.
ççJ K
Apodo
ççK P
;
ççP Q
mailMesagge
éé 
.
éé 
Body
éé 
=
éé 
$str
éé '
+
éé( )
player
éé* 0
.
éé0 1
Apodo
éé1 6
+
éé7 8
$str
éé9 p
+
ééq r
$str
èè ?
+
èè@ A
player
èèB H
.
èèH I
PinConfirmacion
èèI X
;
èèX Y
mailMesagge
êê 
.
êê 
From
êê 
=
êê 
new
êê "
System
êê# )
.
êê) *
Net
êê* -
.
êê- .
Mail
êê. 2
.
êê2 3
MailAddress
êê3 >
(
êê> ?
$str
êê? Z
,
êêZ [
$str
êê\ s
)
êês t
;
êêt u
System
íí 
.
íí 
Net
íí 
.
íí 
Mail
íí 
.
íí 

SmtpClient
íí &
client
íí' -
=
íí. /
new
íí0 3
System
íí4 :
.
íí: ;
Net
íí; >
.
íí> ?
Mail
íí? C
.
ííC D

SmtpClient
ííD N
{
ìì 
Credentials
îî 
=
îî 
new
îî !
System
îî" (
.
îî( )
Net
îî) ,
.
îî, -
NetworkCredential
îî- >
(
îî> ?
mailUser
îî? G
,
îîG H
mailPassword
îîI U
)
îîU V
,
îîV W
Port
ïï 
=
ïï 
$num
ïï 
,
ïï 
	EnableSsl
ññ 
=
ññ 
true
ññ  
,
ññ  !
Host
óó 
=
óó 
$str
óó '
,
óó' (
}
òò 
;
òò 
try
ôô 
{
öö 
client
õõ 
.
õõ 
Send
õõ 
(
õõ 
mailMesagge
õõ '
)
õõ' (
;
õõ( )
mailSuccesResult
úú  
=
úú! "

MailResult
úú# -
.
úú- .
MailSend
úú. 6
;
úú6 7
PlayerCallback
ùù 
.
ùù !
GetResendMailResult
ùù 2
(
ùù2 3
mailSuccesResult
ùù3 C
,
ùùC D
player
ùùE K
.
ùùK L
Apodo
ùùL Q
)
ùùQ R
;
ùùR S
}
ûû 
catch
üü 
(
üü 
System
üü 
.
üü 
Net
üü 
.
üü 
Mail
üü "
.
üü" #
SmtpException
üü# 0
)
üü0 1
{
†† 
mailSuccesResult
°°  
=
°°! "

MailResult
°°# -
.
°°- .
	SendError
°°. 7
;
°°7 8
PlayerCallback
¢¢ 
.
¢¢ !
GetResendMailResult
¢¢ 2
(
¢¢2 3
mailSuccesResult
¢¢3 C
,
¢¢C D
player
¢¢E K
.
¢¢K L
Apodo
¢¢L Q
)
¢¢Q R
;
¢¢R S
}
££ 
}
§§ 	
public
¶¶ 
void
¶¶  
PasswordForgotMail
¶¶ &
(
¶¶& '
string
¶¶' -
actualNickname
¶¶. <
)
¶¶< =
{
ßß 	 
JugadorDataManager
®® 
jugadorManager
®® -
=
®®. /
new
®®0 3 
JugadorDataManager
®®4 F
(
®®F G
)
®®G H
;
®®H I

MailResult
©© 
mailSuccesResult
©© '
;
©©' (
string
™™ 
securityQuestion
™™ #
=
™™$ %
$str
™™& )
;
™™) *
if
¨¨ 
(
¨¨ 
jugadorManager
¨¨ 
.
¨¨ 
CheckNickname
¨¨ ,
(
¨¨, -
actualNickname
¨¨- ;
)
¨¨; <
)
¨¨< =
{
≠≠ 

DataAccess
ÆÆ 
.
ÆÆ 
Jugador
ÆÆ "
player
ÆÆ# )
=
ÆÆ* +
jugadorManager
ÆÆ, :
.
ÆÆ: ;!
ChangePinByNickname
ÆÆ; N
(
ÆÆN O
actualNickname
ÆÆO ]
)
ÆÆ] ^
;
ÆÆ^ _
securityQuestion
ØØ  
=
ØØ! "
player
ØØ# )
.
ØØ) *"
preguntaRecuperacion
ØØ* >
;
ØØ> ?
System
±± 
.
±± 
Net
±± 
.
±± 
Mail
±± 
.
±±  
MailMessage
±±  +
mailMesagge
±±, 7
=
±±8 9
new
±±: =
System
±±> D
.
±±D E
Net
±±E H
.
±±H I
Mail
±±I M
.
±±M N
MailMessage
±±N Y
(
±±Y Z
)
±±Z [
;
±±[ \
mailMesagge
≥≥ 
.
≥≥ 
To
≥≥ 
.
≥≥ 
Add
≥≥ "
(
≥≥" #
player
≥≥# )
.
≥≥) *
correoElectronico
≥≥* ;
)
≥≥; <
;
≥≥< =
mailMesagge
¥¥ 
.
¥¥ 
Subject
¥¥ #
=
¥¥$ %
$str
¥¥& K
+
¥¥L M
player
¥¥N T
.
¥¥T U
apodo
¥¥U Z
;
¥¥Z [
mailMesagge
µµ 
.
µµ 
Body
µµ  
=
µµ! "
$str
µµ# *
+
µµ+ ,
player
µµ- 3
.
µµ3 4
apodo
µµ4 9
+
µµ: ;
$str
µµ< j
+
µµk l
$str
∂∂ \
+
∂∂] ^
player
∂∂_ e
.
∂∂e f
pinConfirmacion
∂∂f u
;
∂∂u v
mailMesagge
∑∑ 
.
∑∑ 
From
∑∑  
=
∑∑! "
new
∑∑# &
System
∑∑' -
.
∑∑- .
Net
∑∑. 1
.
∑∑1 2
Mail
∑∑2 6
.
∑∑6 7
MailAddress
∑∑7 B
(
∑∑B C
$str
∑∑C ^
,
∑∑^ _
$str
∑∑` w
)
∑∑w x
;
∑∑x y
System
ππ 
.
ππ 
Net
ππ 
.
ππ 
Mail
ππ 
.
ππ  

SmtpClient
ππ  *
client
ππ+ 1
=
ππ2 3
new
ππ4 7
System
ππ8 >
.
ππ> ?
Net
ππ? B
.
ππB C
Mail
ππC G
.
ππG H

SmtpClient
ππH R
{
∫∫ 
Credentials
ªª 
=
ªª  !
new
ªª" %
System
ªª& ,
.
ªª, -
Net
ªª- 0
.
ªª0 1
NetworkCredential
ªª1 B
(
ªªB C
mailUser
ªªC K
,
ªªK L
mailPassword
ªªM Y
)
ªªY Z
,
ªªZ [
Port
ºº 
=
ºº 
$num
ºº 
,
ºº 
	EnableSsl
ΩΩ 
=
ΩΩ 
true
ΩΩ  $
,
ΩΩ$ %
Host
ææ 
=
ææ 
$str
ææ +
,
ææ+ ,
}
øø 
;
øø 
try
¿¿ 
{
¡¡ 
client
¬¬ 
.
¬¬ 
Send
¬¬ 
(
¬¬  
mailMesagge
¬¬  +
)
¬¬+ ,
;
¬¬, -
mailSuccesResult
√√ $
=
√√% &

MailResult
√√' 1
.
√√1 2
MailSend
√√2 :
;
√√: ;
PlayerCallback
ƒƒ "
.
ƒƒ" #
GetMailResult
ƒƒ# 0
(
ƒƒ0 1
mailSuccesResult
ƒƒ1 A
,
ƒƒA B
actualNickname
ƒƒC Q
,
ƒƒQ R
securityQuestion
ƒƒS c
)
ƒƒc d
;
ƒƒd e
}
≈≈ 
catch
∆∆ 
(
∆∆ 
System
∆∆ 
.
∆∆ 
Net
∆∆ !
.
∆∆! "
Mail
∆∆" &
.
∆∆& '
SmtpException
∆∆' 4
)
∆∆4 5
{
«« 
mailSuccesResult
»» $
=
»»% &

MailResult
»»' 1
.
»»1 2
	SendError
»»2 ;
;
»»; <
PlayerCallback
…… "
.
……" #
GetMailResult
……# 0
(
……0 1
mailSuccesResult
……1 A
,
……A B
actualNickname
……C Q
,
……Q R
securityQuestion
……S c
)
……c d
;
……d e
}
   
}
ÀÀ 
else
ÃÃ 
{
ÕÕ 
mailSuccesResult
ŒŒ  
=
ŒŒ! "

MailResult
ŒŒ# -
.
ŒŒ- .
UnknownPlayer
ŒŒ. ;
;
ŒŒ; <
PlayerCallback
œœ 
.
œœ 
GetMailResult
œœ ,
(
œœ, -
mailSuccesResult
œœ- =
,
œœ= >
actualNickname
œœ? M
,
œœM N
securityQuestion
œœO _
)
œœ_ `
;
œœ` a
}
–– 
}
—— 	
public
”” 
void
”” 
	VerifyPin
”” 
(
”” 
string
”” $
actualNickname
””% 3
,
””3 4
string
””5 ;
	playerPin
””< E
,
””E F
string
””G M

answerText
””N X
)
””X Y
{
‘‘ 	
	PinResult
’’ 
	pinResult
’’ 
=
’’  !
	PinResult
’’" +
.
’’+ ,

UnknownPin
’’, 6
;
’’6 7
if
◊◊ 
(
◊◊  
jugadorDataManager
◊◊ "
.
◊◊" #
PinCorrecto
◊◊# .
(
◊◊. /
actualNickname
◊◊/ =
,
◊◊= >
	playerPin
◊◊? H
)
◊◊H I
)
◊◊I J
{
ÿÿ 
if
ŸŸ 
(
ŸŸ  
jugadorDataManager
ŸŸ &
.
ŸŸ& '
CorrectAnswer
ŸŸ' 4
(
ŸŸ4 5
actualNickname
ŸŸ5 C
,
ŸŸC D

answerText
ŸŸE O
)
ŸŸO P
)
ŸŸP Q
{
⁄⁄ 
	pinResult
€€ 
=
€€ 
	PinResult
€€  )
.
€€) *
VerifiedPin
€€* 5
;
€€5 6
}
‹‹ 
else
›› 
{
ﬁﬁ 
	pinResult
ﬂﬂ 
=
ﬂﬂ 
	PinResult
ﬂﬂ  )
.
ﬂﬂ) *
WrongAnswer
ﬂﬂ* 5
;
ﬂﬂ5 6
}
‡‡ 
}
·· 
PlayerCallback
„„ 
.
„„ 
GetPinResult
„„ '
(
„„' (
	pinResult
„„( 1
,
„„1 2
actualNickname
„„3 A
)
„„A B
;
„„B C
}
‰‰ 	
public
ÊÊ 
void
ÊÊ 
ChangePassword
ÊÊ "
(
ÊÊ" #
string
ÊÊ# )
userNickname
ÊÊ* 6
,
ÊÊ6 7
string
ÊÊ8 >
password
ÊÊ? G
)
ÊÊG H
{
ÁÁ 	"
PasswordChangeResult
ËË  
changeResult
ËË! -
=
ËË. /"
PasswordChangeResult
ËË0 D
.
ËËD E
ErrorChanging
ËËE R
;
ËËR S
if
ÍÍ 
(
ÍÍ  
jugadorDataManager
ÍÍ "
.
ÍÍ" #
CheckNickname
ÍÍ# 0
(
ÍÍ0 1
userNickname
ÍÍ1 =
)
ÍÍ= >
)
ÍÍ> ?
{
ÎÎ 
string
ÏÏ 
newPassword
ÏÏ "
=
ÏÏ# $
hashText
ÏÏ% -
.
ÏÏ- .

TextToHash
ÏÏ. 8
(
ÏÏ8 9
password
ÏÏ9 A
)
ÏÏA B
;
ÏÏB C
int
ÌÌ 
resultChange
ÌÌ  
=
ÌÌ! " 
jugadorDataManager
ÌÌ# 5
.
ÌÌ5 6
ChangePassword
ÌÌ6 D
(
ÌÌD E
userNickname
ÌÌE Q
,
ÌÌQ R
newPassword
ÌÌS ^
)
ÌÌ^ _
;
ÌÌ_ `
if
ÔÔ 
(
ÔÔ 
resultChange
ÔÔ  
>
ÔÔ! "
$num
ÔÔ# $
)
ÔÔ$ %
{
 
changeResult
ÒÒ  
=
ÒÒ! ""
PasswordChangeResult
ÒÒ# 7
.
ÒÒ7 8
ChangedPassword
ÒÒ8 G
;
ÒÒG H
}
ÚÚ 
}
ÙÙ 
PlayerCallback
ˆˆ 
.
ˆˆ %
GetPasswordChangeResult
ˆˆ 2
(
ˆˆ2 3
changeResult
ˆˆ3 ?
)
ˆˆ? @
;
ˆˆ@ A
}
¯¯ 	
public
˙˙ 
void
˙˙ 
GetActualPlayer
˙˙ #
(
˙˙# $
Jugador
˙˙$ +
actualPlayer
˙˙, 8
)
˙˙8 9
{
˚˚ 	 
DataObtainedResult
¸¸  
dataObtainedResult
¸¸ 1
=
¸¸2 3 
DataObtainedResult
¸¸4 F
.
¸¸F G 
ErrorObtainingData
¸¸G Y
;
¸¸Y Z

DataAccess
˝˝ 
.
˝˝ 
Jugador
˝˝ 
searchedPlayer
˝˝ -
=
˝˝. / 
jugadorDataManager
˝˝0 B
.
˝˝B C!
GetPlayerByNickname
˝˝C V
(
˝˝V W
actualPlayer
˝˝W c
.
˝˝c d
Apodo
˝˝d i
)
˝˝i j
;
˝˝j k
if
ˇˇ 
(
ˇˇ 
searchedPlayer
ˇˇ 
!=
ˇˇ !
null
ˇˇ" &
)
ˇˇ& '
{
ÄÄ 
Dominio
ÅÅ 
.
ÅÅ 
Jugador
ÅÅ "
domainSearchedPlayer
ÅÅ  4
=
ÅÅ5 6
new
ÅÅ7 :
Dominio
ÅÅ; B
.
ÅÅB C
Jugador
ÅÅC J
{
ÇÇ 
	IdJugador
ÉÉ 
=
ÉÉ 
searchedPlayer
ÉÉ  .
.
ÉÉ. /
	idJugador
ÉÉ/ 8
,
ÉÉ8 9
Apodo
ÑÑ 
=
ÑÑ 
searchedPlayer
ÑÑ *
.
ÑÑ* +
apodo
ÑÑ+ 0
,
ÑÑ0 1
CorreoElectronico
ÖÖ %
=
ÖÖ& '
searchedPlayer
ÖÖ( 6
.
ÖÖ6 7
correoElectronico
ÖÖ7 H
,
ÖÖH I
Status
ÜÜ 
=
ÜÜ 
searchedPlayer
ÜÜ +
.
ÜÜ+ ,
status
ÜÜ, 2
,
ÜÜ2 3"
PreguntaRecuperacion
áá (
=
áá) *
searchedPlayer
áá+ 9
.
áá9 :"
preguntaRecuperacion
áá: N
,
ááN O

IdLenguaje
àà 
=
àà  
searchedPlayer
àà! /
.
àà/ 0
idioma
àà0 6
}
ää 
;
ää  
dataObtainedResult
ãã "
=
ãã# $ 
DataObtainedResult
ãã% 7
.
ãã7 8
DataObtained
ãã8 D
;
ããD E
PlayerCallback
åå 
.
åå 
SendActualPlayer
åå /
(
åå/ 0 
dataObtainedResult
åå0 B
,
ååB C"
domainSearchedPlayer
ååD X
)
ååX Y
;
ååY Z
}
çç 
else
éé 
{
èè 
Dominio
êê 
.
êê 
Jugador
êê 
emptyPlayer
êê  +
=
êê, -
new
êê. 1
Jugador
êê2 9
(
êê9 :
)
êê: ;
;
êê; <
PlayerCallback
ëë 
.
ëë 
SendActualPlayer
ëë /
(
ëë/ 0 
dataObtainedResult
ëë0 B
,
ëëB C
emptyPlayer
ëëD O
)
ëëO P
;
ëëP Q
}
íí 
}
ïï 	
public
óó 
void
óó 
CloseSession
óó  
(
óó  !
string
óó! '
playerNickname
óó( 6
)
óó6 7
{
òò 	
playersLoggedIn
ôô 
.
ôô 
Remove
ôô "
(
ôô" #
playerNickname
ôô# 1
)
ôô1 2
;
ôô2 3
}
õõ 	$
IPlayerManagerCallback
ùù 
PlayerCallback
ùù -
{
ûû 	
get
üü 
{
†† 
return
°° 
OperationContext
°° '
.
°°' (
Current
°°( /
.
°°/ 0 
GetCallbackChannel
°°0 B
<
°°B C$
IPlayerManagerCallback
°°C Y
>
°°Y Z
(
°°Z [
)
°°[ \
;
°°\ ]
}
¢¢ 
}
££ 	
}
§§ 
public
¶¶ 

partial
¶¶ 
class
¶¶ 
MainService
¶¶ $
:
¶¶% &
IRankingManager
¶¶' 6
{
ßß 
public
®® 
void
®® 
GetRankingData
®® "
(
®®" #
)
®®# $
{
©© 	
RankingResult
™™ 
result
™™  
;
™™  !
List
´´ 
<
´´ 
Dominio
´´ 
.
´´ 
Ranking
´´  
>
´´  !
rankings
´´" *
=
´´+ ,
QueryRankingData
´´- =
(
´´= >
)
´´> ?
;
´´? @
if
≠≠ 
(
≠≠ 
rankings
≠≠ 
==
≠≠ 
null
≠≠  
)
≠≠  !
{
ÆÆ 
result
ØØ 
=
ØØ 
RankingResult
ØØ &
.
ØØ& '

NO_RANKING
ØØ' 1
;
ØØ1 2
}
∞∞ 
else
±± 
{
≤≤ 
result
≥≥ 
=
≥≥ 
RankingResult
≥≥ &
.
≥≥& '
RANKING_EXISTS
≥≥' 5
;
≥≥5 6
RankingCallback
µµ 
.
µµ   
ReceiveRankingData
µµ  2
(
µµ2 3
rankings
µµ3 ;
)
µµ; <
;
µµ< =
}
∂∂ 
RankingCallback
ππ 
.
ππ 
GetRankingResult
ππ ,
(
ππ, -
result
ππ- 3
)
ππ3 4
;
ππ4 5
}
∫∫ 	
public
ºº 
List
ºº 
<
ºº 
Dominio
ºº 
.
ºº 
Ranking
ºº #
>
ºº# $
QueryRankingData
ºº% 5
(
ºº5 6
)
ºº6 7
{
ΩΩ 	
List
ææ 
<
ææ 
Dominio
ææ 
.
ææ 
Ranking
ææ  
>
ææ  !
currentRankings
ææ" 1
=
ææ2 3
new
ææ4 7
List
ææ8 <
<
ææ< =
Dominio
ææ= D
.
ææD E
Ranking
ææE L
>
ææL M
(
ææM N
)
ææN O
;
ææO P 
RankingDataManager
øø 
dataManager
øø *
=
øø+ ,
new
øø- 0 
RankingDataManager
øø1 C
(
øøC D
)
øøD E
;
øøE F 
JugadorDataManager
¿¿ 
playerManager
¿¿ ,
=
¿¿- .
new
¿¿/ 2 
JugadorDataManager
¿¿3 E
(
¿¿E F
)
¿¿F G
;
¿¿G H
List
¡¡ 
<
¡¡ 

DataAccess
¡¡ 
.
¡¡ 
Ranking
¡¡ #
>
¡¡# $ 
queriedRankingList
¡¡% 7
=
¡¡8 9
dataManager
¡¡: E
.
¡¡E F
GetRankingList
¡¡F T
(
¡¡T U
)
¡¡U V
;
¡¡V W
if
√√ 
(
√√ 
dataManager
√√ 
.
√√ 
GetRankingList
√√ *
(
√√* +
)
√√+ ,
!=
√√- /
null
√√0 4
)
√√4 5
{
ƒƒ 
foreach
≈≈ 
(
≈≈ 

DataAccess
≈≈ #
.
≈≈# $
Ranking
≈≈$ +
playerRanking
≈≈, 9
in
≈≈: < 
queriedRankingList
≈≈= O
)
≈≈O P
{
∆∆ 
currentRankings
«« #
.
««# $
Add
««$ '
(
««' (
new
««( +
Dominio
««, 3
.
««3 4
Ranking
««4 ;
{
»» 
	IdRanking
…… !
=
……" #
playerRanking
……$ 1
.
……1 2
	idRanking
……2 ;
,
……; <
Duenio
   
=
    
playerManager
  ! .
.
  . /!
GetDomainPlayerByID
  / B
(
  B C
playerRanking
  C P
.
  P Q
idDuenio
  Q Y
)
  Y Z
,
  Z [
FechaRegistracion
ÀÀ )
=
ÀÀ* +
playerRanking
ÀÀ, 9
.
ÀÀ9 :
fechaRegistracion
ÀÀ: K
??
ÀÀL N
default
ÀÀO V
(
ÀÀV W
DateTime
ÀÀW _
)
ÀÀ_ `
,
ÀÀ` a
NumeroVictorias
ÃÃ '
=
ÃÃ( )
playerRanking
ÃÃ* 7
.
ÃÃ7 8
numeroVictorias
ÃÃ8 G
??
ÃÃH J
default
ÃÃK R
(
ÃÃR S
int
ÃÃS V
)
ÃÃV W
,
ÃÃW X
PartidasJugadas
ÕÕ '
=
ÕÕ( )
playerRanking
ÕÕ* 7
.
ÕÕ7 8
partidasJugadas
ÕÕ8 G
??
ÕÕH J
default
ÕÕK R
(
ÕÕR S
int
ÕÕS V
)
ÕÕV W
,
ÕÕW X
Rank
ŒŒ 
=
ŒŒ 
playerRanking
ŒŒ ,
.
ŒŒ, -
rank
ŒŒ- 1
??
ŒŒ2 4
default
ŒŒ5 <
(
ŒŒ< =
int
ŒŒ= @
)
ŒŒ@ A
,
ŒŒA B
NumeroPerdidas
œœ &
=
œœ' (
playerRanking
œœ) 6
.
œœ6 7
numeroPerdidas
œœ7 E
??
œœF H
default
œœI P
(
œœP Q
int
œœQ T
)
œœT U
}
–– 
)
–– 
;
–– 
}
—— 
}
““ 
return
‘‘ 
currentRankings
‘‘ "
;
‘‘" #
}
’’ 	%
IRankingManagerCallback
◊◊ 
RankingCallback
◊◊  /
{
ÿÿ 	
get
ŸŸ 
{
⁄⁄ 
return
€€ 
OperationContext
€€ '
.
€€' (
Current
€€( /
.
€€/ 0 
GetCallbackChannel
€€0 B
<
€€B C%
IRankingManagerCallback
€€C Z
>
€€Z [
(
€€[ \
)
€€\ ]
;
€€] ^
}
‹‹ 
}
›› 	
}
ﬁﬁ 
public
‡‡ 

partial
‡‡ 
class
‡‡ 
MainService
‡‡ $
:
‡‡% &
IGameManager
‡‡' 3
{
·· 
private
‚‚ 
List
‚‚ 
<
‚‚ 
Match
‚‚ 
>
‚‚ 
activeMatches
‚‚ )
=
‚‚* +
new
‚‚, /
List
‚‚0 4
<
‚‚4 5
Match
‚‚5 :
>
‚‚: ;
(
‚‚; <
)
‚‚< =
;
‚‚= >
private
„„ 
int
„„ !
numberActiveMatches
„„ '
=
„„( )
$num
„„* +
;
„„+ ,
private
‰‰ 
List
‰‰ 
<
‰‰ 
Match
‰‰ 
>
‰‰ "
playersQueuedClassic
‰‰ 0
=
‰‰1 2
new
‰‰3 6
List
‰‰7 ;
<
‰‰; <
Match
‰‰< A
>
‰‰A B
(
‰‰B C
)
‰‰C D
;
‰‰D E
private
ÂÂ 
const
ÂÂ 
int
ÂÂ 

PLAYER_ONE
ÂÂ $
=
ÂÂ% &
$num
ÂÂ' (
;
ÂÂ( )
private
ÊÊ 
const
ÊÊ 
int
ÊÊ 

PLAYER_TWO
ÊÊ $
=
ÊÊ% &
$num
ÊÊ' (
;
ÊÊ( )"
IGameManagerCallback
ËË !
GameManagerCallback
ËË 0
{
ÈÈ 	
get
ÍÍ 
{
ÎÎ 
return
ÏÏ 
OperationContext
ÏÏ '
.
ÏÏ' (
Current
ÏÏ( /
.
ÏÏ/ 0 
GetCallbackChannel
ÏÏ0 B
<
ÏÏB C"
IGameManagerCallback
ÏÏC W
>
ÏÏW X
(
ÏÏX Y
)
ÏÏY Z
;
ÏÏZ [
}
ÌÌ 
}
ÓÓ 	
public
 
void
 
Player1Turn
 
(
  
Checker
  '
[
' (
]
( )
[
) *
]
* +
updateBoardMatrix
, =
,
= >
int
? B
matchNumber
C N
,
N O
int
P S
playerTwoCheckers
T e
,
e f
int
g j
playerOneCheckers
k |
)
| }
{
ÒÒ 	
try
ÚÚ 
{
ÛÛ 
activeMatches
ÙÙ 
[
ÙÙ 
matchNumber
ÙÙ )
]
ÙÙ) *
.
ÙÙ* +
playerTwoCallback
ÙÙ+ <
.
ÙÙ< =
UpdateGameGUI
ÙÙ= J
(
ÙÙJ K
updateBoardMatrix
ÙÙK \
,
ÙÙ\ ]
playerTwoCheckers
ÙÙ^ o
,
ÙÙo p 
playerOneCheckersÙÙq Ç
)ÙÙÇ É
;ÙÙÉ Ñ
}
ıı 
catch
ˆˆ 
(
ˆˆ '
EndpointNotFoundException
ˆˆ ,
)
ˆˆ, -
{
˜˜ 
activeMatches
¯¯ 
[
¯¯ 
matchNumber
¯¯ )
]
¯¯) *
.
¯¯* +
playerOneCallback
¯¯+ <
.
¯¯< =
EndAbandonedGame
¯¯= M
(
¯¯M N
)
¯¯N O
;
¯¯O P
}
˘˘ 
}
˙˙ 	
public
¸¸ 
void
¸¸ 
CreateMatch
¸¸ 
(
¸¸  
Jugador
¸¸  '
currentPlayer
¸¸( 5
,
¸¸5 6
CheckersGameMode
¸¸7 G
gameMode
¸¸H P
)
¸¸P Q
{
˝˝ 	
MatchmakingResult
˛˛ 
matchmakingResult
˛˛ /
;
˛˛/ 0
if
ÄÄ 
(
ÄÄ "
playersQueuedClassic
ÄÄ $
.
ÄÄ$ %
Count
ÄÄ% *
>
ÄÄ+ ,
$num
ÄÄ- .
)
ÄÄ. /
{
ÅÅ 
Match
ÇÇ 
newCompleteGame
ÇÇ %
=
ÇÇ& '"
playersQueuedClassic
ÇÇ( <
.
ÇÇ< =
First
ÇÇ= B
(
ÇÇB C
)
ÇÇC D
;
ÇÇD E"
playersQueuedClassic
ÉÉ $
.
ÉÉ$ %
Remove
ÉÉ% +
(
ÉÉ+ ,
newCompleteGame
ÉÉ, ;
)
ÉÉ; <
;
ÉÉ< =
newCompleteGame
ÑÑ 
.
ÑÑ  
playerTwoCallback
ÑÑ  1
=
ÑÑ2 3!
GameManagerCallback
ÑÑ4 G
;
ÑÑG H
newCompleteGame
ÖÖ 
.
ÖÖ  
playerTwoData
ÖÖ  -
=
ÖÖ. /
currentPlayer
ÖÖ0 =
;
ÖÖ= >
newCompleteGame
ÜÜ 
.
ÜÜ  
matchActiveNumber
ÜÜ  1
=
ÜÜ2 3!
numberActiveMatches
ÜÜ4 G
;
ÜÜG H"
playersQueuedClassic
áá $
.
áá$ %
Sort
áá% )
(
áá) *
)
áá* +
;
áá+ ,
matchmakingResult
àà !
=
àà" #
MatchmakingResult
àà$ 5
.
àà5 6
MATCH_FOUND
àà6 A
;
ààA B
activeMatches
ââ 
.
ââ 
Add
ââ !
(
ââ! "
newCompleteGame
ââ" 1
)
ââ1 2
;
ââ2 3!
numberActiveMatches
ää #
++
ää# %
;
ää% &
try
åå 
{
çç 
newCompleteGame
éé #
.
éé# $
playerOneCallback
éé$ 5
.
éé5 6"
GetMatchmakingResult
éé6 J
(
ééJ K
matchmakingResult
ééK \
,
éé\ ]
newCompleteGame
éé^ m
,
éém n

PLAYER_ONE
ééo y
)
ééy z
;
ééz {!
GameManagerCallback
ëë '
.
ëë' ("
GetMatchmakingResult
ëë( <
(
ëë< =
matchmakingResult
ëë= N
,
ëëN O
newCompleteGame
ëëP _
,
ëë_ `

PLAYER_TWO
ëëa k
)
ëëk l
;
ëël m
}
íí 
catch
ìì 
(
ìì '
EndpointNotFoundException
ìì /
)
ìì/ 0
{
îî 
matchmakingResult
ïï %
=
ïï& '
MatchmakingResult
ïï( 9
.
ïï9 :#
UNABLE_TO_ENTER_MATCH
ïï: O
;
ïïO P!
GameManagerCallback
ññ '
.
ññ' ("
GetMatchmakingResult
ññ( <
(
ññ< =
matchmakingResult
ññ= N
,
ññN O
newCompleteGame
ññP _
,
ññ_ `

PLAYER_TWO
ñña k
)
ññk l
;
ññl m
}
òò 
}
öö 
else
õõ 
{
úú 
Match
ùù 
newGame
ùù 
=
ùù 
new
ùù  #
Match
ùù$ )
(
ùù) *
)
ùù* +
{
ûû 
currentPlayer
üü !
=
üü" #

PLAYER_ONE
üü$ .
,
üü. /
playerOneData
†† !
=
††" #
currentPlayer
††$ 1
,
††1 2
playerOneCallback
°° %
=
°°& '!
GameManagerCallback
°°( ;
,
°°; <
}
¢¢ 
;
¢¢ "
playersQueuedClassic
§§ $
.
§§$ %
Add
§§% (
(
§§( )
newGame
§§) 0
)
§§0 1
;
§§1 2
matchmakingResult
•• !
=
••" #
MatchmakingResult
••$ 5
.
••5 6
MATCH_NOT_FOUND
••6 E
;
••E F!
GameManagerCallback
¶¶ #
.
¶¶# $"
GetMatchmakingResult
¶¶$ 8
(
¶¶8 9
matchmakingResult
¶¶9 J
,
¶¶J K
newGame
¶¶L S
,
¶¶S T

PLAYER_ONE
¶¶U _
)
¶¶_ `
;
¶¶` a
}
®® 
}
©© 	
public
¨¨ 
void
¨¨ 
Player2Turn
¨¨ 
(
¨¨  
Checker
¨¨  '
[
¨¨' (
]
¨¨( )
[
¨¨) *
]
¨¨* +
updateBoardMatrix
¨¨, =
,
¨¨= >
int
¨¨? B
matchNumber
¨¨C N
,
¨¨N O
int
¨¨P S
playerTwoCheckers
¨¨T e
,
¨¨e f
int
¨¨g j
playerOneCheckers
¨¨k |
)
¨¨| }
{
≠≠ 	
try
ÆÆ 
{
ØØ 
activeMatches
∞∞ 
[
∞∞ 
matchNumber
∞∞ )
]
∞∞) *
.
∞∞* +
playerOneCallback
∞∞+ <
.
∞∞< =
UpdateGameGUI
∞∞= J
(
∞∞J K
updateBoardMatrix
∞∞K \
,
∞∞\ ]
playerTwoCheckers
∞∞^ o
,
∞∞o p 
playerOneCheckers∞∞q Ç
)∞∞Ç É
;∞∞É Ñ
}
±± 
catch
≤≤ 
(
≤≤ '
EndpointNotFoundException
≤≤ ,
)
≤≤, -
{
≥≥ 
activeMatches
¥¥ 
[
¥¥ 
matchNumber
¥¥ )
]
¥¥) *
.
¥¥* +
playerTwoCallback
¥¥+ <
.
¥¥< =
EndAbandonedGame
¥¥= M
(
¥¥M N
)
¥¥N O
;
¥¥O P
}
µµ 
}
∂∂ 	
public
∏∏ 
void
∏∏ 
FinishPlayerGame
∏∏ $
(
∏∏$ %
int
∏∏% (
matchNumber
∏∏) 4
,
∏∏4 5
int
∏∏6 9
playerNumber
∏∏: F
,
∏∏F G
int
∏∏H K
playerTwoCheckers
∏∏L ]
,
∏∏] ^
int
∏∏_ b
playerOneCheckers
∏∏c t
)
∏∏t u
{
ππ 	
if
∫∫ 
(
∫∫ 
playerNumber
∫∫ 
==
∫∫ 

PLAYER_ONE
∫∫  *
)
∫∫* +
{
ªª 
activeMatches
ºº 
[
ºº 
matchNumber
ºº )
]
ºº) *
.
ºº* +
playerTwoCallback
ºº+ <
.
ºº< =

FinishGame
ºº= G
(
ººG H
playerTwoCheckers
ººH Y
,
ººY Z
playerOneCheckers
ºº[ l
)
ººl m
;
ººm n
}
ΩΩ 
else
ææ 
{
øø 
activeMatches
¿¿ 
[
¿¿ 
matchNumber
¿¿ )
]
¿¿) *
.
¿¿* +
playerOneCallback
¿¿+ <
.
¿¿< =

FinishGame
¿¿= G
(
¿¿G H
playerTwoCheckers
¿¿H Y
,
¿¿Y Z
playerOneCheckers
¿¿[ l
)
¿¿l m
;
¿¿m n
}
¡¡  
RankingDataManager
¬¬  
rankingDataManager
¬¬ 1
=
¬¬2 3
new
¬¬4 7 
RankingDataManager
¬¬8 J
(
¬¬J K
)
¬¬K L
;
¬¬L M 
rankingDataManager
√√ 
.
√√  
UpdateMatchResults
√√ 1
(
√√1 2
activeMatches
√√2 ?
[
√√? @
matchNumber
√√@ K
]
√√K L
.
√√L M
playerOneData
√√M Z
,
√√Z [
playerOneCheckers
√√\ m
,
√√m n
activeMatches
√√o |
[
√√| }
matchNumber√√} à
]√√à â
.√√â ä
playerTwoData√√ä ó
,√√ó ò!
playerTwoCheckers√√ô ™
,√√™ ´
playerNumber√√¨ ∏
)√√∏ π
;√√π ∫!
numberActiveMatches
≈≈ 
--
≈≈ !
;
≈≈! "
activeMatches
∆∆ 
.
∆∆ 
RemoveAt
∆∆ "
(
∆∆" #
matchNumber
∆∆# .
)
∆∆. /
;
∆∆/ 0
int
»» 
listPosition
»» 
;
»» 
for
   
(
   
listPosition
   
=
   
matchNumber
    +
;
  + ,
listPosition
  - 9
<
  : ;
activeMatches
  < I
.
  I J
Count
  J O
;
  O P
listPosition
  Q ]
++
  ] _
)
  _ `
{
ÀÀ 
activeMatches
ÃÃ 
[
ÃÃ 
listPosition
ÃÃ *
]
ÃÃ* +
.
ÃÃ+ ,
matchActiveNumber
ÃÃ, =
--
ÃÃ= ?
;
ÃÃ? @
activeMatches
ÕÕ 
[
ÕÕ 
listPosition
ÕÕ *
]
ÕÕ* +
.
ÕÕ+ ,
playerOneCallback
ÕÕ, =
.
ÕÕ= >
UpdateMatchNumber
ÕÕ> O
(
ÕÕO P
activeMatches
ÕÕP ]
[
ÕÕ] ^
listPosition
ÕÕ^ j
]
ÕÕj k
.
ÕÕk l
matchActiveNumber
ÕÕl }
)
ÕÕ} ~
;
ÕÕ~ 
activeMatches
ŒŒ 
[
ŒŒ 
listPosition
ŒŒ *
]
ŒŒ* +
.
ŒŒ+ ,
playerTwoCallback
ŒŒ, =
.
ŒŒ= >
UpdateMatchNumber
ŒŒ> O
(
ŒŒO P
activeMatches
ŒŒP ]
[
ŒŒ] ^
listPosition
ŒŒ^ j
]
ŒŒj k
.
ŒŒk l
matchActiveNumber
ŒŒl }
)
ŒŒ} ~
;
ŒŒ~ 
}
œœ 
}
–– 	
public
““ 
void
““ 
SendGameMessage
““ #
(
““# $
int
““$ '
playerNumber
““( 4
,
““4 5
string
““6 <
message
““= D
,
““D E
int
““F I
matchNumber
““J U
)
““U V
{
”” 	
if
‘‘ 
(
‘‘ 
playerNumber
‘‘ 
==
‘‘ 

PLAYER_ONE
‘‘  *
)
‘‘* +
{
’’ 
activeMatches
÷÷ 
[
÷÷ 
matchNumber
÷÷ )
]
÷÷) *
.
÷÷* +
playerTwoCallback
÷÷+ <
.
÷÷< = 
RecieveGameMessage
÷÷= O
(
÷÷O P
message
÷÷P W
,
÷÷W X

PLAYER_ONE
÷÷Y c
)
÷÷c d
;
÷÷d e
}
◊◊ 
else
ÿÿ 
{
ŸŸ 
activeMatches
⁄⁄ 
[
⁄⁄ 
matchNumber
⁄⁄ )
]
⁄⁄) *
.
⁄⁄* +
playerOneCallback
⁄⁄+ <
.
⁄⁄< = 
RecieveGameMessage
⁄⁄= O
(
⁄⁄O P
message
⁄⁄P W
,
⁄⁄W X

PLAYER_TWO
⁄⁄X b
)
⁄⁄b c
;
⁄⁄c d
}
€€ 
}
‹‹ 	
public
ﬁﬁ 
void
ﬁﬁ 
ReportPlayer
ﬁﬁ  
(
ﬁﬁ  !
int
ﬁﬁ! $#
playerNumberReporting
ﬁﬁ% :
,
ﬁﬁ: ;
int
ﬁﬁ< ?
matchNumber
ﬁﬁ@ K
,
ﬁﬁK L
string
ﬁﬁM S

reportText
ﬁﬁT ^
)
ﬁﬁ^ _
{
ﬂﬂ 	
int
‡‡ 
reportResult
‡‡ 
;
‡‡ 
ReportSaveResult
·· 
reportSaveResult
·· -
=
··. /
ReportSaveResult
··0 @
.
··@ A
ERROR_SAVING
··A M
;
··M N
ReportDataManager
‚‚ 
reportDataManager
‚‚ /
=
‚‚0 1
new
‚‚2 5
ReportDataManager
‚‚6 G
(
‚‚G H
)
‚‚H I
;
‚‚I J
if
‰‰ 
(
‰‰ #
playerNumberReporting
‰‰ %
==
‰‰& (

PLAYER_ONE
‰‰) 3
)
‰‰3 4
{
ÂÂ 
reportResult
ÊÊ 
=
ÊÊ 
reportDataManager
ÊÊ 0
.
ÊÊ0 1
ReportPlayer
ÊÊ1 =
(
ÊÊ= >
activeMatches
ÊÊ> K
[
ÊÊK L
matchNumber
ÊÊL W
]
ÊÊW X
.
ÊÊX Y
playerTwoData
ÊÊY f
.
ÊÊf g
	IdJugador
ÊÊg p
,
ÊÊp q
activeMatches
ÊÊr 
[ÊÊ Ä
matchNumberÊÊÄ ã
]ÊÊã å
.ÊÊå ç
playerOneDataÊÊç ö
.ÊÊö õ
	IdJugadorÊÊõ §
,ÊÊ§ •

reportTextÊÊ¶ ∞
)ÊÊ∞ ±
;ÊÊ± ≤
}
ÁÁ 
else
ËË 
{
ÈÈ 
reportResult
ÍÍ 
=
ÍÍ 
reportDataManager
ÍÍ 0
.
ÍÍ0 1
ReportPlayer
ÍÍ1 =
(
ÍÍ= >
activeMatches
ÍÍ> K
[
ÍÍK L
matchNumber
ÍÍL W
]
ÍÍW X
.
ÍÍX Y
playerOneData
ÍÍY f
.
ÍÍf g
	IdJugador
ÍÍg p
,
ÍÍp q
activeMatches
ÍÍr 
[ÍÍ Ä
matchNumberÍÍÄ ã
]ÍÍã å
.ÍÍå ç
playerTwoDataÍÍç ö
.ÍÍö õ
	IdJugadorÍÍõ §
,ÍÍ§ •

reportTextÍÍ¶ ∞
)ÍÍ∞ ±
;ÍÍ± ≤
}
ÎÎ 
if
ÌÌ 
(
ÌÌ 
reportResult
ÌÌ 
>
ÌÌ 
$num
ÌÌ  
)
ÌÌ  !
{
ÓÓ 
reportSaveResult
ÔÔ  
=
ÔÔ! "
ReportSaveResult
ÔÔ# 3
.
ÔÔ3 4
SAVED_REPORT
ÔÔ4 @
;
ÔÔ@ A
}
 !
GameManagerCallback
ÒÒ 
.
ÒÒ  
ReportResult
ÒÒ  ,
(
ÒÒ, -
reportSaveResult
ÒÒ- =
)
ÒÒ= >
;
ÒÒ> ?
}
ÚÚ 	
public
ÙÙ 
void
ÙÙ 

LeaveMatch
ÙÙ 
(
ÙÙ 
int
ÙÙ "
matchNumber
ÙÙ# .
,
ÙÙ. /
int
ÙÙ0 3
playerNumber
ÙÙ4 @
)
ÙÙ@ A
{
ıı 	
if
ˆˆ 
(
ˆˆ 
playerNumber
ˆˆ 
==
ˆˆ 

PLAYER_ONE
ˆˆ  *
)
ˆˆ* +
{
˜˜ 
activeMatches
¯¯ 
[
¯¯ 
matchNumber
¯¯ )
]
¯¯) *
.
¯¯* +
playerTwoCallback
¯¯+ <
.
¯¯< =
EndAbandonedGame
¯¯= M
(
¯¯M N
)
¯¯N O
;
¯¯O P
}
˘˘ 
else
˙˙ 
{
˚˚ 
activeMatches
¸¸ 
[
¸¸ 
matchNumber
¸¸ )
]
¸¸) *
.
¸¸* +
playerOneCallback
¸¸+ <
.
¸¸< =
EndAbandonedGame
¸¸= M
(
¸¸M N
)
¸¸N O
;
¸¸O P
}
˝˝ 
}
˛˛ 	
}
ˇˇ 
public
ÅÅ 

partial
ÅÅ 
class
ÅÅ 
MainService
ÅÅ $
:
ÅÅ% &
IBanManager
ÅÅ' 2
{
ÇÇ !
IBanManagerCallback
ÉÉ 
BanCallback
ÉÉ '
{
ÑÑ 	
get
ÖÖ 
{
ÜÜ 
return
áá 
OperationContext
áá '
.
áá' (
Current
áá( /
.
áá/ 0 
GetCallbackChannel
áá0 B
<
ááB C!
IBanManagerCallback
ááC V
>
ááV W
(
ááW X
)
ááX Y
;
ááY Z
}
àà 
}
ââ 	
public
ãã 
void
ãã 
GetReportData
ãã !
(
ãã! "
)
ãã" #
{
åå 	
AdminReportResult
çç 
result
çç $
=
çç% &
AdminReportResult
çç' 8
.
çç8 9
NO_REPORTS_EXIST
çç9 I
;
ççI J
List
éé 
<
éé 
Dominio
éé 
.
éé 
Reporte
éé  
>
éé  !

reportList
éé" ,
=
éé- .
QueryReportData
éé/ >
(
éé> ?
)
éé? @
;
éé@ A
if
êê 
(
êê 

reportList
êê 
.
êê 
Count
êê  
>
êê! "
$num
êê# $
)
êê$ %
{
ëë 
result
íí 
=
íí 
AdminReportResult
íí *
.
íí* +
REPORT_EXISTS
íí+ 8
;
íí8 9
BanCallback
îî 
.
îî 
ReceiveReportData
îî -
(
îî- .

reportList
îî. 8
)
îî8 9
;
îî9 :
}
ïï 
BanCallback
ññ 
.
ññ &
GetReportDataQueryResult
ññ 0
(
ññ0 1
result
ññ1 7
)
ññ7 8
;
ññ8 9
}
óó 	
public
ôô 
List
ôô 
<
ôô 
Dominio
ôô 
.
ôô 
Reporte
ôô #
>
ôô# $
QueryReportData
ôô% 4
(
ôô4 5
)
ôô5 6
{
öö 	
List
õõ 
<
õõ 
Dominio
õõ 
.
õõ 
Reporte
õõ  
>
õõ  !"
currentPlayerReports
õõ" 6
=
õõ7 8
new
õõ9 <
List
õõ= A
<
õõA B
Dominio
õõB I
.
õõI J
Reporte
õõJ Q
>
õõQ R
(
õõR S
)
õõS T
;
õõT U
ReportDataManager
úú 
reportDataManager
úú /
=
úú0 1
new
úú2 5
ReportDataManager
úú6 G
(
úúG H
)
úúH I
;
úúI J 
JugadorDataManager
ùù 
playerManager
ùù ,
=
ùù- .
new
ùù/ 2 
JugadorDataManager
ùù3 E
(
ùùE F
)
ùùF G
;
ùùG H
List
ûû 
<
ûû 

DataAccess
ûû 
.
ûû 
Reporte
ûû #
>
ûû# $
queriedReportList
ûû% 6
=
ûû7 8
reportDataManager
ûû9 J
.
ûûJ K
GetReportList
ûûK X
(
ûûX Y
)
ûûY Z
;
ûûZ [
if
†† 
(
†† 
reportDataManager
†† !
.
††! "
GetReportList
††" /
(
††/ 0
)
††0 1
!=
††2 4
null
††5 9
)
††9 :
{
°° 
foreach
¢¢ 
(
¢¢ 

DataAccess
¢¢ #
.
¢¢# $
Reporte
¢¢$ +
playerReport
¢¢, 8
in
¢¢9 ;
queriedReportList
¢¢< M
)
¢¢M N
{
££ "
currentPlayerReports
§§ (
.
§§( )
Add
§§) ,
(
§§, -
new
§§- 0
Dominio
§§1 8
.
§§8 9
Reporte
§§9 @
{
•• 
	IdReporte
¶¶ !
=
¶¶" #
playerReport
¶¶$ 0
.
¶¶0 1
	idReporte
¶¶1 :
,
¶¶: ;
Acusador
ßß  
=
ßß! "
playerManager
ßß# 0
.
ßß0 1!
GetDomainPlayerByID
ßß1 D
(
ßßD E
playerReport
ßßE Q
.
ßßQ R

idAcusador
ßßR \
)
ßß\ ]
,
ßß] ^
	Reportado
®® !
=
®®" #
playerManager
®®$ 1
.
®®1 2!
GetDomainPlayerByID
®®2 E
(
®®E F
playerReport
®®F R
.
®®R S
idReportado
®®S ^
)
®®^ _
,
®®_ `
DescripcionAcuso
©© (
=
©©) *
playerReport
©©+ 7
.
©©7 8
descripcionAcuso
©©8 H
??
©©I K
default
©©L S
(
©©S T
string
©©T Z
)
©©Z [
}
™™ 
)
™™ 
;
™™ 
}
´´ 
}
¨¨ 
return
ÆÆ "
currentPlayerReports
ÆÆ '
;
ÆÆ' (
}
ØØ 	
public
±± 
void
±± 
	BanPlayer
±± 
(
±± 
string
±± $ 
reportedPlayerName
±±% 7
)
±±7 8
{
≤≤ 	
int
≥≥ 
isPlayerBanned
≥≥ 
=
≥≥  
$num
≥≥! "
;
≥≥" #
const
¥¥ 
int
¥¥ 
BAN_SAUCCESSFUL
¥¥ %
=
¥¥& '
$num
¥¥( )
;
¥¥) *
const
µµ 
int
µµ 
BAN_ALREADY
µµ !
=
µµ" #
$num
µµ$ %
;
µµ% & 
JugadorDataManager
∂∂ 
playerDataManager
∂∂ 0
=
∂∂1 2
new
∂∂3 6 
JugadorDataManager
∂∂7 I
(
∂∂I J
)
∂∂J K
;
∂∂K L
	BanResult
∏∏ 
	banResult
∏∏ 
=
∏∏  !
	BanResult
∏∏" +
.
∏∏+ ,
ERROR_BANNING
∏∏, 9
;
∏∏9 :

DataAccess
ππ 
.
ππ 
Jugador
ππ 
reportedPlayer
ππ -
=
ππ. /
playerDataManager
ππ0 A
.
ππA B!
GetPlayerByNickname
ππB U
(
ππU V 
reportedPlayerName
ππV h
)
ππh i
;
ππi j
isPlayerBanned
∫∫ 
=
∫∫ 
playerDataManager
∫∫ .
.
∫∫. /
	BanPlayer
∫∫/ 8
(
∫∫8 9
reportedPlayer
∫∫9 G
.
∫∫G H
apodo
∫∫H M
)
∫∫M N
;
∫∫N O
if
ºº 
(
ºº 
isPlayerBanned
ºº 
==
ºº !
BAN_SAUCCESSFUL
ºº" 1
)
ºº1 2
{
ΩΩ 
MailMessage
ææ 
emailContent
ææ (
=
ææ) *
new
ææ+ .
MailMessage
ææ/ :
(
ææ: ;
)
ææ; <
;
ææ< =
emailContent
¿¿ 
.
¿¿ 
To
¿¿ 
.
¿¿  
Add
¿¿  #
(
¿¿# $
reportedPlayer
¿¿$ 2
.
¿¿2 3
correoElectronico
¿¿3 D
)
¿¿D E
;
¿¿E F
emailContent
¡¡ 
.
¡¡ 
Subject
¡¡ $
=
¡¡% &
$str
¡¡' O
+
¡¡P Q
reportedPlayer
¡¡R `
.
¡¡` a
apodo
¡¡a f
;
¡¡f g
emailContent
¬¬ 
.
¬¬ 
Body
¬¬ !
=
¬¬" #
$str
¬¬$ +
+
¬¬, -
reportedPlayer
¬¬. <
.
¬¬< =
apodo
¬¬= B
+
¬¬C D
$str
¬¬E ~
+¬¬ Ä
$str
√√ 6
;
√√6 7
emailContent
ƒƒ 
.
ƒƒ 
From
ƒƒ !
=
ƒƒ" #
new
ƒƒ$ '
System
ƒƒ( .
.
ƒƒ. /
Net
ƒƒ/ 2
.
ƒƒ2 3
Mail
ƒƒ3 7
.
ƒƒ7 8
MailAddress
ƒƒ8 C
(
ƒƒC D
$str
ƒƒD _
,
ƒƒ_ `
$str
ƒƒa x
)
ƒƒx y
;
ƒƒy z

SmtpClient
∆∆ 
client
∆∆ !
=
∆∆" #
new
∆∆$ '

SmtpClient
∆∆( 2
{
«« 
Credentials
»» 
=
»»  !
new
»»" %
System
»»& ,
.
»», -
Net
»»- 0
.
»»0 1
NetworkCredential
»»1 B
(
»»B C
mailUser
»»C K
,
»»K L
mailPassword
»»M Y
)
»»Y Z
,
»»Z [
	EnableSsl
…… 
=
…… 
true
……  $
,
……$ %
Port
   
=
   
$num
   
,
   
Host
ÀÀ 
=
ÀÀ 
$str
ÀÀ +
,
ÀÀ+ ,
}
ÃÃ 
;
ÃÃ 
try
ŒŒ 
{
œœ 
client
–– 
.
–– 
Send
–– 
(
––  
emailContent
––  ,
)
––, -
;
––- .
}
—— 
catch
““ 
(
““ 
System
““ 
.
““ 
Net
““ !
.
““! "
Mail
““" &
.
““& '
SmtpException
““' 4
)
““4 5
{
”” 
throw
‘‘ 
new
‘‘ 
System
‘‘ $
.
‘‘$ %
Net
‘‘% (
.
‘‘( )
Mail
‘‘) -
.
‘‘- .
SmtpException
‘‘. ;
(
‘‘; <
$str‘‘< í
)‘‘í ì
;‘‘ì î
}
’’ 
	banResult
◊◊ 
=
◊◊ 
	BanResult
◊◊ %
.
◊◊% &
PLAYER_BANNED
◊◊& 3
;
◊◊3 4
}
ÿÿ 
else
ŸŸ 
if
ŸŸ 
(
ŸŸ 
isPlayerBanned
ŸŸ "
==
ŸŸ# %
BAN_ALREADY
ŸŸ& 1
)
ŸŸ1 2
{
⁄⁄ 
	banResult
€€ 
=
€€ 
	BanResult
€€ %
.
€€% &#
PLAYER_ALREADY_BANNED
€€& ;
;
€€; <
}
‹‹ 
BanCallback
ﬁﬁ 
.
ﬁﬁ 
GetBanResult
ﬁﬁ $
(
ﬁﬁ$ %
	banResult
ﬁﬁ% .
)
ﬁﬁ. /
;
ﬁﬁ/ 0
}
‡‡ 	
}
·· 
}‚‚ ©

WD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\Contratos\Match.cs
	namespace 	
	Contratos
 
{ 
public 

class 
Match 
{		 
public

 
int

 
matchActiveNumber

 $
{

% &
get

' *
;

* +
set

, /
;

/ 0
}

1 2
public 
int 
currentPlayer  
{! "
get# &
;& '
set( +
;+ ,
}- .
public  
IGameManagerCallback #
playerOneCallback$ 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
public  
IGameManagerCallback #
playerTwoCallback$ 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
public 
Dominio 
. 
Jugador 
playerOneData ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
Dominio 
. 
Jugador 
playerTwoData ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
} 
} î
iD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\Contratos\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str $
)$ %
]% &
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
$str &
)& '
]' (
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
]##) *ó$
^D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\Contratos\StatesResult.cs
	namespace 	
	Contratos
 
{ 
public 

enum 
Checker 
{ 
	freeSpace 
, 
player1Checker 
, 
player1King		 
,		 
player2Checker

 
,

 
player2King 
} 
public 

enum 
CheckersGameMode  
{ 
ClassicCheckers 
= 
$num 
, 
SuicidalCheckers 
= 
$num 
, 
CanadianCheckers 
= 
$num 
, 
ItalianCheckers 
= 
$num 
, 
NoGame 
= 
$num 
} 
public 

enum 
MatchmakingResult !
{ 
MATCH_FOUND 
= 
$num 
, 
MATCH_NOT_FOUND 
= 
$num 
, !
UNABLE_TO_ENTER_MATCH 
= 
$num  !
} 
public 
enum 
VerificationResult 
{ 
PinIncorrecto   
=   
$num   
,   
NoExisteJugador!! 
=!! 
$num!! 
,!!  
VerificacionExistosa"" 
="" 
$num""  
}## 
public%% 

enum%% 
LoginResult%% 
{&& 
PasswordIncorrecto'' 
='' 
$num'' 
,'' 
NoExisteJugador(( 
=(( 
$num(( 
,(( #
ExisteJugadorVerificado)) 
=))  !
$num))" #
,))# $%
ExisteJugadorNoVerificado** !
=**" #
$num**$ %
,**% &
EsAdmin++ 
=++ 
$num++ 
,++ 
LOGGED_PLAYER,, 
=,, 
$num,, 
,,, 
	EsBaneado-- 
=-- 
$num-- 
}.. 
public00 

enum00 

SaveResult00 
{11 
JugadorGuardado22 
=22 
$num22 
,22 
NicknameExistente33 
=33 
$num33 
,33 
CorreoExistente44 
=44 
$num44 
,44 
ErrorGuardado55 
=55 
$num55 
,55 
}66 
public88 

enum88 
AdminReportResult88 !
{99 
NO_REPORTS_EXIST:: 
=:: 
$num:: 
,:: 
REPORT_EXISTS;; 
=;; 
$num;; 
}<< 
public>> 

enum>> 
ReportSaveResult>>  
{?? 
SAVED_REPORT@@ 
=@@ 
$num@@ 
,@@ 
ERROR_SAVINGAA 
=AA 
$numAA 
}BB 
publicDD 

enumDD 
RankingResultDD 
{EE 

NO_RANKINGFF 
=FF 
$numFF 
,FF 
RANKING_EXISTSGG 
=GG 
$numGG 
}HH 
publicII 

enumII 

MailResultII 
{JJ 
MailSendKK 
=KK 
$numKK 
,KK 
	SendErrorLL 
=LL 
$numLL 
,LL 
UnknownPlayerMM 
=MM 
$numMM 
}NN 
publicPP 

enumPP 
	PinResultPP 
{QQ 
VerifiedPinRR 
=RR 
$numRR 
,RR 
WrongAnswerSS 
=SS 
$numSS 
,SS 

UnknownPinTT 
=TT 
$numTT 
}UU 
publicWW 

enumWW  
PasswordChangeResultWW $
{XX 
ChangedPasswordYY 
=YY 
$numYY 
,YY 
ErrorChangingZZ 
=ZZ 
$numZZ 
}[[ 
public]] 

enum]] 
DataObtainedResult]] "
{^^ 
DataObtained__ 
=__ 
$num__ 
,__ 
ErrorObtainingData`` 
=`` 
$num`` 
}aa 
publiccc 

enumcc 
	BanResultcc 
{dd 
PLAYER_BANNEDee 
=ee 
$numee 
,ee !
PLAYER_ALREADY_BANNEDff 
=ff 
$numff  !
,ff! "
ERROR_BANNINGgg 
=gg 
$numgg 
}hh 
}ii 