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
} ·ô
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
;zz 
if{{ 
({{ 
jugadorDataManager{{ "
.{{" #
CheckBannedState{{# 3
({{3 4
player{{4 :
.{{: ;
Apodo{{; @
){{@ A
){{A B
{|| 
result}} 
=}} 
LoginResult}} $
.}}$ %
	EsBaneado}}% .
;}}. /
PlayerCallback 
.  
GetPlayerLoginResult 3
(3 4
result4 :
,: ;
player< B
)B C
;C D
}
ÄÄ 
else
ÅÅ 
{
ÇÇ 
result
ÉÉ 
=
ÉÉ 
LoginResult
ÉÉ $
.
ÉÉ$ %'
ExisteJugadorNoVerificado
ÉÉ% >
;
ÉÉ> ?
PlayerCallback
ÖÖ 
.
ÖÖ "
GetPlayerLoginResult
ÖÖ 3
(
ÖÖ3 4
result
ÖÖ4 :
,
ÖÖ: ;
player
ÖÖ< B
)
ÖÖB C
;
ÖÖC D
}
ÜÜ 
}
áá 	
public
ââ 
void
ââ 

SavePlayer
ââ 
(
ââ 
Dominio
ââ &
.
ââ& '
Jugador
ââ' .
player
ââ/ 5
)
ââ5 6
{
ää 	 
JugadorDataManager
ãã 
playerDataManager
ãã 0
=
ãã1 2
new
ãã3 6 
JugadorDataManager
ãã7 I
(
ããI J
)
ããJ K
;
ããK L

SaveResult
çç 

saveResult
çç !
;
çç! "

MailResult
éé 

mailResult
éé !
;
éé! "
bool
êê 
nicknameExists
êê 
=
êê  !
playerDataManager
êê" 3
.
êê3 4
CheckNickname
êê4 A
(
êêA B
player
êêB H
.
êêH I
Apodo
êêI N
)
êêN O
;
êêO P
if
íí 
(
íí 
!
íí 
nicknameExists
íí 
)
íí  
{
ìì 
bool
îî 
emailExists
îî  
=
îî! "
playerDataManager
îî# 4
.
îî4 5

CheckEmail
îî5 ?
(
îî? @
player
îî@ F
.
îîF G
CorreoElectronico
îîG X
)
îîX Y
;
îîY Z
if
ññ 
(
ññ 
!
ññ 
emailExists
ññ  
)
ññ  !
{
óó 
System
òò 
.
òò 
Net
òò 
.
òò 
Mail
òò #
.
òò# $
MailMessage
òò$ /
mensaje
òò0 7
=
òò8 9
new
òò: =
System
òò> D
.
òòD E
Net
òòE H
.
òòH I
Mail
òòI M
.
òòM N
MailMessage
òòN Y
(
òòY Z
)
òòZ [
;
òò[ \
mensaje
öö 
.
öö 
To
öö 
.
öö 
Add
öö "
(
öö" #
player
öö# )
.
öö) *
CorreoElectronico
öö* ;
)
öö; <
;
öö< =
mensaje
õõ 
.
õõ 
Subject
õõ #
=
õõ$ %
$str
õõ& E
+
õõF G
player
õõH N
.
õõN O
Apodo
õõO T
;
õõT U
mensaje
úú 
.
úú 
Body
úú  
=
úú! "
$str
úú# +
+
úú, -
player
úú. 4
.
úú4 5
Apodo
úú5 :
+
úú; <
$str
úú= t
+
úúu v
$str
ùù G
+
ùùH I
player
ùùJ P
.
ùùP Q
PinConfirmacion
ùùQ `
;
ùù` a
mensaje
ûû 
.
ûû 
From
ûû  
=
ûû! "
new
ûû# &
System
ûû' -
.
ûû- .
Net
ûû. 1
.
ûû1 2
Mail
ûû2 6
.
ûû6 7
MailAddress
ûû7 B
(
ûûB C
$str
ûûC ^
,
ûû^ _
$str
ûû` w
)
ûûw x
;
ûûx y
System
†† 
.
†† 
Net
†† 
.
†† 
Mail
†† #
.
††# $

SmtpClient
††$ .
cliente
††/ 6
=
††7 8
new
††9 <
System
††= C
.
††C D
Net
††D G
.
††G H
Mail
††H L
.
††L M

SmtpClient
††M W
{
°° 
Credentials
¢¢ #
=
¢¢$ %
new
¢¢& )
System
¢¢* 0
.
¢¢0 1
Net
¢¢1 4
.
¢¢4 5
NetworkCredential
¢¢5 F
(
¢¢F G
mailUser
¢¢G O
,
¢¢O P
mailPassword
¢¢Q ]
)
¢¢] ^
,
¢¢^ _
Port
££ 
=
££ 
$num
££ "
,
££" #
	EnableSsl
§§ !
=
§§" #
true
§§$ (
,
§§( )
Host
•• 
=
•• 
$str
•• /
,
••/ 0
}
¶¶ 
;
¶¶ 
try
ßß 
{
®® 

mailResult
©© "
=
©©# $

MailResult
©©% /
.
©©/ 0
MailSend
©©0 8
;
©©8 9
cliente
™™ 
.
™™  
Send
™™  $
(
™™$ %
mensaje
™™% ,
)
™™, -
;
™™- .
}
´´ 
catch
¨¨ 
(
¨¨ 
System
¨¨ !
.
¨¨! "
Net
¨¨" %
.
¨¨% &
Mail
¨¨& *
.
¨¨* +
SmtpException
¨¨+ 8
)
¨¨8 9
{
≠≠ 

mailResult
ÆÆ "
=
ÆÆ# $

MailResult
ÆÆ% /
.
ÆÆ/ 0
	SendError
ÆÆ0 9
;
ÆÆ9 :
PlayerCallback
ØØ &
.
ØØ& '!
GetResendMailResult
ØØ' :
(
ØØ: ;

mailResult
ØØ; E
,
ØØE F
player
ØØG M
.
ØØM N
Apodo
ØØN S
)
ØØS T
;
ØØT U
}
∞∞ 
if
±± 
(
±± 

mailResult
±± "
==
±±# %

MailResult
±±& 0
.
±±0 1
MailSend
±±1 9
)
±±9 :
{
≤≤ 
SaveNewPlayer
≥≥ %
(
≥≥% &
player
≥≥& ,
)
≥≥, -
;
≥≥- .
}
¥¥ 
}
µµ 
else
∂∂ 
{
∑∑ 

saveResult
∏∏ 
=
∏∏  

SaveResult
∏∏! +
.
∏∏+ ,
CorreoExistente
∏∏, ;
;
∏∏; <
PlayerCallback
ππ "
.
ππ" #
GetSaveResult
ππ# 0
(
ππ0 1

saveResult
ππ1 ;
,
ππ; <
player
ππ= C
)
ππC D
;
ππD E
}
∫∫ 
}
ªª 
else
ºº 
{
ΩΩ 

saveResult
ææ 
=
ææ 

SaveResult
ææ '
.
ææ' (
NicknameExistente
ææ( 9
;
ææ9 :
PlayerCallback
øø 
.
øø 
GetSaveResult
øø ,
(
øø, -

saveResult
øø- 7
,
øø7 8
player
øø9 ?
)
øø? @
;
øø@ A
}
¿¿ 
}
¡¡ 	
private
√√ 
void
√√ 
SaveNewPlayer
√√ "
(
√√" #
Jugador
√√# *
player
√√+ 1
)
√√1 2
{
ƒƒ 	

SaveResult
≈≈ 

saveResult
≈≈ !
;
≈≈! "

DataAccess
∆∆ 
.
∆∆ 
Jugador
∆∆ 
	newPlayer
∆∆ (
=
∆∆) *
new
∆∆+ .

DataAccess
∆∆/ 9
.
∆∆9 :
Jugador
∆∆: A
{
«« 
apodo
»» 
=
»» 
player
»» 
.
»» 
Apodo
»» $
,
»»$ %
contrasenia
…… 
=
…… 
hashText
…… &
.
……& '

TextToHash
……' 1
(
……1 2
player
……2 8
.
……8 9
Contrasenia
……9 D
)
……D E
,
……E F
correoElectronico
   !
=
  " #
player
  $ *
.
  * +
CorreoElectronico
  + <
,
  < =
status
ÀÀ 
=
ÀÀ 
ACTIVATION_STATE
ÀÀ )
,
ÀÀ) *#
respuestaConfirmacion
ÃÃ %
=
ÃÃ& '
player
ÃÃ( .
.
ÃÃ. /#
RespuestaConfirmacion
ÃÃ/ D
,
ÃÃD E"
preguntaRecuperacion
ÕÕ $
=
ÕÕ% &
player
ÕÕ' -
.
ÕÕ- ."
PreguntaRecuperacion
ÕÕ. B
,
ÕÕB C
pinConfirmacion
ŒŒ 
=
ŒŒ  !
player
ŒŒ" (
.
ŒŒ( )
PinConfirmacion
ŒŒ) 8
,
ŒŒ8 9
	idCreador
œœ 
=
œœ 
$num
œœ 
,
œœ 
idioma
–– 
=
–– 
player
–– 
.
––  

IdLenguaje
––  *
}
—— 
;
——  
JugadorDataManager
”” 
jugadorManager
”” -
=
””. /
new
””0 3 
JugadorDataManager
””4 F
(
””F G
)
””G H
;
””H I
int
‘‘ 
columnasAfectadas
‘‘ !
=
‘‘" #
jugadorManager
‘‘$ 2
.
‘‘2 3
SaveNewPlayer
‘‘3 @
(
‘‘@ A
	newPlayer
‘‘A J
)
‘‘J K
;
‘‘K L 
RankingDataManager
’’ 
rankingData
’’ *
=
’’+ ,
new
’’- 0 
RankingDataManager
’’1 C
(
’’C D
)
’’D E
;
’’E F
rankingData
÷÷ 
.
÷÷ 
NewPlayerRank
÷÷ %
(
÷÷% &
	newPlayer
÷÷& /
)
÷÷/ 0
;
÷÷0 1
if
◊◊ 
(
◊◊ 
columnasAfectadas
◊◊ !
>
◊◊" #
$num
◊◊$ %
)
◊◊% &
{
ÿÿ 

saveResult
ŸŸ 
=
ŸŸ 

SaveResult
ŸŸ '
.
ŸŸ' (
JugadorGuardado
ŸŸ( 7
;
ŸŸ7 8
PlayerCallback
⁄⁄ 
.
⁄⁄ 
GetSaveResult
⁄⁄ ,
(
⁄⁄, -

saveResult
⁄⁄- 7
,
⁄⁄7 8
player
⁄⁄9 ?
)
⁄⁄? @
;
⁄⁄@ A
}
€€ 
else
‹‹ 
{
›› 

saveResult
ﬁﬁ 
=
ﬁﬁ 

SaveResult
ﬁﬁ '
.
ﬁﬁ' (
ErrorGuardado
ﬁﬁ( 5
;
ﬁﬁ5 6
PlayerCallback
ﬂﬂ 
.
ﬂﬂ 
GetSaveResult
ﬂﬂ ,
(
ﬂﬂ, -

saveResult
ﬂﬂ- 7
,
ﬂﬂ7 8
player
ﬂﬂ9 ?
)
ﬂﬂ? @
;
ﬂﬂ@ A
}
‡‡ 
}
·· 	
public
„„ 
void
„„ 
VerifyPlayer
„„  
(
„„  !
Dominio
„„! (
.
„„( )
Jugador
„„) 0
player
„„1 7
)
„„7 8
{
‰‰ 	 
VerificationResult
ÂÂ 
	resultado
ÂÂ (
=
ÂÂ) * 
VerificationResult
ÂÂ+ =
.
ÂÂ= >
NoExisteJugador
ÂÂ> M
;
ÂÂM N 
JugadorDataManager
ÁÁ 
jugadorManager
ÁÁ -
=
ÁÁ. /
new
ÁÁ0 3 
JugadorDataManager
ÁÁ4 F
(
ÁÁF G
)
ÁÁG H
;
ÁÁH I
if
ÈÈ 
(
ÈÈ 
jugadorManager
ÈÈ 
.
ÈÈ 
CheckNickname
ÈÈ ,
(
ÈÈ, -
player
ÈÈ- 3
.
ÈÈ3 4
Apodo
ÈÈ4 9
)
ÈÈ9 :
)
ÈÈ: ;
{
ÍÍ 
if
ÎÎ 
(
ÎÎ 
jugadorManager
ÎÎ "
.
ÎÎ" #
PinCorrecto
ÎÎ# .
(
ÎÎ. /
player
ÎÎ/ 5
.
ÎÎ5 6
Apodo
ÎÎ6 ;
,
ÎÎ; <
player
ÎÎ= C
.
ÎÎC D
PinConfirmacion
ÎÎD S
)
ÎÎS T
)
ÎÎT U
{
ÏÏ 
int
ÌÌ 
result
ÌÌ 
=
ÌÌ  
jugadorManager
ÌÌ! /
.
ÌÌ/ 0
VerifyNewPlayer
ÌÌ0 ?
(
ÌÌ? @
new
ÌÌ@ C

DataAccess
ÌÌD N
.
ÌÌN O
Jugador
ÌÌO V
{
ÓÓ 
apodo
ÔÔ 
=
ÔÔ 
player
ÔÔ  &
.
ÔÔ& '
Apodo
ÔÔ' ,
,
ÔÔ, -
pinConfirmacion
 '
=
( )
player
* 0
.
0 1
PinConfirmacion
1 @
,
@ A
}
ÒÒ 
)
ÒÒ 
;
ÒÒ 
if
ÛÛ 
(
ÛÛ 
result
ÛÛ 
>
ÛÛ  
$num
ÛÛ! "
)
ÛÛ" #
{
ÙÙ 
	resultado
ıı !
=
ıı" # 
VerificationResult
ıı$ 6
.
ıı6 7"
VerificacionExistosa
ıı7 K
;
ııK L
}
ˆˆ 
}
˜˜ 
else
¯¯ 
{
˘˘ 
	resultado
˙˙ 
=
˙˙  
VerificationResult
˙˙  2
.
˙˙2 3
PinIncorrecto
˙˙3 @
;
˙˙@ A
}
˚˚ 
}
¸¸ 
else
˝˝ 
{
˛˛ 
	resultado
ˇˇ 
=
ˇˇ  
VerificationResult
ˇˇ .
.
ˇˇ. /
NoExisteJugador
ˇˇ/ >
;
ˇˇ> ?
}
ÄÄ 
PlayerCallback
ÇÇ 
.
ÇÇ 
GetVerifyResult
ÇÇ *
(
ÇÇ* +
	resultado
ÇÇ+ 4
)
ÇÇ4 5
;
ÇÇ5 6
}
ÉÉ 	
public
ÖÖ 
void
ÖÖ 
SendMail
ÖÖ 
(
ÖÖ 
Jugador
ÖÖ $
player
ÖÖ% +
)
ÖÖ+ ,
{
ÜÜ 	

MailResult
áá 
mailSuccesResult
áá '
;
áá' (
System
ââ 
.
ââ 
Net
ââ 
.
ââ 
Mail
ââ 
.
ââ 
MailMessage
ââ '
mailMesagge
ââ( 3
=
ââ4 5
new
ââ6 9
System
ââ: @
.
ââ@ A
Net
ââA D
.
ââD E
Mail
ââE I
.
ââI J
MailMessage
ââJ U
(
ââU V
)
ââV W
;
ââW X
mailMesagge
ãã 
.
ãã 
To
ãã 
.
ãã 
Add
ãã 
(
ãã 
player
ãã %
.
ãã% &
CorreoElectronico
ãã& 7
)
ãã7 8
;
ãã8 9
mailMesagge
åå 
.
åå 
Subject
åå 
=
åå  !
$str
åå" A
+
ååB C
player
ååD J
.
ååJ K
Apodo
ååK P
;
ååP Q
mailMesagge
çç 
.
çç 
Body
çç 
=
çç 
$str
çç '
+
çç( )
player
çç* 0
.
çç0 1
Apodo
çç1 6
+
çç7 8
$str
çç9 p
+
ççq r
$str
éé ?
+
éé@ A
player
ééB H
.
ééH I
PinConfirmacion
ééI X
;
ééX Y
mailMesagge
èè 
.
èè 
From
èè 
=
èè 
new
èè "
System
èè# )
.
èè) *
Net
èè* -
.
èè- .
Mail
èè. 2
.
èè2 3
MailAddress
èè3 >
(
èè> ?
$str
èè? Z
,
èèZ [
$str
èè\ s
)
èès t
;
èèt u
System
ëë 
.
ëë 
Net
ëë 
.
ëë 
Mail
ëë 
.
ëë 

SmtpClient
ëë &
client
ëë' -
=
ëë. /
new
ëë0 3
System
ëë4 :
.
ëë: ;
Net
ëë; >
.
ëë> ?
Mail
ëë? C
.
ëëC D

SmtpClient
ëëD N
{
íí 
Credentials
ìì 
=
ìì 
new
ìì !
System
ìì" (
.
ìì( )
Net
ìì) ,
.
ìì, -
NetworkCredential
ìì- >
(
ìì> ?
mailUser
ìì? G
,
ììG H
mailPassword
ììI U
)
ììU V
,
ììV W
Port
îî 
=
îî 
$num
îî 
,
îî 
	EnableSsl
ïï 
=
ïï 
true
ïï  
,
ïï  !
Host
ññ 
=
ññ 
$str
ññ '
,
ññ' (
}
óó 
;
óó 
try
òò 
{
ôô 
client
öö 
.
öö 
Send
öö 
(
öö 
mailMesagge
öö '
)
öö' (
;
öö( )
mailSuccesResult
õõ  
=
õõ! "

MailResult
õõ# -
.
õõ- .
MailSend
õõ. 6
;
õõ6 7
PlayerCallback
úú 
.
úú !
GetResendMailResult
úú 2
(
úú2 3
mailSuccesResult
úú3 C
,
úúC D
player
úúE K
.
úúK L
Apodo
úúL Q
)
úúQ R
;
úúR S
}
ùù 
catch
ûû 
(
ûû 
System
ûû 
.
ûû 
Net
ûû 
.
ûû 
Mail
ûû "
.
ûû" #
SmtpException
ûû# 0
)
ûû0 1
{
üü 
mailSuccesResult
††  
=
††! "

MailResult
††# -
.
††- .
	SendError
††. 7
;
††7 8
PlayerCallback
°° 
.
°° !
GetResendMailResult
°° 2
(
°°2 3
mailSuccesResult
°°3 C
,
°°C D
player
°°E K
.
°°K L
Apodo
°°L Q
)
°°Q R
;
°°R S
}
¢¢ 
}
££ 	
public
•• 
void
••  
PasswordForgotMail
•• &
(
••& '
string
••' -
actualNickname
••. <
)
••< =
{
¶¶ 	 
JugadorDataManager
ßß 
jugadorManager
ßß -
=
ßß. /
new
ßß0 3 
JugadorDataManager
ßß4 F
(
ßßF G
)
ßßG H
;
ßßH I

MailResult
®® 
mailSuccesResult
®® '
;
®®' (
string
©© 
securityQuestion
©© #
=
©©$ %
$str
©©& )
;
©©) *
if
´´ 
(
´´ 
jugadorManager
´´ 
.
´´ 
CheckNickname
´´ ,
(
´´, -
actualNickname
´´- ;
)
´´; <
)
´´< =
{
¨¨ 

DataAccess
≠≠ 
.
≠≠ 
Jugador
≠≠ "
player
≠≠# )
=
≠≠* +
jugadorManager
≠≠, :
.
≠≠: ;!
ChangePinByNickname
≠≠; N
(
≠≠N O
actualNickname
≠≠O ]
)
≠≠] ^
;
≠≠^ _
securityQuestion
ÆÆ  
=
ÆÆ! "
player
ÆÆ# )
.
ÆÆ) *"
preguntaRecuperacion
ÆÆ* >
;
ÆÆ> ?
System
∞∞ 
.
∞∞ 
Net
∞∞ 
.
∞∞ 
Mail
∞∞ 
.
∞∞  
MailMessage
∞∞  +
mailMesagge
∞∞, 7
=
∞∞8 9
new
∞∞: =
System
∞∞> D
.
∞∞D E
Net
∞∞E H
.
∞∞H I
Mail
∞∞I M
.
∞∞M N
MailMessage
∞∞N Y
(
∞∞Y Z
)
∞∞Z [
;
∞∞[ \
mailMesagge
≤≤ 
.
≤≤ 
To
≤≤ 
.
≤≤ 
Add
≤≤ "
(
≤≤" #
player
≤≤# )
.
≤≤) *
correoElectronico
≤≤* ;
)
≤≤; <
;
≤≤< =
mailMesagge
≥≥ 
.
≥≥ 
Subject
≥≥ #
=
≥≥$ %
$str
≥≥& K
+
≥≥L M
player
≥≥N T
.
≥≥T U
apodo
≥≥U Z
;
≥≥Z [
mailMesagge
¥¥ 
.
¥¥ 
Body
¥¥  
=
¥¥! "
$str
¥¥# *
+
¥¥+ ,
player
¥¥- 3
.
¥¥3 4
apodo
¥¥4 9
+
¥¥: ;
$str
¥¥< j
+
¥¥k l
$str
µµ \
+
µµ] ^
player
µµ_ e
.
µµe f
pinConfirmacion
µµf u
;
µµu v
mailMesagge
∂∂ 
.
∂∂ 
From
∂∂  
=
∂∂! "
new
∂∂# &
System
∂∂' -
.
∂∂- .
Net
∂∂. 1
.
∂∂1 2
Mail
∂∂2 6
.
∂∂6 7
MailAddress
∂∂7 B
(
∂∂B C
$str
∂∂C ^
,
∂∂^ _
$str
∂∂` w
)
∂∂w x
;
∂∂x y
System
∏∏ 
.
∏∏ 
Net
∏∏ 
.
∏∏ 
Mail
∏∏ 
.
∏∏  

SmtpClient
∏∏  *
client
∏∏+ 1
=
∏∏2 3
new
∏∏4 7
System
∏∏8 >
.
∏∏> ?
Net
∏∏? B
.
∏∏B C
Mail
∏∏C G
.
∏∏G H

SmtpClient
∏∏H R
{
ππ 
Credentials
∫∫ 
=
∫∫  !
new
∫∫" %
System
∫∫& ,
.
∫∫, -
Net
∫∫- 0
.
∫∫0 1
NetworkCredential
∫∫1 B
(
∫∫B C
mailUser
∫∫C K
,
∫∫K L
mailPassword
∫∫M Y
)
∫∫Y Z
,
∫∫Z [
Port
ªª 
=
ªª 
$num
ªª 
,
ªª 
	EnableSsl
ºº 
=
ºº 
true
ºº  $
,
ºº$ %
Host
ΩΩ 
=
ΩΩ 
$str
ΩΩ +
,
ΩΩ+ ,
}
ææ 
;
ææ 
try
øø 
{
¿¿ 
client
¡¡ 
.
¡¡ 
Send
¡¡ 
(
¡¡  
mailMesagge
¡¡  +
)
¡¡+ ,
;
¡¡, -
mailSuccesResult
¬¬ $
=
¬¬% &

MailResult
¬¬' 1
.
¬¬1 2
MailSend
¬¬2 :
;
¬¬: ;
PlayerCallback
√√ "
.
√√" #
GetMailResult
√√# 0
(
√√0 1
mailSuccesResult
√√1 A
,
√√A B
actualNickname
√√C Q
,
√√Q R
securityQuestion
√√S c
)
√√c d
;
√√d e
}
ƒƒ 
catch
≈≈ 
(
≈≈ 
System
≈≈ 
.
≈≈ 
Net
≈≈ !
.
≈≈! "
Mail
≈≈" &
.
≈≈& '
SmtpException
≈≈' 4
)
≈≈4 5
{
∆∆ 
mailSuccesResult
«« $
=
««% &

MailResult
««' 1
.
««1 2
	SendError
««2 ;
;
««; <
PlayerCallback
»» "
.
»»" #
GetMailResult
»»# 0
(
»»0 1
mailSuccesResult
»»1 A
,
»»A B
actualNickname
»»C Q
,
»»Q R
securityQuestion
»»S c
)
»»c d
;
»»d e
}
…… 
}
   
else
ÀÀ 
{
ÃÃ 
mailSuccesResult
ÕÕ  
=
ÕÕ! "

MailResult
ÕÕ# -
.
ÕÕ- .
UnknownPlayer
ÕÕ. ;
;
ÕÕ; <
PlayerCallback
ŒŒ 
.
ŒŒ 
GetMailResult
ŒŒ ,
(
ŒŒ, -
mailSuccesResult
ŒŒ- =
,
ŒŒ= >
actualNickname
ŒŒ? M
,
ŒŒM N
securityQuestion
ŒŒO _
)
ŒŒ_ `
;
ŒŒ` a
}
œœ 
}
–– 	
public
““ 
void
““ 
	VerifyPin
““ 
(
““ 
string
““ $
actualNickname
““% 3
,
““3 4
string
““5 ;
	playerPin
““< E
,
““E F
string
““G M

answerText
““N X
)
““X Y
{
”” 	
	PinResult
‘‘ 
	pinResult
‘‘ 
=
‘‘  !
	PinResult
‘‘" +
.
‘‘+ ,

UnknownPin
‘‘, 6
;
‘‘6 7
if
÷÷ 
(
÷÷  
jugadorDataManager
÷÷ "
.
÷÷" #
PinCorrecto
÷÷# .
(
÷÷. /
actualNickname
÷÷/ =
,
÷÷= >
	playerPin
÷÷? H
)
÷÷H I
)
÷÷I J
{
◊◊ 
if
ÿÿ 
(
ÿÿ  
jugadorDataManager
ÿÿ &
.
ÿÿ& '
CorrectAnswer
ÿÿ' 4
(
ÿÿ4 5
actualNickname
ÿÿ5 C
,
ÿÿC D

answerText
ÿÿE O
)
ÿÿO P
)
ÿÿP Q
{
ŸŸ 
	pinResult
⁄⁄ 
=
⁄⁄ 
	PinResult
⁄⁄  )
.
⁄⁄) *
VerifiedPin
⁄⁄* 5
;
⁄⁄5 6
}
€€ 
else
‹‹ 
{
›› 
	pinResult
ﬁﬁ 
=
ﬁﬁ 
	PinResult
ﬁﬁ  )
.
ﬁﬁ) *
WrongAnswer
ﬁﬁ* 5
;
ﬁﬁ5 6
}
ﬂﬂ 
}
‡‡ 
PlayerCallback
‚‚ 
.
‚‚ 
GetPinResult
‚‚ '
(
‚‚' (
	pinResult
‚‚( 1
,
‚‚1 2
actualNickname
‚‚3 A
)
‚‚A B
;
‚‚B C
}
„„ 	
public
ÂÂ 
void
ÂÂ 
ChangePassword
ÂÂ "
(
ÂÂ" #
string
ÂÂ# )
userNickname
ÂÂ* 6
,
ÂÂ6 7
string
ÂÂ8 >
password
ÂÂ? G
)
ÂÂG H
{
ÊÊ 	"
PasswordChangeResult
ÁÁ  
changeResult
ÁÁ! -
=
ÁÁ. /"
PasswordChangeResult
ÁÁ0 D
.
ÁÁD E
ErrorChanging
ÁÁE R
;
ÁÁR S
if
ÈÈ 
(
ÈÈ  
jugadorDataManager
ÈÈ "
.
ÈÈ" #
CheckNickname
ÈÈ# 0
(
ÈÈ0 1
userNickname
ÈÈ1 =
)
ÈÈ= >
)
ÈÈ> ?
{
ÍÍ 
string
ÎÎ 
newPassword
ÎÎ "
=
ÎÎ# $
hashText
ÎÎ% -
.
ÎÎ- .

TextToHash
ÎÎ. 8
(
ÎÎ8 9
password
ÎÎ9 A
)
ÎÎA B
;
ÎÎB C
int
ÏÏ 
resultChange
ÏÏ  
=
ÏÏ! " 
jugadorDataManager
ÏÏ# 5
.
ÏÏ5 6
ChangePassword
ÏÏ6 D
(
ÏÏD E
userNickname
ÏÏE Q
,
ÏÏQ R
newPassword
ÏÏS ^
)
ÏÏ^ _
;
ÏÏ_ `
if
ÓÓ 
(
ÓÓ 
resultChange
ÓÓ  
>
ÓÓ! "
$num
ÓÓ# $
)
ÓÓ$ %
{
ÔÔ 
changeResult
  
=
! ""
PasswordChangeResult
# 7
.
7 8
ChangedPassword
8 G
;
G H
}
ÒÒ 
}
ÛÛ 
PlayerCallback
ıı 
.
ıı %
GetPasswordChangeResult
ıı 2
(
ıı2 3
changeResult
ıı3 ?
)
ıı? @
;
ıı@ A
}
˜˜ 	
public
˘˘ 
void
˘˘ 
GetActualPlayer
˘˘ #
(
˘˘# $
Jugador
˘˘$ +
actualPlayer
˘˘, 8
)
˘˘8 9
{
˙˙ 	 
DataObtainedResult
˚˚  
dataObtainedResult
˚˚ 1
=
˚˚2 3 
DataObtainedResult
˚˚4 F
.
˚˚F G 
ErrorObtainingData
˚˚G Y
;
˚˚Y Z

DataAccess
¸¸ 
.
¸¸ 
Jugador
¸¸ 
searchedPlayer
¸¸ -
=
¸¸. / 
jugadorDataManager
¸¸0 B
.
¸¸B C!
GetPlayerByNickname
¸¸C V
(
¸¸V W
actualPlayer
¸¸W c
.
¸¸c d
Apodo
¸¸d i
)
¸¸i j
;
¸¸j k
if
˛˛ 
(
˛˛ 
searchedPlayer
˛˛ 
!=
˛˛ !
null
˛˛" &
)
˛˛& '
{
ˇˇ 
Dominio
ÄÄ 
.
ÄÄ 
Jugador
ÄÄ "
domainSearchedPlayer
ÄÄ  4
=
ÄÄ5 6
new
ÄÄ7 :
Dominio
ÄÄ; B
.
ÄÄB C
Jugador
ÄÄC J
{
ÅÅ 
	IdJugador
ÇÇ 
=
ÇÇ 
searchedPlayer
ÇÇ  .
.
ÇÇ. /
	idJugador
ÇÇ/ 8
,
ÇÇ8 9
Apodo
ÉÉ 
=
ÉÉ 
searchedPlayer
ÉÉ *
.
ÉÉ* +
apodo
ÉÉ+ 0
,
ÉÉ0 1
CorreoElectronico
ÑÑ %
=
ÑÑ& '
searchedPlayer
ÑÑ( 6
.
ÑÑ6 7
correoElectronico
ÑÑ7 H
,
ÑÑH I
Status
ÖÖ 
=
ÖÖ 
searchedPlayer
ÖÖ +
.
ÖÖ+ ,
status
ÖÖ, 2
,
ÖÖ2 3"
PreguntaRecuperacion
ÜÜ (
=
ÜÜ) *
searchedPlayer
ÜÜ+ 9
.
ÜÜ9 :"
preguntaRecuperacion
ÜÜ: N
,
ÜÜN O

IdLenguaje
áá 
=
áá  
searchedPlayer
áá! /
.
áá/ 0
idioma
áá0 6
}
ââ 
;
ââ  
dataObtainedResult
ää "
=
ää# $ 
DataObtainedResult
ää% 7
.
ää7 8
DataObtained
ää8 D
;
ääD E
PlayerCallback
ãã 
.
ãã 
SendActualPlayer
ãã /
(
ãã/ 0 
dataObtainedResult
ãã0 B
,
ããB C"
domainSearchedPlayer
ããD X
)
ããX Y
;
ããY Z
}
åå 
else
çç 
{
éé 
Dominio
èè 
.
èè 
Jugador
èè 
emptyPlayer
èè  +
=
èè, -
new
èè. 1
Jugador
èè2 9
(
èè9 :
)
èè: ;
;
èè; <
PlayerCallback
êê 
.
êê 
SendActualPlayer
êê /
(
êê/ 0 
dataObtainedResult
êê0 B
,
êêB C
emptyPlayer
êêD O
)
êêO P
;
êêP Q
}
ëë 
}
îî 	
public
ññ 
void
ññ 
CloseSession
ññ  
(
ññ  !
string
ññ! '
playerNickname
ññ( 6
)
ññ6 7
{
óó 	
playersLoggedIn
òò 
.
òò 
Remove
òò "
(
òò" #
playerNickname
òò# 1
)
òò1 2
;
òò2 3
}
öö 	$
IPlayerManagerCallback
úú 
PlayerCallback
úú -
{
ùù 	
get
ûû 
{
üü 
return
†† 
OperationContext
†† '
.
††' (
Current
††( /
.
††/ 0 
GetCallbackChannel
††0 B
<
††B C$
IPlayerManagerCallback
††C Y
>
††Y Z
(
††Z [
)
††[ \
;
††\ ]
}
°° 
}
¢¢ 	
}
££ 
public
•• 

partial
•• 
class
•• 
MainService
•• $
:
••% &
IRankingManager
••' 6
{
¶¶ 
public
ßß 
void
ßß 
GetRankingData
ßß "
(
ßß" #
)
ßß# $
{
®® 	
RankingResult
©© 
result
©©  
;
©©  !
List
™™ 
<
™™ 
Dominio
™™ 
.
™™ 
Ranking
™™  
>
™™  !
rankings
™™" *
=
™™+ ,
QueryRankingData
™™- =
(
™™= >
)
™™> ?
;
™™? @
if
¨¨ 
(
¨¨ 
rankings
¨¨ 
==
¨¨ 
null
¨¨  
)
¨¨  !
{
≠≠ 
result
ÆÆ 
=
ÆÆ 
RankingResult
ÆÆ &
.
ÆÆ& '

NO_RANKING
ÆÆ' 1
;
ÆÆ1 2
}
ØØ 
else
∞∞ 
{
±± 
result
≤≤ 
=
≤≤ 
RankingResult
≤≤ &
.
≤≤& '
RANKING_EXISTS
≤≤' 5
;
≤≤5 6
RankingCallback
¥¥ 
.
¥¥   
ReceiveRankingData
¥¥  2
(
¥¥2 3
rankings
¥¥3 ;
)
¥¥; <
;
¥¥< =
}
µµ 
RankingCallback
∏∏ 
.
∏∏ 
GetRankingResult
∏∏ ,
(
∏∏, -
result
∏∏- 3
)
∏∏3 4
;
∏∏4 5
}
ππ 	
public
ªª 
List
ªª 
<
ªª 
Dominio
ªª 
.
ªª 
Ranking
ªª #
>
ªª# $
QueryRankingData
ªª% 5
(
ªª5 6
)
ªª6 7
{
ºº 	
List
ΩΩ 
<
ΩΩ 
Dominio
ΩΩ 
.
ΩΩ 
Ranking
ΩΩ  
>
ΩΩ  !
currentRankings
ΩΩ" 1
=
ΩΩ2 3
new
ΩΩ4 7
List
ΩΩ8 <
<
ΩΩ< =
Dominio
ΩΩ= D
.
ΩΩD E
Ranking
ΩΩE L
>
ΩΩL M
(
ΩΩM N
)
ΩΩN O
;
ΩΩO P 
RankingDataManager
ææ 
dataManager
ææ *
=
ææ+ ,
new
ææ- 0 
RankingDataManager
ææ1 C
(
ææC D
)
ææD E
;
ææE F 
JugadorDataManager
øø 
playerManager
øø ,
=
øø- .
new
øø/ 2 
JugadorDataManager
øø3 E
(
øøE F
)
øøF G
;
øøG H
List
¿¿ 
<
¿¿ 

DataAccess
¿¿ 
.
¿¿ 
Ranking
¿¿ #
>
¿¿# $ 
queriedRankingList
¿¿% 7
=
¿¿8 9
dataManager
¿¿: E
.
¿¿E F
GetRankingList
¿¿F T
(
¿¿T U
)
¿¿U V
;
¿¿V W
if
¬¬ 
(
¬¬ 
dataManager
¬¬ 
.
¬¬ 
GetRankingList
¬¬ *
(
¬¬* +
)
¬¬+ ,
!=
¬¬- /
null
¬¬0 4
)
¬¬4 5
{
√√ 
foreach
ƒƒ 
(
ƒƒ 

DataAccess
ƒƒ #
.
ƒƒ# $
Ranking
ƒƒ$ +
playerRanking
ƒƒ, 9
in
ƒƒ: < 
queriedRankingList
ƒƒ= O
)
ƒƒO P
{
≈≈ 
currentRankings
∆∆ #
.
∆∆# $
Add
∆∆$ '
(
∆∆' (
new
∆∆( +
Dominio
∆∆, 3
.
∆∆3 4
Ranking
∆∆4 ;
{
«« 
	IdRanking
»» !
=
»»" #
playerRanking
»»$ 1
.
»»1 2
	idRanking
»»2 ;
,
»»; <
Duenio
…… 
=
……  
playerManager
……! .
.
……. /!
GetDomainPlayerByID
……/ B
(
……B C
playerRanking
……C P
.
……P Q
idDuenio
……Q Y
)
……Y Z
,
……Z [
FechaRegistracion
   )
=
  * +
playerRanking
  , 9
.
  9 :
fechaRegistracion
  : K
??
  L N
default
  O V
(
  V W
DateTime
  W _
)
  _ `
,
  ` a
NumeroVictorias
ÀÀ '
=
ÀÀ( )
playerRanking
ÀÀ* 7
.
ÀÀ7 8
numeroVictorias
ÀÀ8 G
??
ÀÀH J
default
ÀÀK R
(
ÀÀR S
int
ÀÀS V
)
ÀÀV W
,
ÀÀW X
PartidasJugadas
ÃÃ '
=
ÃÃ( )
playerRanking
ÃÃ* 7
.
ÃÃ7 8
partidasJugadas
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
ÃÃW X
Rank
ÕÕ 
=
ÕÕ 
playerRanking
ÕÕ ,
.
ÕÕ, -
rank
ÕÕ- 1
??
ÕÕ2 4
default
ÕÕ5 <
(
ÕÕ< =
int
ÕÕ= @
)
ÕÕ@ A
,
ÕÕA B
NumeroPerdidas
ŒŒ &
=
ŒŒ' (
playerRanking
ŒŒ) 6
.
ŒŒ6 7
numeroPerdidas
ŒŒ7 E
??
ŒŒF H
default
ŒŒI P
(
ŒŒP Q
int
ŒŒQ T
)
ŒŒT U
}
œœ 
)
œœ 
;
œœ 
}
–– 
}
—— 
return
”” 
currentRankings
”” "
;
””" #
}
‘‘ 	%
IRankingManagerCallback
÷÷ 
RankingCallback
÷÷  /
{
◊◊ 	
get
ÿÿ 
{
ŸŸ 
return
⁄⁄ 
OperationContext
⁄⁄ '
.
⁄⁄' (
Current
⁄⁄( /
.
⁄⁄/ 0 
GetCallbackChannel
⁄⁄0 B
<
⁄⁄B C%
IRankingManagerCallback
⁄⁄C Z
>
⁄⁄Z [
(
⁄⁄[ \
)
⁄⁄\ ]
;
⁄⁄] ^
}
€€ 
}
‹‹ 	
}
›› 
public
ﬂﬂ 

partial
ﬂﬂ 
class
ﬂﬂ 
MainService
ﬂﬂ $
:
ﬂﬂ% &
IGameManager
ﬂﬂ' 3
{
‡‡ 
private
·· 
List
·· 
<
·· 
Match
·· 
>
·· 
activeMatches
·· )
=
··* +
new
··, /
List
··0 4
<
··4 5
Match
··5 :
>
··: ;
(
··; <
)
··< =
;
··= >
private
‚‚ 
int
‚‚ !
numberActiveMatches
‚‚ '
=
‚‚( )
$num
‚‚* +
;
‚‚+ ,
private
„„ 
List
„„ 
<
„„ 
Match
„„ 
>
„„ "
playersQueuedClassic
„„ 0
=
„„1 2
new
„„3 6
List
„„7 ;
<
„„; <
Match
„„< A
>
„„A B
(
„„B C
)
„„C D
;
„„D E
private
‰‰ 
const
‰‰ 
int
‰‰ 

PLAYER_ONE
‰‰ $
=
‰‰% &
$num
‰‰' (
;
‰‰( )
private
ÂÂ 
const
ÂÂ 
int
ÂÂ 

PLAYER_TWO
ÂÂ $
=
ÂÂ% &
$num
ÂÂ' (
;
ÂÂ( )"
IGameManagerCallback
ÁÁ !
GameManagerCallback
ÁÁ 0
{
ËË 	
get
ÈÈ 
{
ÍÍ 
return
ÎÎ 
OperationContext
ÎÎ '
.
ÎÎ' (
Current
ÎÎ( /
.
ÎÎ/ 0 
GetCallbackChannel
ÎÎ0 B
<
ÎÎB C"
IGameManagerCallback
ÎÎC W
>
ÎÎW X
(
ÎÎX Y
)
ÎÎY Z
;
ÎÎZ [
}
ÏÏ 
}
ÌÌ 	
public
ÔÔ 
void
ÔÔ 
Player1Turn
ÔÔ 
(
ÔÔ  
Checker
ÔÔ  '
[
ÔÔ' (
]
ÔÔ( )
[
ÔÔ) *
]
ÔÔ* +
updateBoardMatrix
ÔÔ, =
,
ÔÔ= >
int
ÔÔ? B
matchNumber
ÔÔC N
,
ÔÔN O
int
ÔÔP S
playerTwoCheckers
ÔÔT e
,
ÔÔe f
int
ÔÔg j
playerOneCheckers
ÔÔk |
)
ÔÔ| }
{
 	
try
ÒÒ 
{
ÚÚ 
activeMatches
ÛÛ 
[
ÛÛ 
matchNumber
ÛÛ )
]
ÛÛ) *
.
ÛÛ* +
playerTwoCallback
ÛÛ+ <
.
ÛÛ< =
UpdateGameGUI
ÛÛ= J
(
ÛÛJ K
updateBoardMatrix
ÛÛK \
,
ÛÛ\ ]
playerTwoCheckers
ÛÛ^ o
,
ÛÛo p 
playerOneCheckersÛÛq Ç
)ÛÛÇ É
;ÛÛÉ Ñ
}
ÙÙ 
catch
ıı 
(
ıı '
EndpointNotFoundException
ıı ,
)
ıı, -
{
ˆˆ 
activeMatches
˜˜ 
[
˜˜ 
matchNumber
˜˜ )
]
˜˜) *
.
˜˜* +
playerOneCallback
˜˜+ <
.
˜˜< =
EndAbandonedGame
˜˜= M
(
˜˜M N
)
˜˜N O
;
˜˜O P
}
¯¯ 
}
˘˘ 	
public
˚˚ 
void
˚˚ 
CreateMatch
˚˚ 
(
˚˚  
Jugador
˚˚  '
currentPlayer
˚˚( 5
,
˚˚5 6
CheckersGameMode
˚˚7 G
gameMode
˚˚H P
)
˚˚P Q
{
¸¸ 	
MatchmakingResult
˝˝ 
matchmakingResult
˝˝ /
;
˝˝/ 0
if
ˇˇ 
(
ˇˇ "
playersQueuedClassic
ˇˇ $
.
ˇˇ$ %
Count
ˇˇ% *
>
ˇˇ+ ,
$num
ˇˇ- .
)
ˇˇ. /
{
ÄÄ 
Match
ÅÅ 
newCompleteGame
ÅÅ %
=
ÅÅ& '"
playersQueuedClassic
ÅÅ( <
.
ÅÅ< =
First
ÅÅ= B
(
ÅÅB C
)
ÅÅC D
;
ÅÅD E"
playersQueuedClassic
ÇÇ $
.
ÇÇ$ %
Remove
ÇÇ% +
(
ÇÇ+ ,
newCompleteGame
ÇÇ, ;
)
ÇÇ; <
;
ÇÇ< =
newCompleteGame
ÉÉ 
.
ÉÉ  
playerTwoCallback
ÉÉ  1
=
ÉÉ2 3!
GameManagerCallback
ÉÉ4 G
;
ÉÉG H
newCompleteGame
ÑÑ 
.
ÑÑ  
playerTwoData
ÑÑ  -
=
ÑÑ. /
currentPlayer
ÑÑ0 =
;
ÑÑ= >
newCompleteGame
ÖÖ 
.
ÖÖ  
matchActiveNumber
ÖÖ  1
=
ÖÖ2 3!
numberActiveMatches
ÖÖ4 G
;
ÖÖG H"
playersQueuedClassic
ÜÜ $
.
ÜÜ$ %
Sort
ÜÜ% )
(
ÜÜ) *
)
ÜÜ* +
;
ÜÜ+ ,
matchmakingResult
áá !
=
áá" #
MatchmakingResult
áá$ 5
.
áá5 6
MATCH_FOUND
áá6 A
;
ááA B
activeMatches
àà 
.
àà 
Add
àà !
(
àà! "
newCompleteGame
àà" 1
)
àà1 2
;
àà2 3!
numberActiveMatches
ââ #
++
ââ# %
;
ââ% &
try
ãã 
{
åå 
newCompleteGame
çç #
.
çç# $
playerOneCallback
çç$ 5
.
çç5 6"
GetMatchmakingResult
çç6 J
(
ççJ K
matchmakingResult
ççK \
,
çç\ ]
newCompleteGame
çç^ m
,
ççm n

PLAYER_ONE
çço y
)
ççy z
;
ççz {!
GameManagerCallback
êê '
.
êê' ("
GetMatchmakingResult
êê( <
(
êê< =
matchmakingResult
êê= N
,
êêN O
newCompleteGame
êêP _
,
êê_ `

PLAYER_TWO
êêa k
)
êêk l
;
êêl m
}
ëë 
catch
íí 
(
íí '
EndpointNotFoundException
íí /
)
íí/ 0
{
ìì 
matchmakingResult
îî %
=
îî& '
MatchmakingResult
îî( 9
.
îî9 :#
UNABLE_TO_ENTER_MATCH
îî: O
;
îîO P!
GameManagerCallback
ïï '
.
ïï' ("
GetMatchmakingResult
ïï( <
(
ïï< =
matchmakingResult
ïï= N
,
ïïN O
newCompleteGame
ïïP _
,
ïï_ `

PLAYER_TWO
ïïa k
)
ïïk l
;
ïïl m
activeMatches
ññ !
.
ññ! "
Remove
ññ" (
(
ññ( )
newCompleteGame
ññ) 8
)
ññ8 9
;
ññ9 :!
numberActiveMatches
óó '
--
óó' )
;
óó) *
}
ôô 
}
õõ 
else
úú 
{
ùù 
Match
ûû 
newGame
ûû 
=
ûû 
new
ûû  #
Match
ûû$ )
(
ûû) *
)
ûû* +
{
üü 
currentPlayer
†† !
=
††" #

PLAYER_ONE
††$ .
,
††. /
playerOneData
°° !
=
°°" #
currentPlayer
°°$ 1
,
°°1 2
playerOneCallback
¢¢ %
=
¢¢& '!
GameManagerCallback
¢¢( ;
,
¢¢; <
}
££ 
;
££ "
playersQueuedClassic
•• $
.
••$ %
Add
••% (
(
••( )
newGame
••) 0
)
••0 1
;
••1 2
matchmakingResult
¶¶ !
=
¶¶" #
MatchmakingResult
¶¶$ 5
.
¶¶5 6
MATCH_NOT_FOUND
¶¶6 E
;
¶¶E F!
GameManagerCallback
ßß #
.
ßß# $"
GetMatchmakingResult
ßß$ 8
(
ßß8 9
matchmakingResult
ßß9 J
,
ßßJ K
newGame
ßßL S
,
ßßS T

PLAYER_ONE
ßßU _
)
ßß_ `
;
ßß` a
}
©© 
}
™™ 	
public
≠≠ 
void
≠≠ 
Player2Turn
≠≠ 
(
≠≠  
Checker
≠≠  '
[
≠≠' (
]
≠≠( )
[
≠≠) *
]
≠≠* +
updateBoardMatrix
≠≠, =
,
≠≠= >
int
≠≠? B
matchNumber
≠≠C N
,
≠≠N O
int
≠≠P S
playerTwoCheckers
≠≠T e
,
≠≠e f
int
≠≠g j
playerOneCheckers
≠≠k |
)
≠≠| }
{
ÆÆ 	
try
ØØ 
{
∞∞ 
activeMatches
±± 
[
±± 
matchNumber
±± )
]
±±) *
.
±±* +
playerOneCallback
±±+ <
.
±±< =
UpdateGameGUI
±±= J
(
±±J K
updateBoardMatrix
±±K \
,
±±\ ]
playerTwoCheckers
±±^ o
,
±±o p 
playerOneCheckers±±q Ç
)±±Ç É
;±±É Ñ
}
≤≤ 
catch
≥≥ 
(
≥≥ '
EndpointNotFoundException
≥≥ ,
)
≥≥, -
{
¥¥ 
activeMatches
µµ 
[
µµ 
matchNumber
µµ )
]
µµ) *
.
µµ* +
playerTwoCallback
µµ+ <
.
µµ< =
EndAbandonedGame
µµ= M
(
µµM N
)
µµN O
;
µµO P
}
∂∂ 
}
∑∑ 	
public
ππ 
void
ππ 
FinishPlayerGame
ππ $
(
ππ$ %
int
ππ% (
matchNumber
ππ) 4
,
ππ4 5
int
ππ6 9
playerNumber
ππ: F
,
ππF G
int
ππH K
playerTwoCheckers
ππL ]
,
ππ] ^
int
ππ_ b
playerOneCheckers
ππc t
)
ππt u
{
∫∫ 	
if
ªª 
(
ªª 
playerNumber
ªª 
==
ªª 

PLAYER_ONE
ªª  *
)
ªª* +
{
ºº 
activeMatches
ΩΩ 
[
ΩΩ 
matchNumber
ΩΩ )
]
ΩΩ) *
.
ΩΩ* +
playerTwoCallback
ΩΩ+ <
.
ΩΩ< =

FinishGame
ΩΩ= G
(
ΩΩG H
playerTwoCheckers
ΩΩH Y
,
ΩΩY Z
playerOneCheckers
ΩΩ[ l
)
ΩΩl m
;
ΩΩm n
}
ææ 
else
øø 
{
¿¿ 
activeMatches
¡¡ 
[
¡¡ 
matchNumber
¡¡ )
]
¡¡) *
.
¡¡* +
playerOneCallback
¡¡+ <
.
¡¡< =

FinishGame
¡¡= G
(
¡¡G H
playerTwoCheckers
¡¡H Y
,
¡¡Y Z
playerOneCheckers
¡¡[ l
)
¡¡l m
;
¡¡m n
}
¬¬  
RankingDataManager
√√  
rankingDataManager
√√ 1
=
√√2 3
new
√√4 7 
RankingDataManager
√√8 J
(
√√J K
)
√√K L
;
√√L M 
rankingDataManager
ƒƒ 
.
ƒƒ  
UpdateMatchResults
ƒƒ 1
(
ƒƒ1 2
activeMatches
ƒƒ2 ?
[
ƒƒ? @
matchNumber
ƒƒ@ K
]
ƒƒK L
.
ƒƒL M
playerOneData
ƒƒM Z
,
ƒƒZ [
playerOneCheckers
ƒƒ\ m
,
ƒƒm n
activeMatches
ƒƒo |
[
ƒƒ| }
matchNumberƒƒ} à
]ƒƒà â
.ƒƒâ ä
playerTwoDataƒƒä ó
,ƒƒó ò!
playerTwoCheckersƒƒô ™
,ƒƒ™ ´
playerNumberƒƒ¨ ∏
)ƒƒ∏ π
;ƒƒπ ∫!
numberActiveMatches
∆∆ 
--
∆∆ !
;
∆∆! "
activeMatches
«« 
.
«« 
RemoveAt
«« "
(
««" #
matchNumber
««# .
)
««. /
;
««/ 0
int
…… 
listPosition
…… 
;
…… 
for
ÀÀ 
(
ÀÀ 
listPosition
ÀÀ 
=
ÀÀ 
matchNumber
ÀÀ  +
;
ÀÀ+ ,
listPosition
ÀÀ- 9
<
ÀÀ: ;
activeMatches
ÀÀ< I
.
ÀÀI J
Count
ÀÀJ O
;
ÀÀO P
listPosition
ÀÀQ ]
++
ÀÀ] _
)
ÀÀ_ `
{
ÃÃ 
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
matchActiveNumber
ÕÕ, =
--
ÕÕ= ?
;
ÕÕ? @
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
playerOneCallback
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
ŒŒ~ 
activeMatches
œœ 
[
œœ 
listPosition
œœ *
]
œœ* +
.
œœ+ ,
playerTwoCallback
œœ, =
.
œœ= >
UpdateMatchNumber
œœ> O
(
œœO P
activeMatches
œœP ]
[
œœ] ^
listPosition
œœ^ j
]
œœj k
.
œœk l
matchActiveNumber
œœl }
)
œœ} ~
;
œœ~ 
}
–– 
}
—— 	
public
”” 
void
”” 
SendGameMessage
”” #
(
””# $
int
””$ '
playerNumber
””( 4
,
””4 5
string
””6 <
message
””= D
,
””D E
int
””F I
matchNumber
””J U
)
””U V
{
‘‘ 	
if
’’ 
(
’’ 
playerNumber
’’ 
==
’’ 

PLAYER_ONE
’’  *
)
’’* +
{
÷÷ 
activeMatches
◊◊ 
[
◊◊ 
matchNumber
◊◊ )
]
◊◊) *
.
◊◊* +
playerTwoCallback
◊◊+ <
.
◊◊< = 
RecieveGameMessage
◊◊= O
(
◊◊O P
message
◊◊P W
,
◊◊W X

PLAYER_ONE
◊◊Y c
)
◊◊c d
;
◊◊d e
}
ÿÿ 
else
ŸŸ 
{
⁄⁄ 
activeMatches
€€ 
[
€€ 
matchNumber
€€ )
]
€€) *
.
€€* +
playerOneCallback
€€+ <
.
€€< = 
RecieveGameMessage
€€= O
(
€€O P
message
€€P W
,
€€W X

PLAYER_TWO
€€X b
)
€€b c
;
€€c d
}
‹‹ 
}
›› 	
public
ﬂﬂ 
void
ﬂﬂ 
ReportPlayer
ﬂﬂ  
(
ﬂﬂ  !
int
ﬂﬂ! $#
playerNumberReporting
ﬂﬂ% :
,
ﬂﬂ: ;
int
ﬂﬂ< ?
matchNumber
ﬂﬂ@ K
,
ﬂﬂK L
string
ﬂﬂM S

reportText
ﬂﬂT ^
)
ﬂﬂ^ _
{
‡‡ 	
int
·· 
reportResult
·· 
;
·· 
ReportSaveResult
‚‚ 
reportSaveResult
‚‚ -
=
‚‚. /
ReportSaveResult
‚‚0 @
.
‚‚@ A
ERROR_SAVING
‚‚A M
;
‚‚M N
ReportDataManager
„„ 
reportDataManager
„„ /
=
„„0 1
new
„„2 5
ReportDataManager
„„6 G
(
„„G H
)
„„H I
;
„„I J
if
ÂÂ 
(
ÂÂ #
playerNumberReporting
ÂÂ %
==
ÂÂ& (

PLAYER_ONE
ÂÂ) 3
)
ÂÂ3 4
{
ÊÊ 
reportResult
ÁÁ 
=
ÁÁ 
reportDataManager
ÁÁ 0
.
ÁÁ0 1
ReportPlayer
ÁÁ1 =
(
ÁÁ= >
activeMatches
ÁÁ> K
[
ÁÁK L
matchNumber
ÁÁL W
]
ÁÁW X
.
ÁÁX Y
playerTwoData
ÁÁY f
.
ÁÁf g
	IdJugador
ÁÁg p
,
ÁÁp q
activeMatches
ÁÁr 
[ÁÁ Ä
matchNumberÁÁÄ ã
]ÁÁã å
.ÁÁå ç
playerOneDataÁÁç ö
.ÁÁö õ
	IdJugadorÁÁõ §
,ÁÁ§ •

reportTextÁÁ¶ ∞
)ÁÁ∞ ±
;ÁÁ± ≤
}
ËË 
else
ÈÈ 
{
ÍÍ 
reportResult
ÎÎ 
=
ÎÎ 
reportDataManager
ÎÎ 0
.
ÎÎ0 1
ReportPlayer
ÎÎ1 =
(
ÎÎ= >
activeMatches
ÎÎ> K
[
ÎÎK L
matchNumber
ÎÎL W
]
ÎÎW X
.
ÎÎX Y
playerOneData
ÎÎY f
.
ÎÎf g
	IdJugador
ÎÎg p
,
ÎÎp q
activeMatches
ÎÎr 
[ÎÎ Ä
matchNumberÎÎÄ ã
]ÎÎã å
.ÎÎå ç
playerTwoDataÎÎç ö
.ÎÎö õ
	IdJugadorÎÎõ §
,ÎÎ§ •

reportTextÎÎ¶ ∞
)ÎÎ∞ ±
;ÎÎ± ≤
}
ÏÏ 
if
ÓÓ 
(
ÓÓ 
reportResult
ÓÓ 
>
ÓÓ 
$num
ÓÓ  
)
ÓÓ  !
{
ÔÔ 
reportSaveResult
  
=
! "
ReportSaveResult
# 3
.
3 4
SAVED_REPORT
4 @
;
@ A
}
ÒÒ !
GameManagerCallback
ÚÚ 
.
ÚÚ  
ReportResult
ÚÚ  ,
(
ÚÚ, -
reportSaveResult
ÚÚ- =
)
ÚÚ= >
;
ÚÚ> ?
}
ÛÛ 	
public
ıı 
void
ıı 

LeaveMatch
ıı 
(
ıı 
int
ıı "
matchNumber
ıı# .
,
ıı. /
int
ıı0 3
playerNumber
ıı4 @
)
ıı@ A
{
ˆˆ 	
if
˜˜ 
(
˜˜ 
playerNumber
˜˜ 
==
˜˜ 

PLAYER_ONE
˜˜  *
)
˜˜* +
{
¯¯ 
activeMatches
˘˘ 
[
˘˘ 
matchNumber
˘˘ )
]
˘˘) *
.
˘˘* +
playerTwoCallback
˘˘+ <
.
˘˘< =
EndAbandonedGame
˘˘= M
(
˘˘M N
)
˘˘N O
;
˘˘O P
}
˙˙ 
else
˚˚ 
{
¸¸ 
activeMatches
˝˝ 
[
˝˝ 
matchNumber
˝˝ )
]
˝˝) *
.
˝˝* +
playerOneCallback
˝˝+ <
.
˝˝< =
EndAbandonedGame
˝˝= M
(
˝˝M N
)
˝˝N O
;
˝˝O P
}
˛˛ 
}
ˇˇ 	
}
ÄÄ 
public
ÇÇ 

partial
ÇÇ 
class
ÇÇ 
MainService
ÇÇ $
:
ÇÇ% &
IBanManager
ÇÇ' 2
{
ÉÉ !
IBanManagerCallback
ÑÑ 
BanCallback
ÑÑ '
{
ÖÖ 	
get
ÜÜ 
{
áá 
return
àà 
OperationContext
àà '
.
àà' (
Current
àà( /
.
àà/ 0 
GetCallbackChannel
àà0 B
<
ààB C!
IBanManagerCallback
ààC V
>
ààV W
(
ààW X
)
ààX Y
;
ààY Z
}
ââ 
}
ää 	
public
åå 
void
åå 
GetReportData
åå !
(
åå! "
)
åå" #
{
çç 	
AdminReportResult
éé 
result
éé $
=
éé% &
AdminReportResult
éé' 8
.
éé8 9
NO_REPORTS_EXIST
éé9 I
;
ééI J
List
èè 
<
èè 
Dominio
èè 
.
èè 
Reporte
èè  
>
èè  !

reportList
èè" ,
=
èè- .
QueryReportData
èè/ >
(
èè> ?
)
èè? @
;
èè@ A
if
ëë 
(
ëë 

reportList
ëë 
.
ëë 
Count
ëë  
>
ëë! "
$num
ëë# $
)
ëë$ %
{
íí 
result
ìì 
=
ìì 
AdminReportResult
ìì *
.
ìì* +
REPORT_EXISTS
ìì+ 8
;
ìì8 9
BanCallback
ïï 
.
ïï 
ReceiveReportData
ïï -
(
ïï- .

reportList
ïï. 8
)
ïï8 9
;
ïï9 :
}
ññ 
BanCallback
óó 
.
óó &
GetReportDataQueryResult
óó 0
(
óó0 1
result
óó1 7
)
óó7 8
;
óó8 9
}
òò 	
public
öö 
List
öö 
<
öö 
Dominio
öö 
.
öö 
Reporte
öö #
>
öö# $
QueryReportData
öö% 4
(
öö4 5
)
öö5 6
{
õõ 	
List
úú 
<
úú 
Dominio
úú 
.
úú 
Reporte
úú  
>
úú  !"
currentPlayerReports
úú" 6
=
úú7 8
new
úú9 <
List
úú= A
<
úúA B
Dominio
úúB I
.
úúI J
Reporte
úúJ Q
>
úúQ R
(
úúR S
)
úúS T
;
úúT U
ReportDataManager
ùù 
reportDataManager
ùù /
=
ùù0 1
new
ùù2 5
ReportDataManager
ùù6 G
(
ùùG H
)
ùùH I
;
ùùI J 
JugadorDataManager
ûû 
playerManager
ûû ,
=
ûû- .
new
ûû/ 2 
JugadorDataManager
ûû3 E
(
ûûE F
)
ûûF G
;
ûûG H
List
üü 
<
üü 

DataAccess
üü 
.
üü 
Reporte
üü #
>
üü# $
queriedReportList
üü% 6
=
üü7 8
reportDataManager
üü9 J
.
üüJ K
GetReportList
üüK X
(
üüX Y
)
üüY Z
;
üüZ [
if
°° 
(
°° 
reportDataManager
°° !
.
°°! "
GetReportList
°°" /
(
°°/ 0
)
°°0 1
!=
°°2 4
null
°°5 9
)
°°9 :
{
¢¢ 
foreach
££ 
(
££ 

DataAccess
££ #
.
££# $
Reporte
££$ +
playerReport
££, 8
in
££9 ;
queriedReportList
££< M
)
££M N
{
§§ "
currentPlayerReports
•• (
.
••( )
Add
••) ,
(
••, -
new
••- 0
Dominio
••1 8
.
••8 9
Reporte
••9 @
{
¶¶ 
	IdReporte
ßß !
=
ßß" #
playerReport
ßß$ 0
.
ßß0 1
	idReporte
ßß1 :
,
ßß: ;
Acusador
®®  
=
®®! "
playerManager
®®# 0
.
®®0 1!
GetDomainPlayerByID
®®1 D
(
®®D E
playerReport
®®E Q
.
®®Q R

idAcusador
®®R \
)
®®\ ]
,
®®] ^
	Reportado
©© !
=
©©" #
playerManager
©©$ 1
.
©©1 2!
GetDomainPlayerByID
©©2 E
(
©©E F
playerReport
©©F R
.
©©R S
idReportado
©©S ^
)
©©^ _
,
©©_ `
DescripcionAcuso
™™ (
=
™™) *
playerReport
™™+ 7
.
™™7 8
descripcionAcuso
™™8 H
??
™™I K
default
™™L S
(
™™S T
string
™™T Z
)
™™Z [
}
´´ 
)
´´ 
;
´´ 
}
¨¨ 
}
≠≠ 
return
ØØ "
currentPlayerReports
ØØ '
;
ØØ' (
}
∞∞ 	
public
≤≤ 
void
≤≤ 
	BanPlayer
≤≤ 
(
≤≤ 
string
≤≤ $ 
reportedPlayerName
≤≤% 7
)
≤≤7 8
{
≥≥ 	
int
¥¥ 
isPlayerBanned
¥¥ 
=
¥¥  
$num
¥¥! "
;
¥¥" #
const
µµ 
int
µµ 
BAN_SAUCCESSFUL
µµ %
=
µµ& '
$num
µµ( )
;
µµ) *
const
∂∂ 
int
∂∂ 
BAN_ALREADY
∂∂ !
=
∂∂" #
$num
∂∂$ %
;
∂∂% & 
JugadorDataManager
∑∑ 
playerDataManager
∑∑ 0
=
∑∑1 2
new
∑∑3 6 
JugadorDataManager
∑∑7 I
(
∑∑I J
)
∑∑J K
;
∑∑K L
	BanResult
ππ 
	banResult
ππ 
=
ππ  !
	BanResult
ππ" +
.
ππ+ ,
ERROR_BANNING
ππ, 9
;
ππ9 :

DataAccess
∫∫ 
.
∫∫ 
Jugador
∫∫ 
reportedPlayer
∫∫ -
=
∫∫. /
playerDataManager
∫∫0 A
.
∫∫A B!
GetPlayerByNickname
∫∫B U
(
∫∫U V 
reportedPlayerName
∫∫V h
)
∫∫h i
;
∫∫i j
isPlayerBanned
ªª 
=
ªª 
playerDataManager
ªª .
.
ªª. /
	BanPlayer
ªª/ 8
(
ªª8 9
reportedPlayer
ªª9 G
.
ªªG H
apodo
ªªH M
)
ªªM N
;
ªªN O
if
ΩΩ 
(
ΩΩ 
isPlayerBanned
ΩΩ 
==
ΩΩ !
BAN_SAUCCESSFUL
ΩΩ" 1
)
ΩΩ1 2
{
ææ 
MailMessage
øø 
emailContent
øø (
=
øø) *
new
øø+ .
MailMessage
øø/ :
(
øø: ;
)
øø; <
;
øø< =
emailContent
¡¡ 
.
¡¡ 
To
¡¡ 
.
¡¡  
Add
¡¡  #
(
¡¡# $
reportedPlayer
¡¡$ 2
.
¡¡2 3
correoElectronico
¡¡3 D
)
¡¡D E
;
¡¡E F
emailContent
¬¬ 
.
¬¬ 
Subject
¬¬ $
=
¬¬% &
$str
¬¬' O
+
¬¬P Q
reportedPlayer
¬¬R `
.
¬¬` a
apodo
¬¬a f
;
¬¬f g
emailContent
√√ 
.
√√ 
Body
√√ !
=
√√" #
$str
√√$ +
+
√√, -
reportedPlayer
√√. <
.
√√< =
apodo
√√= B
+
√√C D
$str
√√E ~
+√√ Ä
$str
ƒƒ 6
;
ƒƒ6 7
emailContent
≈≈ 
.
≈≈ 
From
≈≈ !
=
≈≈" #
new
≈≈$ '
System
≈≈( .
.
≈≈. /
Net
≈≈/ 2
.
≈≈2 3
Mail
≈≈3 7
.
≈≈7 8
MailAddress
≈≈8 C
(
≈≈C D
$str
≈≈D _
,
≈≈_ `
$str
≈≈a x
)
≈≈x y
;
≈≈y z

SmtpClient
«« 
client
«« !
=
««" #
new
««$ '

SmtpClient
««( 2
{
»» 
Credentials
…… 
=
……  !
new
……" %
System
……& ,
.
……, -
Net
……- 0
.
……0 1
NetworkCredential
……1 B
(
……B C
mailUser
……C K
,
……K L
mailPassword
……M Y
)
……Y Z
,
……Z [
	EnableSsl
   
=
   
true
    $
,
  $ %
Port
ÀÀ 
=
ÀÀ 
$num
ÀÀ 
,
ÀÀ 
Host
ÃÃ 
=
ÃÃ 
$str
ÃÃ +
,
ÃÃ+ ,
}
ÕÕ 
;
ÕÕ 
try
œœ 
{
–– 
client
—— 
.
—— 
Send
—— 
(
——  
emailContent
——  ,
)
——, -
;
——- .
}
““ 
catch
”” 
(
”” 
System
”” 
.
”” 
Net
”” !
.
””! "
Mail
””" &
.
””& '
SmtpException
””' 4
)
””4 5
{
‘‘ 
throw
’’ 
new
’’ 
System
’’ $
.
’’$ %
Net
’’% (
.
’’( )
Mail
’’) -
.
’’- .
SmtpException
’’. ;
(
’’; <
$str’’< í
)’’í ì
;’’ì î
}
÷÷ 
	banResult
ÿÿ 
=
ÿÿ 
	BanResult
ÿÿ %
.
ÿÿ% &
PLAYER_BANNED
ÿÿ& 3
;
ÿÿ3 4
}
ŸŸ 
else
⁄⁄ 
if
⁄⁄ 
(
⁄⁄ 
isPlayerBanned
⁄⁄ "
==
⁄⁄# %
BAN_ALREADY
⁄⁄& 1
)
⁄⁄1 2
{
€€ 
	banResult
‹‹ 
=
‹‹ 
	BanResult
‹‹ %
.
‹‹% &#
PLAYER_ALREADY_BANNED
‹‹& ;
;
‹‹; <
}
›› 
BanCallback
ﬂﬂ 
.
ﬂﬂ 
GetBanResult
ﬂﬂ $
(
ﬂﬂ$ %
	banResult
ﬂﬂ% .
)
ﬂﬂ. /
;
ﬂﬂ/ 0
}
·· 	
}
‚‚ 
}„„ ©

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