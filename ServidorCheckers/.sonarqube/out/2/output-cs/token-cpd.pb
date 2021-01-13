�
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
}!! �/
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
}77 �5
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
}HH �
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
} �
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
�� 
else
�� 
{
�� 
result
�� 
=
�� 
LoginResult
�� $
.
��$ %'
ExisteJugadorNoVerificado
��% >
;
��> ?
PlayerCallback
�� 
.
�� "
GetPlayerLoginResult
�� 3
(
��3 4
result
��4 :
,
��: ;
player
��< B
)
��B C
;
��C D
}
�� 
}
�� 	
public
�� 
void
�� 

SavePlayer
�� 
(
�� 
Dominio
�� &
.
��& '
Jugador
��' .
player
��/ 5
)
��5 6
{
�� 	 
JugadorDataManager
�� 
playerDataManager
�� 0
=
��1 2
new
��3 6 
JugadorDataManager
��7 I
(
��I J
)
��J K
;
��K L

SaveResult
�� 

saveResult
�� !
;
��! "

MailResult
�� 

mailResult
�� !
;
��! "
bool
�� 
nicknameExists
�� 
=
��  !
playerDataManager
��" 3
.
��3 4
CheckNickname
��4 A
(
��A B
player
��B H
.
��H I
Apodo
��I N
)
��N O
;
��O P
if
�� 
(
�� 
!
�� 
nicknameExists
�� 
)
��  
{
�� 
bool
�� 
emailExists
��  
=
��! "
playerDataManager
��# 4
.
��4 5

CheckEmail
��5 ?
(
��? @
player
��@ F
.
��F G
CorreoElectronico
��G X
)
��X Y
;
��Y Z
if
�� 
(
�� 
!
�� 
emailExists
��  
)
��  !
{
�� 
System
�� 
.
�� 
Net
�� 
.
�� 
Mail
�� #
.
��# $
MailMessage
��$ /
mensaje
��0 7
=
��8 9
new
��: =
System
��> D
.
��D E
Net
��E H
.
��H I
Mail
��I M
.
��M N
MailMessage
��N Y
(
��Y Z
)
��Z [
;
��[ \
mensaje
�� 
.
�� 
To
�� 
.
�� 
Add
�� "
(
��" #
player
��# )
.
��) *
CorreoElectronico
��* ;
)
��; <
;
��< =
mensaje
�� 
.
�� 
Subject
�� #
=
��$ %
$str
��& E
+
��F G
player
��H N
.
��N O
Apodo
��O T
;
��T U
mensaje
�� 
.
�� 
Body
��  
=
��! "
$str
��# +
+
��, -
player
��. 4
.
��4 5
Apodo
��5 :
+
��; <
$str
��= t
+
��u v
$str
�� G
+
��H I
player
��J P
.
��P Q
PinConfirmacion
��Q `
;
��` a
mensaje
�� 
.
�� 
From
��  
=
��! "
new
��# &
System
��' -
.
��- .
Net
��. 1
.
��1 2
Mail
��2 6
.
��6 7
MailAddress
��7 B
(
��B C
$str
��C ^
,
��^ _
$str
��` w
)
��w x
;
��x y
System
�� 
.
�� 
Net
�� 
.
�� 
Mail
�� #
.
��# $

SmtpClient
��$ .
cliente
��/ 6
=
��7 8
new
��9 <
System
��= C
.
��C D
Net
��D G
.
��G H
Mail
��H L
.
��L M

SmtpClient
��M W
{
�� 
Credentials
�� #
=
��$ %
new
��& )
System
��* 0
.
��0 1
Net
��1 4
.
��4 5
NetworkCredential
��5 F
(
��F G
mailUser
��G O
,
��O P
mailPassword
��Q ]
)
��] ^
,
��^ _
Port
�� 
=
�� 
$num
�� "
,
��" #
	EnableSsl
�� !
=
��" #
true
��$ (
,
��( )
Host
�� 
=
�� 
$str
�� /
,
��/ 0
}
�� 
;
�� 
try
�� 
{
�� 

mailResult
�� "
=
��# $

MailResult
��% /
.
��/ 0
MailSend
��0 8
;
��8 9
cliente
�� 
.
��  
Send
��  $
(
��$ %
mensaje
��% ,
)
��, -
;
��- .
}
�� 
catch
�� 
(
�� 
System
�� !
.
��! "
Net
��" %
.
��% &
Mail
��& *
.
��* +
SmtpException
��+ 8
)
��8 9
{
�� 

mailResult
�� "
=
��# $

MailResult
��% /
.
��/ 0
	SendError
��0 9
;
��9 :
PlayerCallback
�� &
.
��& '!
GetResendMailResult
��' :
(
��: ;

mailResult
��; E
,
��E F
player
��G M
.
��M N
Apodo
��N S
)
��S T
;
��T U
}
�� 
if
�� 
(
�� 

mailResult
�� "
==
��# %

MailResult
��& 0
.
��0 1
MailSend
��1 9
)
��9 :
{
�� 
SaveNewPlayer
�� %
(
��% &
player
��& ,
)
��, -
;
��- .
}
�� 
}
�� 
else
�� 
{
�� 

saveResult
�� 
=
��  

SaveResult
��! +
.
��+ ,
CorreoExistente
��, ;
;
��; <
PlayerCallback
�� "
.
��" #
GetSaveResult
��# 0
(
��0 1

saveResult
��1 ;
,
��; <
player
��= C
)
��C D
;
��D E
}
�� 
}
�� 
else
�� 
{
�� 

saveResult
�� 
=
�� 

SaveResult
�� '
.
��' (
NicknameExistente
��( 9
;
��9 :
PlayerCallback
�� 
.
�� 
GetSaveResult
�� ,
(
��, -

saveResult
��- 7
,
��7 8
player
��9 ?
)
��? @
;
��@ A
}
�� 
}
�� 	
private
�� 
void
�� 
SaveNewPlayer
�� "
(
��" #
Jugador
��# *
player
��+ 1
)
��1 2
{
�� 	

SaveResult
�� 

saveResult
�� !
;
��! "

DataAccess
�� 
.
�� 
Jugador
�� 
	newPlayer
�� (
=
��) *
new
��+ .

DataAccess
��/ 9
.
��9 :
Jugador
��: A
{
�� 
apodo
�� 
=
�� 
player
�� 
.
�� 
Apodo
�� $
,
��$ %
contrasenia
�� 
=
�� 
hashText
�� &
.
��& '

TextToHash
��' 1
(
��1 2
player
��2 8
.
��8 9
Contrasenia
��9 D
)
��D E
,
��E F
correoElectronico
�� !
=
��" #
player
��$ *
.
��* +
CorreoElectronico
��+ <
,
��< =
status
�� 
=
�� 
ACTIVATION_STATE
�� )
,
��) *#
respuestaConfirmacion
�� %
=
��& '
player
��( .
.
��. /#
RespuestaConfirmacion
��/ D
,
��D E"
preguntaRecuperacion
�� $
=
��% &
player
��' -
.
��- ."
PreguntaRecuperacion
��. B
,
��B C
pinConfirmacion
�� 
=
��  !
player
��" (
.
��( )
PinConfirmacion
��) 8
,
��8 9
	idCreador
�� 
=
�� 
$num
�� 
,
�� 
idioma
�� 
=
�� 
player
�� 
.
��  

IdLenguaje
��  *
}
�� 
;
��  
JugadorDataManager
�� 
jugadorManager
�� -
=
��. /
new
��0 3 
JugadorDataManager
��4 F
(
��F G
)
��G H
;
��H I
int
�� 
columnasAfectadas
�� !
=
��" #
jugadorManager
��$ 2
.
��2 3
SaveNewPlayer
��3 @
(
��@ A
	newPlayer
��A J
)
��J K
;
��K L 
RankingDataManager
�� 
rankingData
�� *
=
��+ ,
new
��- 0 
RankingDataManager
��1 C
(
��C D
)
��D E
;
��E F
rankingData
�� 
.
�� 
NewPlayerRank
�� %
(
��% &
	newPlayer
��& /
)
��/ 0
;
��0 1
if
�� 
(
�� 
columnasAfectadas
�� !
>
��" #
$num
��$ %
)
��% &
{
�� 

saveResult
�� 
=
�� 

SaveResult
�� '
.
��' (
JugadorGuardado
��( 7
;
��7 8
PlayerCallback
�� 
.
�� 
GetSaveResult
�� ,
(
��, -

saveResult
��- 7
,
��7 8
player
��9 ?
)
��? @
;
��@ A
}
�� 
else
�� 
{
�� 

saveResult
�� 
=
�� 

SaveResult
�� '
.
��' (
ErrorGuardado
��( 5
;
��5 6
PlayerCallback
�� 
.
�� 
GetSaveResult
�� ,
(
��, -

saveResult
��- 7
,
��7 8
player
��9 ?
)
��? @
;
��@ A
}
�� 
}
�� 	
public
�� 
void
�� 
VerifyPlayer
��  
(
��  !
Dominio
��! (
.
��( )
Jugador
��) 0
player
��1 7
)
��7 8
{
�� 	 
VerificationResult
�� 
	resultado
�� (
=
��) * 
VerificationResult
��+ =
.
��= >
NoExisteJugador
��> M
;
��M N 
JugadorDataManager
�� 
jugadorManager
�� -
=
��. /
new
��0 3 
JugadorDataManager
��4 F
(
��F G
)
��G H
;
��H I
if
�� 
(
�� 
jugadorManager
�� 
.
�� 
CheckNickname
�� ,
(
��, -
player
��- 3
.
��3 4
Apodo
��4 9
)
��9 :
)
��: ;
{
�� 
if
�� 
(
�� 
jugadorManager
�� "
.
��" #
PinCorrecto
��# .
(
��. /
player
��/ 5
.
��5 6
Apodo
��6 ;
,
��; <
player
��= C
.
��C D
PinConfirmacion
��D S
)
��S T
)
��T U
{
�� 
int
�� 
result
�� 
=
��  
jugadorManager
��! /
.
��/ 0
VerifyNewPlayer
��0 ?
(
��? @
new
��@ C

DataAccess
��D N
.
��N O
Jugador
��O V
{
�� 
apodo
�� 
=
�� 
player
��  &
.
��& '
Apodo
��' ,
,
��, -
pinConfirmacion
�� '
=
��( )
player
��* 0
.
��0 1
PinConfirmacion
��1 @
,
��@ A
}
�� 
)
�� 
;
�� 
if
�� 
(
�� 
result
�� 
>
��  
$num
��! "
)
��" #
{
�� 
	resultado
�� !
=
��" # 
VerificationResult
��$ 6
.
��6 7"
VerificacionExistosa
��7 K
;
��K L
}
�� 
}
�� 
else
�� 
{
�� 
	resultado
�� 
=
��  
VerificationResult
��  2
.
��2 3
PinIncorrecto
��3 @
;
��@ A
}
�� 
}
�� 
else
�� 
{
�� 
	resultado
�� 
=
��  
VerificationResult
�� .
.
��. /
NoExisteJugador
��/ >
;
��> ?
}
�� 
PlayerCallback
�� 
.
�� 
GetVerifyResult
�� *
(
��* +
	resultado
��+ 4
)
��4 5
;
��5 6
}
�� 	
public
�� 
void
�� 
SendMail
�� 
(
�� 
Jugador
�� $
player
��% +
)
��+ ,
{
�� 	

MailResult
�� 
mailSuccesResult
�� '
;
��' (
System
�� 
.
�� 
Net
�� 
.
�� 
Mail
�� 
.
�� 
MailMessage
�� '
mailMesagge
��( 3
=
��4 5
new
��6 9
System
��: @
.
��@ A
Net
��A D
.
��D E
Mail
��E I
.
��I J
MailMessage
��J U
(
��U V
)
��V W
;
��W X
mailMesagge
�� 
.
�� 
To
�� 
.
�� 
Add
�� 
(
�� 
player
�� %
.
��% &
CorreoElectronico
��& 7
)
��7 8
;
��8 9
mailMesagge
�� 
.
�� 
Subject
�� 
=
��  !
$str
��" A
+
��B C
player
��D J
.
��J K
Apodo
��K P
;
��P Q
mailMesagge
�� 
.
�� 
Body
�� 
=
�� 
$str
�� '
+
��( )
player
��* 0
.
��0 1
Apodo
��1 6
+
��7 8
$str
��9 p
+
��q r
$str
�� ?
+
��@ A
player
��B H
.
��H I
PinConfirmacion
��I X
;
��X Y
mailMesagge
�� 
.
�� 
From
�� 
=
�� 
new
�� "
System
��# )
.
��) *
Net
��* -
.
��- .
Mail
��. 2
.
��2 3
MailAddress
��3 >
(
��> ?
$str
��? Z
,
��Z [
$str
��\ s
)
��s t
;
��t u
System
�� 
.
�� 
Net
�� 
.
�� 
Mail
�� 
.
�� 

SmtpClient
�� &
client
��' -
=
��. /
new
��0 3
System
��4 :
.
��: ;
Net
��; >
.
��> ?
Mail
��? C
.
��C D

SmtpClient
��D N
{
�� 
Credentials
�� 
=
�� 
new
�� !
System
��" (
.
��( )
Net
��) ,
.
��, -
NetworkCredential
��- >
(
��> ?
mailUser
��? G
,
��G H
mailPassword
��I U
)
��U V
,
��V W
Port
�� 
=
�� 
$num
�� 
,
�� 
	EnableSsl
�� 
=
�� 
true
��  
,
��  !
Host
�� 
=
�� 
$str
�� '
,
��' (
}
�� 
;
�� 
try
�� 
{
�� 
client
�� 
.
�� 
Send
�� 
(
�� 
mailMesagge
�� '
)
��' (
;
��( )
mailSuccesResult
��  
=
��! "

MailResult
��# -
.
��- .
MailSend
��. 6
;
��6 7
PlayerCallback
�� 
.
�� !
GetResendMailResult
�� 2
(
��2 3
mailSuccesResult
��3 C
,
��C D
player
��E K
.
��K L
Apodo
��L Q
)
��Q R
;
��R S
}
�� 
catch
�� 
(
�� 
System
�� 
.
�� 
Net
�� 
.
�� 
Mail
�� "
.
��" #
SmtpException
��# 0
)
��0 1
{
�� 
mailSuccesResult
��  
=
��! "

MailResult
��# -
.
��- .
	SendError
��. 7
;
��7 8
PlayerCallback
�� 
.
�� !
GetResendMailResult
�� 2
(
��2 3
mailSuccesResult
��3 C
,
��C D
player
��E K
.
��K L
Apodo
��L Q
)
��Q R
;
��R S
}
�� 
}
�� 	
public
�� 
void
��  
PasswordForgotMail
�� &
(
��& '
string
��' -
actualNickname
��. <
)
��< =
{
�� 	 
JugadorDataManager
�� 
jugadorManager
�� -
=
��. /
new
��0 3 
JugadorDataManager
��4 F
(
��F G
)
��G H
;
��H I

MailResult
�� 
mailSuccesResult
�� '
;
��' (
string
�� 
securityQuestion
�� #
=
��$ %
$str
��& )
;
��) *
if
�� 
(
�� 
jugadorManager
�� 
.
�� 
CheckNickname
�� ,
(
��, -
actualNickname
��- ;
)
��; <
)
��< =
{
�� 

DataAccess
�� 
.
�� 
Jugador
�� "
player
��# )
=
��* +
jugadorManager
��, :
.
��: ;!
ChangePinByNickname
��; N
(
��N O
actualNickname
��O ]
)
��] ^
;
��^ _
securityQuestion
��  
=
��! "
player
��# )
.
��) *"
preguntaRecuperacion
��* >
;
��> ?
System
�� 
.
�� 
Net
�� 
.
�� 
Mail
�� 
.
��  
MailMessage
��  +
mailMesagge
��, 7
=
��8 9
new
��: =
System
��> D
.
��D E
Net
��E H
.
��H I
Mail
��I M
.
��M N
MailMessage
��N Y
(
��Y Z
)
��Z [
;
��[ \
mailMesagge
�� 
.
�� 
To
�� 
.
�� 
Add
�� "
(
��" #
player
��# )
.
��) *
correoElectronico
��* ;
)
��; <
;
��< =
mailMesagge
�� 
.
�� 
Subject
�� #
=
��$ %
$str
��& K
+
��L M
player
��N T
.
��T U
apodo
��U Z
;
��Z [
mailMesagge
�� 
.
�� 
Body
��  
=
��! "
$str
��# *
+
��+ ,
player
��- 3
.
��3 4
apodo
��4 9
+
��: ;
$str
��< j
+
��k l
$str
�� \
+
��] ^
player
��_ e
.
��e f
pinConfirmacion
��f u
;
��u v
mailMesagge
�� 
.
�� 
From
��  
=
��! "
new
��# &
System
��' -
.
��- .
Net
��. 1
.
��1 2
Mail
��2 6
.
��6 7
MailAddress
��7 B
(
��B C
$str
��C ^
,
��^ _
$str
��` w
)
��w x
;
��x y
System
�� 
.
�� 
Net
�� 
.
�� 
Mail
�� 
.
��  

SmtpClient
��  *
client
��+ 1
=
��2 3
new
��4 7
System
��8 >
.
��> ?
Net
��? B
.
��B C
Mail
��C G
.
��G H

SmtpClient
��H R
{
�� 
Credentials
�� 
=
��  !
new
��" %
System
��& ,
.
��, -
Net
��- 0
.
��0 1
NetworkCredential
��1 B
(
��B C
mailUser
��C K
,
��K L
mailPassword
��M Y
)
��Y Z
,
��Z [
Port
�� 
=
�� 
$num
�� 
,
�� 
	EnableSsl
�� 
=
�� 
true
��  $
,
��$ %
Host
�� 
=
�� 
$str
�� +
,
��+ ,
}
�� 
;
�� 
try
�� 
{
�� 
client
�� 
.
�� 
Send
�� 
(
��  
mailMesagge
��  +
)
��+ ,
;
��, -
mailSuccesResult
�� $
=
��% &

MailResult
��' 1
.
��1 2
MailSend
��2 :
;
��: ;
PlayerCallback
�� "
.
��" #
GetMailResult
��# 0
(
��0 1
mailSuccesResult
��1 A
,
��A B
actualNickname
��C Q
,
��Q R
securityQuestion
��S c
)
��c d
;
��d e
}
�� 
catch
�� 
(
�� 
System
�� 
.
�� 
Net
�� !
.
��! "
Mail
��" &
.
��& '
SmtpException
��' 4
)
��4 5
{
�� 
mailSuccesResult
�� $
=
��% &

MailResult
��' 1
.
��1 2
	SendError
��2 ;
;
��; <
PlayerCallback
�� "
.
��" #
GetMailResult
��# 0
(
��0 1
mailSuccesResult
��1 A
,
��A B
actualNickname
��C Q
,
��Q R
securityQuestion
��S c
)
��c d
;
��d e
}
�� 
}
�� 
else
�� 
{
�� 
mailSuccesResult
��  
=
��! "

MailResult
��# -
.
��- .
UnknownPlayer
��. ;
;
��; <
PlayerCallback
�� 
.
�� 
GetMailResult
�� ,
(
��, -
mailSuccesResult
��- =
,
��= >
actualNickname
��? M
,
��M N
securityQuestion
��O _
)
��_ `
;
��` a
}
�� 
}
�� 	
public
�� 
void
�� 
	VerifyPin
�� 
(
�� 
string
�� $
actualNickname
��% 3
,
��3 4
string
��5 ;
	playerPin
��< E
,
��E F
string
��G M

answerText
��N X
)
��X Y
{
�� 	
	PinResult
�� 
	pinResult
�� 
=
��  !
	PinResult
��" +
.
��+ ,

UnknownPin
��, 6
;
��6 7
if
�� 
(
��  
jugadorDataManager
�� "
.
��" #
PinCorrecto
��# .
(
��. /
actualNickname
��/ =
,
��= >
	playerPin
��? H
)
��H I
)
��I J
{
�� 
if
�� 
(
��  
jugadorDataManager
�� &
.
��& '
CorrectAnswer
��' 4
(
��4 5
actualNickname
��5 C
,
��C D

answerText
��E O
)
��O P
)
��P Q
{
�� 
	pinResult
�� 
=
�� 
	PinResult
��  )
.
��) *
VerifiedPin
��* 5
;
��5 6
}
�� 
else
�� 
{
�� 
	pinResult
�� 
=
�� 
	PinResult
��  )
.
��) *
WrongAnswer
��* 5
;
��5 6
}
�� 
}
�� 
PlayerCallback
�� 
.
�� 
GetPinResult
�� '
(
��' (
	pinResult
��( 1
,
��1 2
actualNickname
��3 A
)
��A B
;
��B C
}
�� 	
public
�� 
void
�� 
ChangePassword
�� "
(
��" #
string
��# )
userNickname
��* 6
,
��6 7
string
��8 >
password
��? G
)
��G H
{
�� 	"
PasswordChangeResult
��  
changeResult
��! -
=
��. /"
PasswordChangeResult
��0 D
.
��D E
ErrorChanging
��E R
;
��R S
if
�� 
(
��  
jugadorDataManager
�� "
.
��" #
CheckNickname
��# 0
(
��0 1
userNickname
��1 =
)
��= >
)
��> ?
{
�� 
string
�� 
newPassword
�� "
=
��# $
hashText
��% -
.
��- .

TextToHash
��. 8
(
��8 9
password
��9 A
)
��A B
;
��B C
int
�� 
resultChange
��  
=
��! " 
jugadorDataManager
��# 5
.
��5 6
ChangePassword
��6 D
(
��D E
userNickname
��E Q
,
��Q R
newPassword
��S ^
)
��^ _
;
��_ `
if
�� 
(
�� 
resultChange
��  
>
��! "
$num
��# $
)
��$ %
{
�� 
changeResult
��  
=
��! ""
PasswordChangeResult
��# 7
.
��7 8
ChangedPassword
��8 G
;
��G H
}
�� 
}
�� 
PlayerCallback
�� 
.
�� %
GetPasswordChangeResult
�� 2
(
��2 3
changeResult
��3 ?
)
��? @
;
��@ A
}
�� 	
public
�� 
void
�� 
GetActualPlayer
�� #
(
��# $
Jugador
��$ +
actualPlayer
��, 8
)
��8 9
{
�� 	 
DataObtainedResult
��  
dataObtainedResult
�� 1
=
��2 3 
DataObtainedResult
��4 F
.
��F G 
ErrorObtainingData
��G Y
;
��Y Z

DataAccess
�� 
.
�� 
Jugador
�� 
searchedPlayer
�� -
=
��. / 
jugadorDataManager
��0 B
.
��B C!
GetPlayerByNickname
��C V
(
��V W
actualPlayer
��W c
.
��c d
Apodo
��d i
)
��i j
;
��j k
if
�� 
(
�� 
searchedPlayer
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
Dominio
�� 
.
�� 
Jugador
�� "
domainSearchedPlayer
��  4
=
��5 6
new
��7 :
Dominio
��; B
.
��B C
Jugador
��C J
{
�� 
	IdJugador
�� 
=
�� 
searchedPlayer
��  .
.
��. /
	idJugador
��/ 8
,
��8 9
Apodo
�� 
=
�� 
searchedPlayer
�� *
.
��* +
apodo
��+ 0
,
��0 1
CorreoElectronico
�� %
=
��& '
searchedPlayer
��( 6
.
��6 7
correoElectronico
��7 H
,
��H I
Status
�� 
=
�� 
searchedPlayer
�� +
.
��+ ,
status
��, 2
,
��2 3"
PreguntaRecuperacion
�� (
=
��) *
searchedPlayer
��+ 9
.
��9 :"
preguntaRecuperacion
��: N
,
��N O

IdLenguaje
�� 
=
��  
searchedPlayer
��! /
.
��/ 0
idioma
��0 6
}
�� 
;
��  
dataObtainedResult
�� "
=
��# $ 
DataObtainedResult
��% 7
.
��7 8
DataObtained
��8 D
;
��D E
PlayerCallback
�� 
.
�� 
SendActualPlayer
�� /
(
��/ 0 
dataObtainedResult
��0 B
,
��B C"
domainSearchedPlayer
��D X
)
��X Y
;
��Y Z
}
�� 
else
�� 
{
�� 
Dominio
�� 
.
�� 
Jugador
�� 
emptyPlayer
��  +
=
��, -
new
��. 1
Jugador
��2 9
(
��9 :
)
��: ;
;
��; <
PlayerCallback
�� 
.
�� 
SendActualPlayer
�� /
(
��/ 0 
dataObtainedResult
��0 B
,
��B C
emptyPlayer
��D O
)
��O P
;
��P Q
}
�� 
}
�� 	
public
�� 
void
�� 
CloseSession
��  
(
��  !
string
��! '
playerNickname
��( 6
)
��6 7
{
�� 	
playersLoggedIn
�� 
.
�� 
Remove
�� "
(
��" #
playerNickname
��# 1
)
��1 2
;
��2 3
}
�� 	$
IPlayerManagerCallback
�� 
PlayerCallback
�� -
{
�� 	
get
�� 
{
�� 
return
�� 
OperationContext
�� '
.
��' (
Current
��( /
.
��/ 0 
GetCallbackChannel
��0 B
<
��B C$
IPlayerManagerCallback
��C Y
>
��Y Z
(
��Z [
)
��[ \
;
��\ ]
}
�� 
}
�� 	
}
�� 
public
�� 

partial
�� 
class
�� 
MainService
�� $
:
��% &
IRankingManager
��' 6
{
�� 
public
�� 
void
�� 
GetRankingData
�� "
(
��" #
)
��# $
{
�� 	
RankingResult
�� 
result
��  
;
��  !
List
�� 
<
�� 
Dominio
�� 
.
�� 
Ranking
��  
>
��  !
rankings
��" *
=
��+ ,
QueryRankingData
��- =
(
��= >
)
��> ?
;
��? @
if
�� 
(
�� 
rankings
�� 
==
�� 
null
��  
)
��  !
{
�� 
result
�� 
=
�� 
RankingResult
�� &
.
��& '

NO_RANKING
��' 1
;
��1 2
}
�� 
else
�� 
{
�� 
result
�� 
=
�� 
RankingResult
�� &
.
��& '
RANKING_EXISTS
��' 5
;
��5 6
RankingCallback
�� 
.
��   
ReceiveRankingData
��  2
(
��2 3
rankings
��3 ;
)
��; <
;
��< =
}
�� 
RankingCallback
�� 
.
�� 
GetRankingResult
�� ,
(
��, -
result
��- 3
)
��3 4
;
��4 5
}
�� 	
public
�� 
List
�� 
<
�� 
Dominio
�� 
.
�� 
Ranking
�� #
>
��# $
QueryRankingData
��% 5
(
��5 6
)
��6 7
{
�� 	
List
�� 
<
�� 
Dominio
�� 
.
�� 
Ranking
��  
>
��  !
currentRankings
��" 1
=
��2 3
new
��4 7
List
��8 <
<
��< =
Dominio
��= D
.
��D E
Ranking
��E L
>
��L M
(
��M N
)
��N O
;
��O P 
RankingDataManager
�� 
dataManager
�� *
=
��+ ,
new
��- 0 
RankingDataManager
��1 C
(
��C D
)
��D E
;
��E F 
JugadorDataManager
�� 
playerManager
�� ,
=
��- .
new
��/ 2 
JugadorDataManager
��3 E
(
��E F
)
��F G
;
��G H
List
�� 
<
�� 

DataAccess
�� 
.
�� 
Ranking
�� #
>
��# $ 
queriedRankingList
��% 7
=
��8 9
dataManager
��: E
.
��E F
GetRankingList
��F T
(
��T U
)
��U V
;
��V W
if
�� 
(
�� 
dataManager
�� 
.
�� 
GetRankingList
�� *
(
��* +
)
��+ ,
!=
��- /
null
��0 4
)
��4 5
{
�� 
foreach
�� 
(
�� 

DataAccess
�� #
.
��# $
Ranking
��$ +
playerRanking
��, 9
in
��: < 
queriedRankingList
��= O
)
��O P
{
�� 
currentRankings
�� #
.
��# $
Add
��$ '
(
��' (
new
��( +
Dominio
��, 3
.
��3 4
Ranking
��4 ;
{
�� 
	IdRanking
�� !
=
��" #
playerRanking
��$ 1
.
��1 2
	idRanking
��2 ;
,
��; <
Duenio
�� 
=
��  
playerManager
��! .
.
��. /!
GetDomainPlayerByID
��/ B
(
��B C
playerRanking
��C P
.
��P Q
idDuenio
��Q Y
)
��Y Z
,
��Z [
FechaRegistracion
�� )
=
��* +
playerRanking
��, 9
.
��9 :
fechaRegistracion
��: K
??
��L N
default
��O V
(
��V W
DateTime
��W _
)
��_ `
,
��` a
NumeroVictorias
�� '
=
��( )
playerRanking
��* 7
.
��7 8
numeroVictorias
��8 G
??
��H J
default
��K R
(
��R S
int
��S V
)
��V W
,
��W X
PartidasJugadas
�� '
=
��( )
playerRanking
��* 7
.
��7 8
partidasJugadas
��8 G
??
��H J
default
��K R
(
��R S
int
��S V
)
��V W
,
��W X
Rank
�� 
=
�� 
playerRanking
�� ,
.
��, -
rank
��- 1
??
��2 4
default
��5 <
(
��< =
int
��= @
)
��@ A
,
��A B
NumeroPerdidas
�� &
=
��' (
playerRanking
��) 6
.
��6 7
numeroPerdidas
��7 E
??
��F H
default
��I P
(
��P Q
int
��Q T
)
��T U
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 
return
�� 
currentRankings
�� "
;
��" #
}
�� 	%
IRankingManagerCallback
�� 
RankingCallback
��  /
{
�� 	
get
�� 
{
�� 
return
�� 
OperationContext
�� '
.
��' (
Current
��( /
.
��/ 0 
GetCallbackChannel
��0 B
<
��B C%
IRankingManagerCallback
��C Z
>
��Z [
(
��[ \
)
��\ ]
;
��] ^
}
�� 
}
�� 	
}
�� 
public
�� 

partial
�� 
class
�� 
MainService
�� $
:
��% &
IGameManager
��' 3
{
�� 
private
�� 
List
�� 
<
�� 
Match
�� 
>
�� 
activeMatches
�� )
=
��* +
new
��, /
List
��0 4
<
��4 5
Match
��5 :
>
��: ;
(
��; <
)
��< =
;
��= >
private
�� 
int
�� !
numberActiveMatches
�� '
=
��( )
$num
��* +
;
��+ ,
private
�� 
List
�� 
<
�� 
Match
�� 
>
�� "
playersQueuedClassic
�� 0
=
��1 2
new
��3 6
List
��7 ;
<
��; <
Match
��< A
>
��A B
(
��B C
)
��C D
;
��D E
private
�� 
const
�� 
int
�� 

PLAYER_ONE
�� $
=
��% &
$num
��' (
;
��( )
private
�� 
const
�� 
int
�� 

PLAYER_TWO
�� $
=
��% &
$num
��' (
;
��( )"
IGameManagerCallback
�� !
GameManagerCallback
�� 0
{
�� 	
get
�� 
{
�� 
return
�� 
OperationContext
�� '
.
��' (
Current
��( /
.
��/ 0 
GetCallbackChannel
��0 B
<
��B C"
IGameManagerCallback
��C W
>
��W X
(
��X Y
)
��Y Z
;
��Z [
}
�� 
}
�� 	
public
�� 
void
�� 
Player1Turn
�� 
(
��  
Checker
��  '
[
��' (
]
��( )
[
��) *
]
��* +
updateBoardMatrix
��, =
,
��= >
int
��? B
matchNumber
��C N
,
��N O
int
��P S
playerTwoCheckers
��T e
,
��e f
int
��g j
playerOneCheckers
��k |
)
��| }
{
�� 	
try
�� 
{
�� 
activeMatches
�� 
[
�� 
matchNumber
�� )
]
��) *
.
��* +
playerTwoCallback
��+ <
.
��< =
UpdateGameGUI
��= J
(
��J K
updateBoardMatrix
��K \
,
��\ ]
playerTwoCheckers
��^ o
,
��o p 
playerOneCheckers��q �
)��� �
;��� �
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
)
��, -
{
�� 
activeMatches
�� 
[
�� 
matchNumber
�� )
]
��) *
.
��* +
playerOneCallback
��+ <
.
��< =
EndAbandonedGame
��= M
(
��M N
)
��N O
;
��O P
}
�� 
}
�� 	
public
�� 
void
�� 
CreateMatch
�� 
(
��  
Jugador
��  '
currentPlayer
��( 5
,
��5 6
CheckersGameMode
��7 G
gameMode
��H P
)
��P Q
{
�� 	
MatchmakingResult
�� 
matchmakingResult
�� /
;
��/ 0
if
�� 
(
�� "
playersQueuedClassic
�� $
.
��$ %
Count
��% *
>
��+ ,
$num
��- .
)
��. /
{
�� 
Match
�� 
newCompleteGame
�� %
=
��& '"
playersQueuedClassic
��( <
.
��< =
First
��= B
(
��B C
)
��C D
;
��D E"
playersQueuedClassic
�� $
.
��$ %
Remove
��% +
(
��+ ,
newCompleteGame
��, ;
)
��; <
;
��< =
newCompleteGame
�� 
.
��  
playerTwoCallback
��  1
=
��2 3!
GameManagerCallback
��4 G
;
��G H
newCompleteGame
�� 
.
��  
playerTwoData
��  -
=
��. /
currentPlayer
��0 =
;
��= >
newCompleteGame
�� 
.
��  
matchActiveNumber
��  1
=
��2 3!
numberActiveMatches
��4 G
;
��G H"
playersQueuedClassic
�� $
.
��$ %
Sort
��% )
(
��) *
)
��* +
;
��+ ,
matchmakingResult
�� !
=
��" #
MatchmakingResult
��$ 5
.
��5 6
MATCH_FOUND
��6 A
;
��A B
activeMatches
�� 
.
�� 
Add
�� !
(
��! "
newCompleteGame
��" 1
)
��1 2
;
��2 3!
numberActiveMatches
�� #
++
��# %
;
��% &
try
�� 
{
�� 
newCompleteGame
�� #
.
��# $
playerOneCallback
��$ 5
.
��5 6"
GetMatchmakingResult
��6 J
(
��J K
matchmakingResult
��K \
,
��\ ]
newCompleteGame
��^ m
,
��m n

PLAYER_ONE
��o y
)
��y z
;
��z {!
GameManagerCallback
�� '
.
��' ("
GetMatchmakingResult
��( <
(
��< =
matchmakingResult
��= N
,
��N O
newCompleteGame
��P _
,
��_ `

PLAYER_TWO
��a k
)
��k l
;
��l m
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� /
)
��/ 0
{
�� 
matchmakingResult
�� %
=
��& '
MatchmakingResult
��( 9
.
��9 :#
UNABLE_TO_ENTER_MATCH
��: O
;
��O P!
GameManagerCallback
�� '
.
��' ("
GetMatchmakingResult
��( <
(
��< =
matchmakingResult
��= N
,
��N O
newCompleteGame
��P _
,
��_ `

PLAYER_TWO
��a k
)
��k l
;
��l m
activeMatches
�� !
.
��! "
Remove
��" (
(
��( )
newCompleteGame
��) 8
)
��8 9
;
��9 :!
numberActiveMatches
�� '
--
��' )
;
��) *
}
�� 
}
�� 
else
�� 
{
�� 
Match
�� 
newGame
�� 
=
�� 
new
��  #
Match
��$ )
(
��) *
)
��* +
{
�� 
currentPlayer
�� !
=
��" #

PLAYER_ONE
��$ .
,
��. /
playerOneData
�� !
=
��" #
currentPlayer
��$ 1
,
��1 2
playerOneCallback
�� %
=
��& '!
GameManagerCallback
��( ;
,
��; <
}
�� 
;
�� "
playersQueuedClassic
�� $
.
��$ %
Add
��% (
(
��( )
newGame
��) 0
)
��0 1
;
��1 2
matchmakingResult
�� !
=
��" #
MatchmakingResult
��$ 5
.
��5 6
MATCH_NOT_FOUND
��6 E
;
��E F!
GameManagerCallback
�� #
.
��# $"
GetMatchmakingResult
��$ 8
(
��8 9
matchmakingResult
��9 J
,
��J K
newGame
��L S
,
��S T

PLAYER_ONE
��U _
)
��_ `
;
��` a
}
�� 
}
�� 	
public
�� 
void
�� 
Player2Turn
�� 
(
��  
Checker
��  '
[
��' (
]
��( )
[
��) *
]
��* +
updateBoardMatrix
��, =
,
��= >
int
��? B
matchNumber
��C N
,
��N O
int
��P S
playerTwoCheckers
��T e
,
��e f
int
��g j
playerOneCheckers
��k |
)
��| }
{
�� 	
try
�� 
{
�� 
activeMatches
�� 
[
�� 
matchNumber
�� )
]
��) *
.
��* +
playerOneCallback
��+ <
.
��< =
UpdateGameGUI
��= J
(
��J K
updateBoardMatrix
��K \
,
��\ ]
playerTwoCheckers
��^ o
,
��o p 
playerOneCheckers��q �
)��� �
;��� �
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
)
��, -
{
�� 
activeMatches
�� 
[
�� 
matchNumber
�� )
]
��) *
.
��* +
playerTwoCallback
��+ <
.
��< =
EndAbandonedGame
��= M
(
��M N
)
��N O
;
��O P
}
�� 
}
�� 	
public
�� 
void
�� 
FinishPlayerGame
�� $
(
��$ %
int
��% (
matchNumber
��) 4
,
��4 5
int
��6 9
playerNumber
��: F
,
��F G
int
��H K
playerTwoCheckers
��L ]
,
��] ^
int
��_ b
playerOneCheckers
��c t
)
��t u
{
�� 	
if
�� 
(
�� 
playerNumber
�� 
==
�� 

PLAYER_ONE
��  *
)
��* +
{
�� 
activeMatches
�� 
[
�� 
matchNumber
�� )
]
��) *
.
��* +
playerTwoCallback
��+ <
.
��< =

FinishGame
��= G
(
��G H
playerTwoCheckers
��H Y
,
��Y Z
playerOneCheckers
��[ l
)
��l m
;
��m n
}
�� 
else
�� 
{
�� 
activeMatches
�� 
[
�� 
matchNumber
�� )
]
��) *
.
��* +
playerOneCallback
��+ <
.
��< =

FinishGame
��= G
(
��G H
playerTwoCheckers
��H Y
,
��Y Z
playerOneCheckers
��[ l
)
��l m
;
��m n
}
��  
RankingDataManager
��  
rankingDataManager
�� 1
=
��2 3
new
��4 7 
RankingDataManager
��8 J
(
��J K
)
��K L
;
��L M 
rankingDataManager
�� 
.
��  
UpdateMatchResults
�� 1
(
��1 2
activeMatches
��2 ?
[
��? @
matchNumber
��@ K
]
��K L
.
��L M
playerOneData
��M Z
,
��Z [
playerOneCheckers
��\ m
,
��m n
activeMatches
��o |
[
��| }
matchNumber��} �
]��� �
.��� �
playerTwoData��� �
,��� �!
playerTwoCheckers��� �
,��� �
playerNumber��� �
)��� �
;��� �!
numberActiveMatches
�� 
--
�� !
;
��! "
activeMatches
�� 
.
�� 
RemoveAt
�� "
(
��" #
matchNumber
��# .
)
��. /
;
��/ 0
int
�� 
listPosition
�� 
;
�� 
for
�� 
(
�� 
listPosition
�� 
=
�� 
matchNumber
��  +
;
��+ ,
listPosition
��- 9
<
��: ;
activeMatches
��< I
.
��I J
Count
��J O
;
��O P
listPosition
��Q ]
++
��] _
)
��_ `
{
�� 
activeMatches
�� 
[
�� 
listPosition
�� *
]
��* +
.
��+ ,
matchActiveNumber
��, =
--
��= ?
;
��? @
activeMatches
�� 
[
�� 
listPosition
�� *
]
��* +
.
��+ ,
playerOneCallback
��, =
.
��= >
UpdateMatchNumber
��> O
(
��O P
activeMatches
��P ]
[
��] ^
listPosition
��^ j
]
��j k
.
��k l
matchActiveNumber
��l }
)
��} ~
;
��~ 
activeMatches
�� 
[
�� 
listPosition
�� *
]
��* +
.
��+ ,
playerTwoCallback
��, =
.
��= >
UpdateMatchNumber
��> O
(
��O P
activeMatches
��P ]
[
��] ^
listPosition
��^ j
]
��j k
.
��k l
matchActiveNumber
��l }
)
��} ~
;
��~ 
}
�� 
}
�� 	
public
�� 
void
�� 
SendGameMessage
�� #
(
��# $
int
��$ '
playerNumber
��( 4
,
��4 5
string
��6 <
message
��= D
,
��D E
int
��F I
matchNumber
��J U
)
��U V
{
�� 	
if
�� 
(
�� 
playerNumber
�� 
==
�� 

PLAYER_ONE
��  *
)
��* +
{
�� 
activeMatches
�� 
[
�� 
matchNumber
�� )
]
��) *
.
��* +
playerTwoCallback
��+ <
.
��< = 
RecieveGameMessage
��= O
(
��O P
message
��P W
,
��W X

PLAYER_ONE
��Y c
)
��c d
;
��d e
}
�� 
else
�� 
{
�� 
activeMatches
�� 
[
�� 
matchNumber
�� )
]
��) *
.
��* +
playerOneCallback
��+ <
.
��< = 
RecieveGameMessage
��= O
(
��O P
message
��P W
,
��W X

PLAYER_TWO
��X b
)
��b c
;
��c d
}
�� 
}
�� 	
public
�� 
void
�� 
ReportPlayer
��  
(
��  !
int
��! $#
playerNumberReporting
��% :
,
��: ;
int
��< ?
matchNumber
��@ K
,
��K L
string
��M S

reportText
��T ^
)
��^ _
{
�� 	
int
�� 
reportResult
�� 
;
�� 
ReportSaveResult
�� 
reportSaveResult
�� -
=
��. /
ReportSaveResult
��0 @
.
��@ A
ERROR_SAVING
��A M
;
��M N
ReportDataManager
�� 
reportDataManager
�� /
=
��0 1
new
��2 5
ReportDataManager
��6 G
(
��G H
)
��H I
;
��I J
if
�� 
(
�� #
playerNumberReporting
�� %
==
��& (

PLAYER_ONE
��) 3
)
��3 4
{
�� 
reportResult
�� 
=
�� 
reportDataManager
�� 0
.
��0 1
ReportPlayer
��1 =
(
��= >
activeMatches
��> K
[
��K L
matchNumber
��L W
]
��W X
.
��X Y
playerTwoData
��Y f
.
��f g
	IdJugador
��g p
,
��p q
activeMatches
��r 
[�� �
matchNumber��� �
]��� �
.��� �
playerOneData��� �
.��� �
	IdJugador��� �
,��� �

reportText��� �
)��� �
;��� �
}
�� 
else
�� 
{
�� 
reportResult
�� 
=
�� 
reportDataManager
�� 0
.
��0 1
ReportPlayer
��1 =
(
��= >
activeMatches
��> K
[
��K L
matchNumber
��L W
]
��W X
.
��X Y
playerOneData
��Y f
.
��f g
	IdJugador
��g p
,
��p q
activeMatches
��r 
[�� �
matchNumber��� �
]��� �
.��� �
playerTwoData��� �
.��� �
	IdJugador��� �
,��� �

reportText��� �
)��� �
;��� �
}
�� 
if
�� 
(
�� 
reportResult
�� 
>
�� 
$num
��  
)
��  !
{
�� 
reportSaveResult
��  
=
��! "
ReportSaveResult
��# 3
.
��3 4
SAVED_REPORT
��4 @
;
��@ A
}
�� !
GameManagerCallback
�� 
.
��  
ReportResult
��  ,
(
��, -
reportSaveResult
��- =
)
��= >
;
��> ?
}
�� 	
public
�� 
void
�� 

LeaveMatch
�� 
(
�� 
int
�� "
matchNumber
��# .
,
��. /
int
��0 3
playerNumber
��4 @
)
��@ A
{
�� 	
if
�� 
(
�� 
playerNumber
�� 
==
�� 

PLAYER_ONE
��  *
)
��* +
{
�� 
activeMatches
�� 
[
�� 
matchNumber
�� )
]
��) *
.
��* +
playerTwoCallback
��+ <
.
��< =
EndAbandonedGame
��= M
(
��M N
)
��N O
;
��O P
}
�� 
else
�� 
{
�� 
activeMatches
�� 
[
�� 
matchNumber
�� )
]
��) *
.
��* +
playerOneCallback
��+ <
.
��< =
EndAbandonedGame
��= M
(
��M N
)
��N O
;
��O P
}
�� 
}
�� 	
}
�� 
public
�� 

partial
�� 
class
�� 
MainService
�� $
:
��% &
IBanManager
��' 2
{
�� !
IBanManagerCallback
�� 
BanCallback
�� '
{
�� 	
get
�� 
{
�� 
return
�� 
OperationContext
�� '
.
��' (
Current
��( /
.
��/ 0 
GetCallbackChannel
��0 B
<
��B C!
IBanManagerCallback
��C V
>
��V W
(
��W X
)
��X Y
;
��Y Z
}
�� 
}
�� 	
public
�� 
void
�� 
GetReportData
�� !
(
��! "
)
��" #
{
�� 	
AdminReportResult
�� 
result
�� $
=
��% &
AdminReportResult
��' 8
.
��8 9
NO_REPORTS_EXIST
��9 I
;
��I J
List
�� 
<
�� 
Dominio
�� 
.
�� 
Reporte
��  
>
��  !

reportList
��" ,
=
��- .
QueryReportData
��/ >
(
��> ?
)
��? @
;
��@ A
if
�� 
(
�� 

reportList
�� 
.
�� 
Count
��  
>
��! "
$num
��# $
)
��$ %
{
�� 
result
�� 
=
�� 
AdminReportResult
�� *
.
��* +
REPORT_EXISTS
��+ 8
;
��8 9
BanCallback
�� 
.
�� 
ReceiveReportData
�� -
(
��- .

reportList
��. 8
)
��8 9
;
��9 :
}
�� 
BanCallback
�� 
.
�� &
GetReportDataQueryResult
�� 0
(
��0 1
result
��1 7
)
��7 8
;
��8 9
}
�� 	
public
�� 
List
�� 
<
�� 
Dominio
�� 
.
�� 
Reporte
�� #
>
��# $
QueryReportData
��% 4
(
��4 5
)
��5 6
{
�� 	
List
�� 
<
�� 
Dominio
�� 
.
�� 
Reporte
��  
>
��  !"
currentPlayerReports
��" 6
=
��7 8
new
��9 <
List
��= A
<
��A B
Dominio
��B I
.
��I J
Reporte
��J Q
>
��Q R
(
��R S
)
��S T
;
��T U
ReportDataManager
�� 
reportDataManager
�� /
=
��0 1
new
��2 5
ReportDataManager
��6 G
(
��G H
)
��H I
;
��I J 
JugadorDataManager
�� 
playerManager
�� ,
=
��- .
new
��/ 2 
JugadorDataManager
��3 E
(
��E F
)
��F G
;
��G H
List
�� 
<
�� 

DataAccess
�� 
.
�� 
Reporte
�� #
>
��# $
queriedReportList
��% 6
=
��7 8
reportDataManager
��9 J
.
��J K
GetReportList
��K X
(
��X Y
)
��Y Z
;
��Z [
if
�� 
(
�� 
reportDataManager
�� !
.
��! "
GetReportList
��" /
(
��/ 0
)
��0 1
!=
��2 4
null
��5 9
)
��9 :
{
�� 
foreach
�� 
(
�� 

DataAccess
�� #
.
��# $
Reporte
��$ +
playerReport
��, 8
in
��9 ;
queriedReportList
��< M
)
��M N
{
�� "
currentPlayerReports
�� (
.
��( )
Add
��) ,
(
��, -
new
��- 0
Dominio
��1 8
.
��8 9
Reporte
��9 @
{
�� 
	IdReporte
�� !
=
��" #
playerReport
��$ 0
.
��0 1
	idReporte
��1 :
,
��: ;
Acusador
��  
=
��! "
playerManager
��# 0
.
��0 1!
GetDomainPlayerByID
��1 D
(
��D E
playerReport
��E Q
.
��Q R

idAcusador
��R \
)
��\ ]
,
��] ^
	Reportado
�� !
=
��" #
playerManager
��$ 1
.
��1 2!
GetDomainPlayerByID
��2 E
(
��E F
playerReport
��F R
.
��R S
idReportado
��S ^
)
��^ _
,
��_ `
DescripcionAcuso
�� (
=
��) *
playerReport
��+ 7
.
��7 8
descripcionAcuso
��8 H
??
��I K
default
��L S
(
��S T
string
��T Z
)
��Z [
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 
return
�� "
currentPlayerReports
�� '
;
��' (
}
�� 	
public
�� 
void
�� 
	BanPlayer
�� 
(
�� 
string
�� $ 
reportedPlayerName
��% 7
)
��7 8
{
�� 	
int
�� 
isPlayerBanned
�� 
=
��  
$num
��! "
;
��" #
const
�� 
int
�� 
BAN_SAUCCESSFUL
�� %
=
��& '
$num
��( )
;
��) *
const
�� 
int
�� 
BAN_ALREADY
�� !
=
��" #
$num
��$ %
;
��% & 
JugadorDataManager
�� 
playerDataManager
�� 0
=
��1 2
new
��3 6 
JugadorDataManager
��7 I
(
��I J
)
��J K
;
��K L
	BanResult
�� 
	banResult
�� 
=
��  !
	BanResult
��" +
.
��+ ,
ERROR_BANNING
��, 9
;
��9 :

DataAccess
�� 
.
�� 
Jugador
�� 
reportedPlayer
�� -
=
��. /
playerDataManager
��0 A
.
��A B!
GetPlayerByNickname
��B U
(
��U V 
reportedPlayerName
��V h
)
��h i
;
��i j
isPlayerBanned
�� 
=
�� 
playerDataManager
�� .
.
��. /
	BanPlayer
��/ 8
(
��8 9
reportedPlayer
��9 G
.
��G H
apodo
��H M
)
��M N
;
��N O
if
�� 
(
�� 
isPlayerBanned
�� 
==
�� !
BAN_SAUCCESSFUL
��" 1
)
��1 2
{
�� 
MailMessage
�� 
emailContent
�� (
=
��) *
new
��+ .
MailMessage
��/ :
(
��: ;
)
��; <
;
��< =
emailContent
�� 
.
�� 
To
�� 
.
��  
Add
��  #
(
��# $
reportedPlayer
��$ 2
.
��2 3
correoElectronico
��3 D
)
��D E
;
��E F
emailContent
�� 
.
�� 
Subject
�� $
=
��% &
$str
��' O
+
��P Q
reportedPlayer
��R `
.
��` a
apodo
��a f
;
��f g
emailContent
�� 
.
�� 
Body
�� !
=
��" #
$str
��$ +
+
��, -
reportedPlayer
��. <
.
��< =
apodo
��= B
+
��C D
$str
��E ~
+�� �
$str
�� 6
;
��6 7
emailContent
�� 
.
�� 
From
�� !
=
��" #
new
��$ '
System
��( .
.
��. /
Net
��/ 2
.
��2 3
Mail
��3 7
.
��7 8
MailAddress
��8 C
(
��C D
$str
��D _
,
��_ `
$str
��a x
)
��x y
;
��y z

SmtpClient
�� 
client
�� !
=
��" #
new
��$ '

SmtpClient
��( 2
{
�� 
Credentials
�� 
=
��  !
new
��" %
System
��& ,
.
��, -
Net
��- 0
.
��0 1
NetworkCredential
��1 B
(
��B C
mailUser
��C K
,
��K L
mailPassword
��M Y
)
��Y Z
,
��Z [
	EnableSsl
�� 
=
�� 
true
��  $
,
��$ %
Port
�� 
=
�� 
$num
�� 
,
�� 
Host
�� 
=
�� 
$str
�� +
,
��+ ,
}
�� 
;
�� 
try
�� 
{
�� 
client
�� 
.
�� 
Send
�� 
(
��  
emailContent
��  ,
)
��, -
;
��- .
}
�� 
catch
�� 
(
�� 
System
�� 
.
�� 
Net
�� !
.
��! "
Mail
��" &
.
��& '
SmtpException
��' 4
)
��4 5
{
�� 
throw
�� 
new
�� 
System
�� $
.
��$ %
Net
��% (
.
��( )
Mail
��) -
.
��- .
SmtpException
��. ;
(
��; <
$str��< �
)��� �
;��� �
}
�� 
	banResult
�� 
=
�� 
	BanResult
�� %
.
��% &
PLAYER_BANNED
��& 3
;
��3 4
}
�� 
else
�� 
if
�� 
(
�� 
isPlayerBanned
�� "
==
��# %
BAN_ALREADY
��& 1
)
��1 2
{
�� 
	banResult
�� 
=
�� 
	BanResult
�� %
.
��% &#
PLAYER_ALREADY_BANNED
��& ;
;
��; <
}
�� 
BanCallback
�� 
.
�� 
GetBanResult
�� $
(
��$ %
	banResult
��% .
)
��. /
;
��/ 0
}
�� 	
}
�� 
}�� �

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
} �
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
]##) *�$
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