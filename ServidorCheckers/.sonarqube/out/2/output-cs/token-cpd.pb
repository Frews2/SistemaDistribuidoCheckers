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
}!! ˘*
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
} 
[ 
ServiceContract 
] 
public 

	interface  
IGameManagerCallback )
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void   
UpdateGameGUI   
(   
Checker   "
[  " #
]  # $
[  $ %
]  % &
updateBoardMatrix  ' 8
,  8 9
int  : =
playerTwoCheckers  > O
,  O P
int  Q T
playerOneCheckers  U f
)  f g
;  g h
["" 	
OperationContract""	 
("" 
IsOneWay"" #
=""$ %
true""& *
)""* +
]""+ ,
void## 

FinishGame## 
(## 
int## 
playerTwoCheckers## -
,##- .
int##/ 2
playerOneCheckers##3 D
)##D E
;##E F
[%% 	
OperationContract%%	 
(%% 
IsOneWay%% #
=%%$ %
true%%& *
)%%* +
]%%+ ,
void&&  
GetMatchmakingResult&& !
(&&! "
MatchmakingResult&&" 3
result&&4 :
,&&: ;
Match&&< A
match&&B G
,&&G H
int&&I L
playerNumber&&M Y
)&&Y Z
;&&Z [
[(( 	
OperationContract((	 
((( 
IsOneWay(( #
=(($ %
true((& *
)((* +
]((+ ,
void)) 
UpdateMatchNumber)) 
()) 
int)) "
newMatchNumber))# 1
)))1 2
;))2 3
[++ 	
OperationContract++	 
(++ 
IsOneWay++ #
=++$ %
true++& *
)++* +
]+++ ,
void,, 
RecieveGameMessage,, 
(,,  
string,,  &
message,,' .
,,,. /
int,,/ 2
playerNumber,,3 ?
),,? @
;,,@ A
[.. 	
OperationContract..	 
(.. 
IsOneWay.. #
=..$ %
true..& *
)..* +
]..+ ,
void// 
ReportResult// 
(// 
ReportSaveResult// *
reportSaveResult//+ ;
)//; <
;//< =
}00 
}11 ü0
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
}## 
[%% 
ServiceContract%% 
]%% 
public&& 

	interface&& "
IPlayerManagerCallback&& +
{'' 
[(( 	
OperationContract((	 
((( 
IsOneWay(( #
=(($ %
true((& *
)((* +
]((+ ,
void)) 
GetLoginResult)) 
()) 
LoginResult)) '
resultadoLogin))( 6
,))6 7
Jugador))7 >
player))? E
)))E F
;))F G
[++ 	
OperationContract++	 
(++ 
IsOneWay++ #
=++$ %
true++& *
)++* +
]+++ ,
void,, 
GetSaveResult,, 
(,, 

SaveResult,, %
resultadoGuardado,,& 7
,,,7 8
Jugador,,9 @
player,,A G
),,G H
;,,H I
[.. 	
OperationContract..	 
(.. 
IsOneWay.. #
=..$ %
true..& *
)..* +
]..+ ,
void// 
GetVerifyResult// 
(// 
VerificationResult// /!
resultadoVerificacion//0 E
)//E F
;//F G
[11 	
OperationContract11	 
(11 
IsOneWay11 #
=11$ %
true11& *
)11* +
]11+ ,
void22 
GetResendMailResult22  
(22  !

MailResult22! +
resultadoCorreo22, ;
,22; <
string22= C
actualNickname22D R
)22R S
;22S T
[44 	
OperationContract44	 
(44 
IsOneWay44 #
=44$ %
true44& *
)44* +
]44+ ,
void55 
GetMailResult55 
(55 

MailResult55 %
resultadoCorreo55& 5
,555 6
string557 =
actualNickname55> L
,55L M
string55N T
securityQuestion55U e
)55e f
;55f g
[77 	
OperationContract77	 
(77 
IsOneWay77 #
=77$ %
true77& *
)77* +
]77+ ,
void88 
GetPinResult88 
(88 
	PinResult88 #
verifiedPinResult88$ 5
,885 6
string887 =
playerNickname88> L
)88L M
;88M N
[:: 	
OperationContract::	 
(:: 
IsOneWay:: #
=::$ %
true::& *
)::* +
]::+ ,
void;; #
GetPasswordChangeResult;; $
(;;$ % 
PasswordChangeResult;;% 9!
passwordChangedResult;;: O
);;O P
;;;P Q
[== 	
OperationContract==	 
(== 
IsOneWay== #
===$ %
true==& *
)==* +
]==+ ,
void>> 
SendActualPlayer>> 
(>> 
DataObtainedResult>> 0
dataObtainedResult>>1 C
,>>C D
Dominio>>E L
.>>L M
Jugador>>M T
actualPlayer>>U a
)>>a b
;>>b c
}?? 
}BB ì
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
} Ñˆ
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
IPlayerManagerCallback  # 9
>  9 :
playersLoggedIn  ; J
=  K L
new  M P

Dictionary  Q [
<  [ \
string  \ b
,  b c"
IPlayerManagerCallback  d z
>  z {
(  { |
)  | }
;  } ~
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
=&&  
LoginResult&&! ,
.&&, -
NoExisteJugador&&- <
;&&< =
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
{++ 
result,, 
=,, 
LoginResult,, (
.,,( )
EsAdmin,,) 0
;,,0 1
Callback.. 
... 
GetLoginResult.. +
(..+ ,
result.., 2
,..2 3
player..4 :
)..: ;
;..; <
}// 
else00 
{11 
result22 
=22 
LoginResult22 (
.22( )
PasswordIncorrecto22) ;
;22; <
Callback44 
.44 
GetLoginResult44 +
(44+ ,
result44, 2
,442 3
player444 :
)44: ;
;44; <
}55 
}66 
else77 
{88 
LoginPlayer99 
(99 
player99 "
)99" #
;99# $
}:: 
};; 	
public== 
void== 
LoginPlayer== 
(==  
Jugador==  '
player==( .
)==. /
{>> 	
LoginResult?? 
result?? 
=??  
LoginResult??! ,
.??, -
NoExisteJugador??- <
;??< =
JugadorDataManager@@ 
jugadorManager@@ -
=@@. /
new@@0 3
JugadorDataManager@@4 F
(@@F G
)@@G H
;@@H I
ifAA 
(AA 
jugadorManagerAA 
.AA 
CheckNicknameAA ,
(AA, -
playerAA- 3
.AA3 4
ApodoAA4 9
)AA9 :
)AA: ;
{BB 
ifCC 
(CC 
jugadorManagerCC "
.CC" #

CheckStateCC# -
(CC- .
playerCC. 4
.CC4 5
ApodoCC5 :
)CC: ;
)CC; <
{DD 
ifEE 
(EE 
jugadorManagerEE &
.EE& '
EsPasswordCorrectoEE' 9
(EE9 :
playerEE: @
.EE@ A
ContraseniaEEA L
,EEL M
playerEEN T
.EET U
ApodoEEU Z
)EEZ [
)EE[ \
{FF 
resultGG 
=GG  
LoginResultGG! ,
.GG, -#
ExisteJugadorVerificadoGG- D
;GGD E

DataAccessHH "
.HH" #
JugadorHH# *
searchedPlayerHH+ 9
=HH: ;
jugadorManagerHH< J
.HHJ K
GetPlayerByNicknameHHK ^
(HH^ _
playerHH_ e
.HHe f
ApodoHHf k
)HHk l
;HHl m
playerII 
.II 

IdLenguajeII )
=II* +
searchedPlayerII, :
.II: ;
idiomaII; A
;IIA B
playerJJ 
.JJ 
	IdJugadorJJ (
=JJ) *
searchedPlayerJJ+ 9
.JJ9 :
	idJugadorJJ: C
;JJC D
playerKK 
.KK 
ContraseniaKK *
=KK+ ,
searchedPlayerKK- ;
.KK; <
contraseniaKK< G
;KKG H
playerLL 
.LL 
CorreoElectronicoLL 0
=LL1 2
searchedPlayerLL3 A
.LLA B
correoElectronicoLLB S
;LLS T
playerMM 
.MM  
PreguntaRecuperacionMM 3
=MM4 5
searchedPlayerMM6 D
.MMD E 
preguntaRecuperacionMME Y
;MMY Z
CallbackOO  
.OO  !
GetLoginResultOO! /
(OO/ 0
resultOO0 6
,OO6 7
playerOO8 >
)OO> ?
;OO? @
}PP 
elseQQ 
{RR 
resultSS 
=SS  
LoginResultSS! ,
.SS, -
PasswordIncorrectoSS- ?
;SS? @
CallbackUU  
.UU  !
GetLoginResultUU! /
(UU/ 0
resultUU0 6
,UU6 7
playerUU8 >
)UU> ?
;UU? @
}VV 
}WW 
elseXX 
{YY 
ifZZ 
(ZZ 
jugadorDataManagerZZ *
.ZZ* +
CheckBannedStateZZ+ ;
(ZZ; <
playerZZ< B
.ZZB C
ApodoZZC H
)ZZH I
)ZZI J
{[[ 
result\\ 
=\\  
LoginResult\\! ,
.\\, -
	EsBaneado\\- 6
;\\6 7
Callback^^  
.^^  !
GetLoginResult^^! /
(^^/ 0
result^^0 6
,^^6 7
player^^8 >
)^^> ?
;^^? @
}__ 
else`` 
{aa 
resultbb 
=bb  
LoginResultbb! ,
.bb, -%
ExisteJugadorNoVerificadobb- F
;bbF G
Callbackdd  
.dd  !
GetLoginResultdd! /
(dd/ 0
resultdd0 6
,dd6 7
playerdd8 >
)dd> ?
;dd? @
}ee 
}gg 
}hh 
elseii 
{jj 
Callbackll 
.ll 
GetLoginResultll '
(ll' (
resultll( .
,ll. /
playerll0 6
)ll6 7
;ll7 8
}mm 
}nn 	
publicpp 
voidpp 

SavePlayerpp 
(pp 
Dominiopp &
.pp& '
Jugadorpp' .
playerpp/ 5
)pp5 6
{qq 	
JugadorDataManagerrr 
playerDataManagerrr 0
=rr1 2
newrr3 6
JugadorDataManagerrr7 I
(rrI J
)rrJ K
;rrK L
inttt 
columnasAfectadastt !
=tt" #
$numtt$ %
;tt% &

SaveResultuu 

saveResultuu !
;uu! "

MailResultvv 

mailResultvv !
=vv" #

MailResultvv$ .
.vv. /
	SendErrorvv/ 8
;vv8 9
boolxx 
nicknameExistsxx 
=xx  !
playerDataManagerxx" 3
.xx3 4
CheckNicknamexx4 A
(xxA B
playerxxB H
.xxH I
ApodoxxI N
)xxN O
;xxO P
ifzz 
(zz 
!zz 
nicknameExistszz 
)zz  
{{{ 
bool|| 
emailExists||  
=||! "
playerDataManager||# 4
.||4 5

CheckEmail||5 ?
(||? @
player||@ F
.||F G
CorreoElectronico||G X
)||X Y
;||Y Z
if~~ 
(~~ 
!~~ 
emailExists~~  
)~~  !
{ 

DataAccess
ÄÄ 
.
ÄÄ 
Jugador
ÄÄ &
	newPlayer
ÄÄ' 0
=
ÄÄ1 2
new
ÄÄ3 6

DataAccess
ÄÄ7 A
.
ÄÄA B
Jugador
ÄÄB I
{
ÅÅ 
apodo
ÇÇ 
=
ÇÇ 
player
ÇÇ  &
.
ÇÇ& '
Apodo
ÇÇ' ,
,
ÇÇ, -
contrasenia
ÉÉ #
=
ÉÉ$ %
hashText
ÉÉ& .
.
ÉÉ. /

TextToHash
ÉÉ/ 9
(
ÉÉ9 :
player
ÉÉ: @
.
ÉÉ@ A
Contrasenia
ÉÉA L
)
ÉÉL M
,
ÉÉM N
correoElectronico
ÑÑ )
=
ÑÑ* +
player
ÑÑ, 2
.
ÑÑ2 3
CorreoElectronico
ÑÑ3 D
,
ÑÑD E
status
ÖÖ 
=
ÖÖ  
ACTIVATION_STATE
ÖÖ! 1
,
ÖÖ1 2#
respuestaConfirmacion
ÜÜ -
=
ÜÜ. /
player
ÜÜ0 6
.
ÜÜ6 7#
RespuestaConfirmacion
ÜÜ7 L
,
ÜÜL M"
preguntaRecuperacion
áá ,
=
áá- .
player
áá/ 5
.
áá5 6"
PreguntaRecuperacion
áá6 J
,
ááJ K
pinConfirmacion
àà '
=
àà( )
player
àà* 0
.
àà0 1
PinConfirmacion
àà1 @
,
àà@ A
	idCreador
ââ !
=
ââ" #
$num
ââ$ %
,
ââ% &
idioma
ää 
=
ää  
player
ää! '
.
ää' (

IdLenguaje
ää( 2
}
ãã 
;
ãã  
JugadorDataManager
çç &
jugadorManager
çç' 5
=
çç6 7
new
çç8 ; 
JugadorDataManager
çç< N
(
ççN O
)
ççO P
;
ççP Q
columnasAfectadas
éé %
=
éé& '
jugadorManager
éé( 6
.
éé6 7
SaveNewPlayer
éé7 D
(
ééD E
	newPlayer
ééE N
)
ééN O
;
ééO P
if
êê 
(
êê 
columnasAfectadas
êê )
>
êê* +
$num
êê, -
)
êê- .
{
ëë 

saveResult
íí "
=
íí# $

SaveResult
íí% /
.
íí/ 0
JugadorGuardado
íí0 ?
;
íí? @
Callback
ìì  
.
ìì  !
GetSaveResult
ìì! .
(
ìì. /

saveResult
ìì/ 9
,
ìì9 :
player
ìì; A
)
ììA B
;
ììB C
System
ïï 
.
ïï 
Net
ïï "
.
ïï" #
Mail
ïï# '
.
ïï' (
MailMessage
ïï( 3
mensaje
ïï4 ;
=
ïï< =
new
ïï> A
System
ïïB H
.
ïïH I
Net
ïïI L
.
ïïL M
Mail
ïïM Q
.
ïïQ R
MailMessage
ïïR ]
(
ïï] ^
)
ïï^ _
;
ïï_ `
mensaje
óó 
.
óó  
To
óó  "
.
óó" #
Add
óó# &
(
óó& '
	newPlayer
óó' 0
.
óó0 1
correoElectronico
óó1 B
)
óóB C
;
óóC D
mensaje
òò 
.
òò  
Subject
òò  '
=
òò( )
$str
òò* O
+
òòP Q
player
òòR X
.
òòX Y
Apodo
òòY ^
;
òò^ _
mensaje
ôô 
.
ôô  
Body
ôô  $
=
ôô% &
$str
ôô' .
+
ôô/ 0
player
ôô1 7
.
ôô7 8
Apodo
ôô8 =
+
ôô> ?
$str
ôô@ l
+
ôôm n
$str
öö S
+
ööT U
	newPlayer
ööV _
.
öö_ `
pinConfirmacion
öö` o
;
ööo p
mensaje
õõ 
.
õõ  
From
õõ  $
=
õõ% &
new
õõ' *
System
õõ+ 1
.
õõ1 2
Net
õõ2 5
.
õõ5 6
Mail
õõ6 :
.
õõ: ;
MailAddress
õõ; F
(
õõF G
$str
õõG b
,
õõb c
$str
õõd {
)
õõ{ |
;
õõ| }
System
ùù 
.
ùù 
Net
ùù "
.
ùù" #
Mail
ùù# '
.
ùù' (

SmtpClient
ùù( 2
cliente
ùù3 :
=
ùù; <
new
ùù= @
System
ùùA G
.
ùùG H
Net
ùùH K
.
ùùK L
Mail
ùùL P
.
ùùP Q

SmtpClient
ùùQ [
{
ûû 
Credentials
üü '
=
üü( )
new
üü* -
System
üü. 4
.
üü4 5
Net
üü5 8
.
üü8 9
NetworkCredential
üü9 J
(
üüJ K
mailUser
üüK S
,
üüS T
mailPassword
üüU a
)
üüa b
,
üüb c
Port
††  
=
††! "
$num
††# &
,
††& '
	EnableSsl
°° %
=
°°& '
true
°°( ,
,
°°, -
Host
¢¢  
=
¢¢! "
$str
¢¢# 3
,
¢¢3 4
}
££ 
;
££ 
try
§§ 
{
•• 
cliente
¶¶ #
.
¶¶# $
Send
¶¶$ (
(
¶¶( )
mensaje
¶¶) 0
)
¶¶0 1
;
¶¶1 2
}
ßß 
catch
®® 
(
®® 
System
®® %
.
®®% &
Net
®®& )
.
®®) *
Mail
®®* .
.
®®. /
SmtpException
®®/ <
)
®®< =
{
©© 
Callback
™™ $
.
™™$ %!
GetResendMailResult
™™% 8
(
™™8 9

mailResult
™™9 C
,
™™C D
player
™™E K
.
™™K L
Apodo
™™L Q
)
™™Q R
;
™™R S
throw
´´ !
new
´´" %
System
´´& ,
.
´´, -
Net
´´- 0
.
´´0 1
Mail
´´1 5
.
´´5 6
SmtpException
´´6 C
(
´´C D
$str´´D Ñ
)´´Ñ Ö
;´´Ö Ü
}
¨¨ 
}
≠≠ 
else
ÆÆ 
{
ØØ 

saveResult
∞∞ "
=
∞∞# $

SaveResult
∞∞% /
.
∞∞/ 0
ErrorGuardado
∞∞0 =
;
∞∞= >
Callback
±±  
.
±±  !
GetSaveResult
±±! .
(
±±. /

saveResult
±±/ 9
,
±±9 :
player
±±; A
)
±±A B
;
±±B C
}
≤≤ 
}
≥≥ 
else
¥¥ 
{
µµ 

saveResult
∂∂ 
=
∂∂  

SaveResult
∂∂! +
.
∂∂+ ,
CorreoExistente
∂∂, ;
;
∂∂; <
Callback
∑∑ 
.
∑∑ 
GetSaveResult
∑∑ *
(
∑∑* +

saveResult
∑∑+ 5
,
∑∑5 6
player
∑∑7 =
)
∑∑= >
;
∑∑> ?
}
∏∏ 
}
ππ 
else
∫∫ 
{
ªª 

saveResult
ºº 
=
ºº 

SaveResult
ºº '
.
ºº' (
NicknameExistente
ºº( 9
;
ºº9 :
Callback
ΩΩ 
.
ΩΩ 
GetSaveResult
ΩΩ &
(
ΩΩ& '

saveResult
ΩΩ' 1
,
ΩΩ1 2
player
ΩΩ3 9
)
ΩΩ9 :
;
ΩΩ: ;
}
ææ 
}
øø 	
public
¡¡ 
void
¡¡ 
VerifyPlayer
¡¡  
(
¡¡  !
Dominio
¡¡! (
.
¡¡( )
Jugador
¡¡) 0
player
¡¡1 7
)
¡¡7 8
{
¬¬ 	 
VerificationResult
√√ 
	resultado
√√ (
=
√√) * 
VerificationResult
√√+ =
.
√√= >
NoExisteJugador
√√> M
;
√√M N 
JugadorDataManager
≈≈ 
jugadorManager
≈≈ -
=
≈≈. /
new
≈≈0 3 
JugadorDataManager
≈≈4 F
(
≈≈F G
)
≈≈G H
;
≈≈H I
if
«« 
(
«« 
jugadorManager
«« 
.
«« 
CheckNickname
«« ,
(
««, -
player
««- 3
.
««3 4
Apodo
««4 9
)
««9 :
)
««: ;
{
»» 
if
…… 
(
…… 
jugadorManager
…… "
.
……" #
PinCorrecto
……# .
(
……. /
player
……/ 5
.
……5 6
Apodo
……6 ;
,
……; <
player
……= C
.
……C D
PinConfirmacion
……D S
)
……S T
)
……T U
{
   
int
ÀÀ 
result
ÀÀ 
=
ÀÀ  
jugadorManager
ÀÀ! /
.
ÀÀ/ 0
VerifyNewPlayer
ÀÀ0 ?
(
ÀÀ? @
new
ÀÀ@ C

DataAccess
ÀÀD N
.
ÀÀN O
Jugador
ÀÀO V
{
ÃÃ 
apodo
ÕÕ 
=
ÕÕ 
player
ÕÕ  &
.
ÕÕ& '
Apodo
ÕÕ' ,
,
ÕÕ, -
pinConfirmacion
ŒŒ '
=
ŒŒ( )
player
ŒŒ* 0
.
ŒŒ0 1
PinConfirmacion
ŒŒ1 @
,
ŒŒ@ A
}
œœ 
)
œœ 
;
œœ 
if
—— 
(
—— 
result
—— 
>
——  
$num
——! "
)
——" #
{
““ 
	resultado
”” !
=
””" # 
VerificationResult
””$ 6
.
””6 7"
VerificacionExistosa
””7 K
;
””K L
}
‘‘ 
}
’’ 
else
÷÷ 
{
◊◊ 
	resultado
ÿÿ 
=
ÿÿ  
VerificationResult
ÿÿ  2
.
ÿÿ2 3
PinIncorrecto
ÿÿ3 @
;
ÿÿ@ A
}
ŸŸ 
}
⁄⁄ 
else
€€ 
{
‹‹ 
	resultado
›› 
=
››  
VerificationResult
›› .
.
››. /
NoExisteJugador
››/ >
;
››> ?
}
ﬁﬁ 
Callback
‡‡ 
.
‡‡ 
GetVerifyResult
‡‡ $
(
‡‡$ %
	resultado
‡‡% .
)
‡‡. /
;
‡‡/ 0
}
·· 	
public
„„ 
void
„„ 
SendMail
„„ 
(
„„ 
Jugador
„„ $
player
„„% +
)
„„+ ,
{
‰‰ 	

MailResult
ÂÂ 
mailSuccesResult
ÂÂ '
;
ÂÂ' (
System
ÁÁ 
.
ÁÁ 
Net
ÁÁ 
.
ÁÁ 
Mail
ÁÁ 
.
ÁÁ 
MailMessage
ÁÁ '
mailMesagge
ÁÁ( 3
=
ÁÁ4 5
new
ÁÁ6 9
System
ÁÁ: @
.
ÁÁ@ A
Net
ÁÁA D
.
ÁÁD E
Mail
ÁÁE I
.
ÁÁI J
MailMessage
ÁÁJ U
(
ÁÁU V
)
ÁÁV W
;
ÁÁW X
mailMesagge
ÈÈ 
.
ÈÈ 
To
ÈÈ 
.
ÈÈ 
Add
ÈÈ 
(
ÈÈ 
player
ÈÈ %
.
ÈÈ% &
CorreoElectronico
ÈÈ& 7
)
ÈÈ7 8
;
ÈÈ8 9
mailMesagge
ÍÍ 
.
ÍÍ 
Subject
ÍÍ 
=
ÍÍ  !
$str
ÍÍ" G
+
ÍÍH I
player
ÍÍJ P
.
ÍÍP Q
Apodo
ÍÍQ V
;
ÍÍV W
mailMesagge
ÎÎ 
.
ÎÎ 
Body
ÎÎ 
=
ÎÎ 
$str
ÎÎ &
+
ÎÎ' (
player
ÎÎ) /
.
ÎÎ/ 0
Apodo
ÎÎ0 5
+
ÎÎ6 7
$str
ÎÎ8 d
+
ÎÎe f
$str
ÏÏ G
+
ÏÏH I
player
ÏÏJ P
.
ÏÏP Q
PinConfirmacion
ÏÏQ `
;
ÏÏ` a
mailMesagge
ÌÌ 
.
ÌÌ 
From
ÌÌ 
=
ÌÌ 
new
ÌÌ "
System
ÌÌ# )
.
ÌÌ) *
Net
ÌÌ* -
.
ÌÌ- .
Mail
ÌÌ. 2
.
ÌÌ2 3
MailAddress
ÌÌ3 >
(
ÌÌ> ?
$str
ÌÌ? Z
,
ÌÌZ [
$str
ÌÌ\ s
)
ÌÌs t
;
ÌÌt u
System
ÔÔ 
.
ÔÔ 
Net
ÔÔ 
.
ÔÔ 
Mail
ÔÔ 
.
ÔÔ 

SmtpClient
ÔÔ &
client
ÔÔ' -
=
ÔÔ. /
new
ÔÔ0 3
System
ÔÔ4 :
.
ÔÔ: ;
Net
ÔÔ; >
.
ÔÔ> ?
Mail
ÔÔ? C
.
ÔÔC D

SmtpClient
ÔÔD N
{
 
Credentials
ÒÒ 
=
ÒÒ 
new
ÒÒ !
System
ÒÒ" (
.
ÒÒ( )
Net
ÒÒ) ,
.
ÒÒ, -
NetworkCredential
ÒÒ- >
(
ÒÒ> ?
mailUser
ÒÒ? G
,
ÒÒG H
mailPassword
ÒÒI U
)
ÒÒU V
,
ÒÒV W
Port
ÚÚ 
=
ÚÚ 
$num
ÚÚ 
,
ÚÚ 
	EnableSsl
ÛÛ 
=
ÛÛ 
true
ÛÛ  
,
ÛÛ  !
Host
ÙÙ 
=
ÙÙ 
$str
ÙÙ '
,
ÙÙ' (
}
ıı 
;
ıı 
try
ˆˆ 
{
˜˜ 
client
¯¯ 
.
¯¯ 
Send
¯¯ 
(
¯¯ 
mailMesagge
¯¯ '
)
¯¯' (
;
¯¯( )
mailSuccesResult
˘˘  
=
˘˘! "

MailResult
˘˘# -
.
˘˘- .
MailSend
˘˘. 6
;
˘˘6 7
Callback
˙˙ 
.
˙˙ !
GetResendMailResult
˙˙ ,
(
˙˙, -
mailSuccesResult
˙˙- =
,
˙˙= >
player
˙˙? E
.
˙˙E F
Apodo
˙˙F K
)
˙˙K L
;
˙˙L M
}
˚˚ 
catch
¸¸ 
(
¸¸ 
System
¸¸ 
.
¸¸ 
Net
¸¸ 
.
¸¸ 
Mail
¸¸ "
.
¸¸" #
SmtpException
¸¸# 0
)
¸¸0 1
{
˝˝ 
mailSuccesResult
˛˛  
=
˛˛! "

MailResult
˛˛# -
.
˛˛- .
	SendError
˛˛. 7
;
˛˛7 8
Callback
ˇˇ 
.
ˇˇ !
GetResendMailResult
ˇˇ ,
(
ˇˇ, -
mailSuccesResult
ˇˇ- =
,
ˇˇ= >
player
ˇˇ? E
.
ˇˇE F
Apodo
ˇˇF K
)
ˇˇK L
;
ˇˇL M
throw
ÄÄ 
new
ÄÄ 
System
ÄÄ  
.
ÄÄ  !
Net
ÄÄ! $
.
ÄÄ$ %
Mail
ÄÄ% )
.
ÄÄ) *
SmtpException
ÄÄ* 7
(
ÄÄ7 8
$str
ÄÄ8 x
)
ÄÄx y
;
ÄÄy z
}
ÅÅ 
}
ÇÇ 	
public
ÑÑ 
void
ÑÑ  
PasswordForgotMail
ÑÑ &
(
ÑÑ& '
string
ÑÑ' -
actualNickname
ÑÑ. <
)
ÑÑ< =
{
ÖÖ 	 
JugadorDataManager
ÜÜ 
jugadorManager
ÜÜ -
=
ÜÜ. /
new
ÜÜ0 3 
JugadorDataManager
ÜÜ4 F
(
ÜÜF G
)
ÜÜG H
;
ÜÜH I

MailResult
áá 
mailSuccesResult
áá '
;
áá' (
string
àà 
securityQuestion
àà #
=
àà$ %
$str
àà& )
;
àà) *
if
ää 
(
ää 
jugadorManager
ää 
.
ää 
CheckNickname
ää ,
(
ää, -
actualNickname
ää- ;
)
ää; <
)
ää< =
{
ãã 

DataAccess
åå 
.
åå 
Jugador
åå "
player
åå# )
=
åå* +
jugadorManager
åå, :
.
åå: ;!
ChangePinByNickname
åå; N
(
ååN O
actualNickname
ååO ]
)
åå] ^
;
åå^ _
securityQuestion
çç  
=
çç! "
player
çç# )
.
çç) *"
preguntaRecuperacion
çç* >
;
çç> ?
System
èè 
.
èè 
Net
èè 
.
èè 
Mail
èè 
.
èè  
MailMessage
èè  +
mailMesagge
èè, 7
=
èè8 9
new
èè: =
System
èè> D
.
èèD E
Net
èèE H
.
èèH I
Mail
èèI M
.
èèM N
MailMessage
èèN Y
(
èèY Z
)
èèZ [
;
èè[ \
mailMesagge
ëë 
.
ëë 
To
ëë 
.
ëë 
Add
ëë "
(
ëë" #
player
ëë# )
.
ëë) *
correoElectronico
ëë* ;
)
ëë; <
;
ëë< =
mailMesagge
íí 
.
íí 
Subject
íí #
=
íí$ %
$str
íí& K
+
ííL M
player
ííN T
.
ííT U
apodo
ííU Z
;
ííZ [
mailMesagge
ìì 
.
ìì 
Body
ìì  
=
ìì! "
$str
ìì# *
+
ìì+ ,
player
ìì- 3
.
ìì3 4
apodo
ìì4 9
+
ìì: ;
$str
ìì< j
+
ììk l
$str
îî \
+
îî] ^
player
îî_ e
.
îîe f
pinConfirmacion
îîf u
;
îîu v
mailMesagge
ïï 
.
ïï 
From
ïï  
=
ïï! "
new
ïï# &
System
ïï' -
.
ïï- .
Net
ïï. 1
.
ïï1 2
Mail
ïï2 6
.
ïï6 7
MailAddress
ïï7 B
(
ïïB C
$str
ïïC ^
,
ïï^ _
$str
ïï` w
)
ïïw x
;
ïïx y
System
óó 
.
óó 
Net
óó 
.
óó 
Mail
óó 
.
óó  

SmtpClient
óó  *
client
óó+ 1
=
óó2 3
new
óó4 7
System
óó8 >
.
óó> ?
Net
óó? B
.
óóB C
Mail
óóC G
.
óóG H

SmtpClient
óóH R
{
òò 
Credentials
ôô 
=
ôô  !
new
ôô" %
System
ôô& ,
.
ôô, -
Net
ôô- 0
.
ôô0 1
NetworkCredential
ôô1 B
(
ôôB C
mailUser
ôôC K
,
ôôK L
mailPassword
ôôM Y
)
ôôY Z
,
ôôZ [
Port
öö 
=
öö 
$num
öö 
,
öö 
	EnableSsl
õõ 
=
õõ 
true
õõ  $
,
õõ$ %
Host
úú 
=
úú 
$str
úú +
,
úú+ ,
}
ùù 
;
ùù 
try
ûû 
{
üü 
client
†† 
.
†† 
Send
†† 
(
††  
mailMesagge
††  +
)
††+ ,
;
††, -
mailSuccesResult
°° $
=
°°% &

MailResult
°°' 1
.
°°1 2
MailSend
°°2 :
;
°°: ;
Callback
¢¢ 
.
¢¢ 
GetMailResult
¢¢ *
(
¢¢* +
mailSuccesResult
¢¢+ ;
,
¢¢; <
actualNickname
¢¢= K
,
¢¢K L
securityQuestion
¢¢M ]
)
¢¢] ^
;
¢¢^ _
}
££ 
catch
§§ 
(
§§ 
System
§§ 
.
§§ 
Net
§§ !
.
§§! "
Mail
§§" &
.
§§& '
SmtpException
§§' 4
)
§§4 5
{
•• 
mailSuccesResult
¶¶ $
=
¶¶% &

MailResult
¶¶' 1
.
¶¶1 2
	SendError
¶¶2 ;
;
¶¶; <
Callback
ßß 
.
ßß 
GetMailResult
ßß *
(
ßß* +
mailSuccesResult
ßß+ ;
,
ßß; <
actualNickname
ßß= K
,
ßßK L
securityQuestion
ßßM ]
)
ßß] ^
;
ßß^ _
throw
®® 
new
®® 
System
®® $
.
®®$ %
Net
®®% (
.
®®( )
Mail
®®) -
.
®®- .
SmtpException
®®. ;
(
®®; <
$str
®®< |
)
®®| }
;
®®} ~
}
©© 
}
™™ 
else
´´ 
{
¨¨ 
mailSuccesResult
≠≠  
=
≠≠! "

MailResult
≠≠# -
.
≠≠- .
UnknownPlayer
≠≠. ;
;
≠≠; <
Callback
ÆÆ 
.
ÆÆ 
GetMailResult
ÆÆ &
(
ÆÆ& '
mailSuccesResult
ÆÆ' 7
,
ÆÆ7 8
actualNickname
ÆÆ9 G
,
ÆÆG H
securityQuestion
ÆÆI Y
)
ÆÆY Z
;
ÆÆZ [
}
ØØ 
}
∞∞ 	
public
≤≤ 
void
≤≤ 
	VerifyPin
≤≤ 
(
≤≤ 
string
≤≤ $
actualNickname
≤≤% 3
,
≤≤3 4
string
≤≤5 ;
	playerPin
≤≤< E
,
≤≤E F
string
≤≤G M

answerText
≤≤N X
)
≤≤X Y
{
≥≥ 	
	PinResult
¥¥ 
	pinResult
¥¥ 
=
¥¥  !
	PinResult
¥¥" +
.
¥¥+ ,

UnknownPin
¥¥, 6
;
¥¥6 7
if
∂∂ 
(
∂∂  
jugadorDataManager
∂∂ "
.
∂∂" #
PinCorrecto
∂∂# .
(
∂∂. /
actualNickname
∂∂/ =
,
∂∂= >
	playerPin
∂∂? H
)
∂∂H I
)
∂∂I J
{
∑∑ 
if
∏∏ 
(
∏∏  
jugadorDataManager
∏∏ &
.
∏∏& '
CorrectAnswer
∏∏' 4
(
∏∏4 5
actualNickname
∏∏5 C
,
∏∏C D

answerText
∏∏E O
)
∏∏O P
)
∏∏P Q
{
ππ 
	pinResult
∫∫ 
=
∫∫ 
	PinResult
∫∫  )
.
∫∫) *
VerifiedPin
∫∫* 5
;
∫∫5 6
}
ªª 
else
ºº 
{
ΩΩ 
	pinResult
ææ 
=
ææ 
	PinResult
ææ  )
.
ææ) *
WrongAnswer
ææ* 5
;
ææ5 6
}
øø 
}
¿¿ 
Callback
¬¬ 
.
¬¬ 
GetPinResult
¬¬ !
(
¬¬! "
	pinResult
¬¬" +
,
¬¬+ ,
actualNickname
¬¬- ;
)
¬¬; <
;
¬¬< =
}
√√ 	
public
≈≈ 
void
≈≈ 
ChangePassword
≈≈ "
(
≈≈" #
string
≈≈# )
userNickname
≈≈* 6
,
≈≈6 7
string
≈≈8 >
password
≈≈? G
)
≈≈G H
{
∆∆ 	"
PasswordChangeResult
««  
changeResult
««! -
=
««. /"
PasswordChangeResult
««0 D
.
««D E
ErrorChanging
««E R
;
««R S
if
…… 
(
……  
jugadorDataManager
…… "
.
……" #
CheckNickname
……# 0
(
……0 1
userNickname
……1 =
)
……= >
)
……> ?
{
   
string
ÀÀ 
newPassword
ÀÀ "
=
ÀÀ# $
hashText
ÀÀ% -
.
ÀÀ- .

TextToHash
ÀÀ. 8
(
ÀÀ8 9
password
ÀÀ9 A
)
ÀÀA B
;
ÀÀB C
int
ÃÃ 
resultChange
ÃÃ  
=
ÃÃ! " 
jugadorDataManager
ÃÃ# 5
.
ÃÃ5 6
ChangePassword
ÃÃ6 D
(
ÃÃD E
userNickname
ÃÃE Q
,
ÃÃQ R
newPassword
ÃÃS ^
)
ÃÃ^ _
;
ÃÃ_ `
if
ŒŒ 
(
ŒŒ 
resultChange
ŒŒ  
>
ŒŒ! "
$num
ŒŒ# $
)
ŒŒ$ %
{
œœ 
changeResult
––  
=
––! ""
PasswordChangeResult
––# 7
.
––7 8
ChangedPassword
––8 G
;
––G H
}
—— 
}
”” 
Callback
’’ 
.
’’ %
GetPasswordChangeResult
’’ ,
(
’’, -
changeResult
’’- 9
)
’’9 :
;
’’: ;
}
◊◊ 	
public
ŸŸ 
void
ŸŸ 
GetActualPlayer
ŸŸ #
(
ŸŸ# $
Jugador
ŸŸ$ +
actualPlayer
ŸŸ, 8
)
ŸŸ8 9
{
⁄⁄ 	 
DataObtainedResult
€€  
dataObtainedResult
€€ 1
=
€€2 3 
DataObtainedResult
€€4 F
.
€€F G 
ErrorObtainingData
€€G Y
;
€€Y Z

DataAccess
‹‹ 
.
‹‹ 
Jugador
‹‹ 
searchedPlayer
‹‹ -
=
‹‹. / 
jugadorDataManager
‹‹0 B
.
‹‹B C!
GetPlayerByNickname
‹‹C V
(
‹‹V W
actualPlayer
‹‹W c
.
‹‹c d
Apodo
‹‹d i
)
‹‹i j
;
‹‹j k
if
ﬁﬁ 
(
ﬁﬁ 
searchedPlayer
ﬁﬁ 
!=
ﬁﬁ !
null
ﬁﬁ" &
)
ﬁﬁ& '
{
ﬂﬂ 
Dominio
‡‡ 
.
‡‡ 
Jugador
‡‡ "
domainSearchedPlayer
‡‡  4
=
‡‡5 6
new
‡‡7 :
Dominio
‡‡; B
.
‡‡B C
Jugador
‡‡C J
{
·· 
	IdJugador
‚‚ 
=
‚‚ 
searchedPlayer
‚‚  .
.
‚‚. /
	idJugador
‚‚/ 8
,
‚‚8 9
Apodo
„„ 
=
„„ 
searchedPlayer
„„ *
.
„„* +
apodo
„„+ 0
,
„„0 1
CorreoElectronico
‰‰ %
=
‰‰& '
searchedPlayer
‰‰( 6
.
‰‰6 7
correoElectronico
‰‰7 H
,
‰‰H I
Status
ÂÂ 
=
ÂÂ 
searchedPlayer
ÂÂ +
.
ÂÂ+ ,
status
ÂÂ, 2
,
ÂÂ2 3"
PreguntaRecuperacion
ÊÊ (
=
ÊÊ) *
searchedPlayer
ÊÊ+ 9
.
ÊÊ9 :"
preguntaRecuperacion
ÊÊ: N
,
ÊÊN O

IdLenguaje
ÁÁ 
=
ÁÁ  
searchedPlayer
ÁÁ! /
.
ÁÁ/ 0
idioma
ÁÁ0 6
}
ÈÈ 
;
ÈÈ  
dataObtainedResult
ÍÍ "
=
ÍÍ# $ 
DataObtainedResult
ÍÍ% 7
.
ÍÍ7 8
DataObtained
ÍÍ8 D
;
ÍÍD E
Callback
ÎÎ 
.
ÎÎ 
SendActualPlayer
ÎÎ )
(
ÎÎ) * 
dataObtainedResult
ÎÎ* <
,
ÎÎ< ="
domainSearchedPlayer
ÎÎ> R
)
ÎÎR S
;
ÎÎS T
}
ÏÏ 
else
ÌÌ 
{
ÓÓ 
Dominio
ÔÔ 
.
ÔÔ 
Jugador
ÔÔ 
emptyPlayer
ÔÔ  +
=
ÔÔ, -
new
ÔÔ. 1
Jugador
ÔÔ2 9
(
ÔÔ9 :
)
ÔÔ: ;
;
ÔÔ; <
Callback
 
.
 
SendActualPlayer
 )
(
) * 
dataObtainedResult
* <
,
< =
emptyPlayer
> I
)
I J
;
J K
}
ÒÒ 
}
ÙÙ 	$
IPlayerManagerCallback
ˆˆ 
Callback
ˆˆ '
{
˜˜ 	
get
¯¯ 
{
˘˘ 
return
˙˙ 
OperationContext
˙˙ '
.
˙˙' (
Current
˙˙( /
.
˙˙/ 0 
GetCallbackChannel
˙˙0 B
<
˙˙B C$
IPlayerManagerCallback
˙˙C Y
>
˙˙Y Z
(
˙˙Z [
)
˙˙[ \
;
˙˙\ ]
}
˚˚ 
}
¸¸ 	
}
˝˝ 
public
ˇˇ 

partial
ˇˇ 
class
ˇˇ 
MainService
ˇˇ $
:
ˇˇ% &
IRankingManager
ˇˇ' 6
{
ÄÄ 
public
ÅÅ 
void
ÅÅ 
GetRankingData
ÅÅ "
(
ÅÅ" #
)
ÅÅ# $
{
ÇÇ 	
RankingResult
ÉÉ 
result
ÉÉ  
;
ÉÉ  !
List
ÑÑ 
<
ÑÑ 
Dominio
ÑÑ 
.
ÑÑ 
Ranking
ÑÑ  
>
ÑÑ  !
rankings
ÑÑ" *
=
ÑÑ+ ,
QueryRankingData
ÑÑ- =
(
ÑÑ= >
)
ÑÑ> ?
;
ÑÑ? @
if
ÜÜ 
(
ÜÜ 
rankings
ÜÜ 
==
ÜÜ 
null
ÜÜ  
)
ÜÜ  !
{
áá 
result
àà 
=
àà 
RankingResult
àà &
.
àà& '

NO_RANKING
àà' 1
;
àà1 2
}
ââ 
else
ää 
{
ãã 
result
åå 
=
åå 
RankingResult
åå &
.
åå& '
RANKING_EXISTS
åå' 5
;
åå5 6
RankingCallback
éé 
.
éé   
ReceiveRankingData
éé  2
(
éé2 3
rankings
éé3 ;
)
éé; <
;
éé< =
}
èè 
RankingCallback
íí 
.
íí 
GetRankingResult
íí ,
(
íí, -
result
íí- 3
)
íí3 4
;
íí4 5
}
ìì 	
public
ïï 
List
ïï 
<
ïï 
Dominio
ïï 
.
ïï 
Ranking
ïï #
>
ïï# $
QueryRankingData
ïï% 5
(
ïï5 6
)
ïï6 7
{
ññ 	
List
óó 
<
óó 
Dominio
óó 
.
óó 
Ranking
óó  
>
óó  !
currentRankings
óó" 1
=
óó2 3
new
óó4 7
List
óó8 <
<
óó< =
Dominio
óó= D
.
óóD E
Ranking
óóE L
>
óóL M
(
óóM N
)
óóN O
;
óóO P 
RankingDataManager
òò 
dataManager
òò *
=
òò+ ,
new
òò- 0 
RankingDataManager
òò1 C
(
òòC D
)
òòD E
;
òòE F 
JugadorDataManager
ôô 
playerManager
ôô ,
=
ôô- .
new
ôô/ 2 
JugadorDataManager
ôô3 E
(
ôôE F
)
ôôF G
;
ôôG H
List
öö 
<
öö 

DataAccess
öö 
.
öö 
Ranking
öö #
>
öö# $ 
queriedRankingList
öö% 7
=
öö8 9
dataManager
öö: E
.
ööE F
GetRankingList
ööF T
(
ööT U
)
ööU V
;
ööV W
if
úú 
(
úú 
dataManager
úú 
.
úú 
GetRankingList
úú *
(
úú* +
)
úú+ ,
!=
úú- /
null
úú0 4
)
úú4 5
{
ùù 
foreach
ûû 
(
ûû 

DataAccess
ûû #
.
ûû# $
Ranking
ûû$ +
playerRanking
ûû, 9
in
ûû: < 
queriedRankingList
ûû= O
)
ûûO P
{
üü 
currentRankings
†† #
.
††# $
Add
††$ '
(
††' (
new
††( +
Dominio
††, 3
.
††3 4
Ranking
††4 ;
{
°° 
	IdRanking
¢¢ !
=
¢¢" #
playerRanking
¢¢$ 1
.
¢¢1 2
	idRanking
¢¢2 ;
,
¢¢; <
Duenio
££ 
=
££  
playerManager
££! .
.
££. /!
GetDomainPlayerByID
££/ B
(
££B C
playerRanking
££C P
.
££P Q
idDuenio
££Q Y
)
££Y Z
,
££Z [
FechaRegistracion
§§ )
=
§§* +
playerRanking
§§, 9
.
§§9 :
fechaRegistracion
§§: K
??
§§L N
default
§§O V
(
§§V W
DateTime
§§W _
)
§§_ `
,
§§` a
NumeroVictorias
•• '
=
••( )
playerRanking
••* 7
.
••7 8
numeroVictorias
••8 G
??
••H J
default
••K R
(
••R S
int
••S V
)
••V W
,
••W X
PartidasJugadas
¶¶ '
=
¶¶( )
playerRanking
¶¶* 7
.
¶¶7 8
partidasJugadas
¶¶8 G
??
¶¶H J
default
¶¶K R
(
¶¶R S
int
¶¶S V
)
¶¶V W
,
¶¶W X
Rank
ßß 
=
ßß 
playerRanking
ßß ,
.
ßß, -
rank
ßß- 1
??
ßß2 4
default
ßß5 <
(
ßß< =
int
ßß= @
)
ßß@ A
,
ßßA B
NumeroPerdidas
®® &
=
®®' (
playerRanking
®®) 6
.
®®6 7
numeroPerdidas
®®7 E
??
®®F H
default
®®I P
(
®®P Q
int
®®Q T
)
®®T U
}
©© 
)
©© 
;
©© 
}
™™ 
}
´´ 
return
≠≠ 
currentRankings
≠≠ "
;
≠≠" #
}
ÆÆ 	%
IRankingManagerCallback
∞∞ 
RankingCallback
∞∞  /
{
±± 	
get
≤≤ 
{
≥≥ 
return
¥¥ 
OperationContext
¥¥ '
.
¥¥' (
Current
¥¥( /
.
¥¥/ 0 
GetCallbackChannel
¥¥0 B
<
¥¥B C%
IRankingManagerCallback
¥¥C Z
>
¥¥Z [
(
¥¥[ \
)
¥¥\ ]
;
¥¥] ^
}
µµ 
}
∂∂ 	
}
∑∑ 
public
ππ 

partial
ππ 
class
ππ 
MainService
ππ $
:
ππ% &
IGameManager
ππ' 3
{
∫∫ 
private
ªª 
List
ªª 
<
ªª 
Match
ªª 
>
ªª 
activeMatches
ªª )
=
ªª* +
new
ªª, /
List
ªª0 4
<
ªª4 5
Match
ªª5 :
>
ªª: ;
(
ªª; <
)
ªª< =
;
ªª= >
private
ºº 
int
ºº !
numberActiveMatches
ºº '
=
ºº( )
$num
ºº* +
;
ºº+ ,
private
ΩΩ 
List
ΩΩ 
<
ΩΩ 
Match
ΩΩ 
>
ΩΩ "
playersQueuedClassic
ΩΩ 0
=
ΩΩ1 2
new
ΩΩ3 6
List
ΩΩ7 ;
<
ΩΩ; <
Match
ΩΩ< A
>
ΩΩA B
(
ΩΩB C
)
ΩΩC D
;
ΩΩD E
private
ææ 
const
ææ 
int
ææ 

PLAYER_ONE
ææ $
=
ææ% &
$num
ææ' (
;
ææ( )
private
øø 
const
øø 
int
øø 

PLAYER_TWO
øø $
=
øø% &
$num
øø' (
;
øø( )"
IGameManagerCallback
¡¡ !
GameManagerCallback
¡¡ 0
{
¬¬ 	
get
√√ 
{
ƒƒ 
return
≈≈ 
OperationContext
≈≈ '
.
≈≈' (
Current
≈≈( /
.
≈≈/ 0 
GetCallbackChannel
≈≈0 B
<
≈≈B C"
IGameManagerCallback
≈≈C W
>
≈≈W X
(
≈≈X Y
)
≈≈Y Z
;
≈≈Z [
}
∆∆ 
}
«« 	
public
…… 
void
…… 
Player1Turn
…… 
(
……  
Checker
……  '
[
……' (
]
……( )
[
……) *
]
……* +
updateBoardMatrix
……, =
,
……= >
int
……? B
matchNumber
……C N
,
……N O
int
……P S
playerTwoCheckers
……T e
,
……e f
int
……g j
playerOneCheckers
……k |
)
……| }
{
   	
activeMatches
ÀÀ 
[
ÀÀ 
matchNumber
ÀÀ %
]
ÀÀ% &
.
ÀÀ& '
playerTwoCallback
ÀÀ' 8
.
ÀÀ8 9
UpdateGameGUI
ÀÀ9 F
(
ÀÀF G
updateBoardMatrix
ÀÀG X
,
ÀÀX Y
playerTwoCheckers
ÀÀZ k
,
ÀÀk l
playerOneCheckers
ÀÀm ~
)
ÀÀ~ 
;ÀÀ Ä
}
ÃÃ 	
public
ŒŒ 
void
ŒŒ 
CreateMatch
ŒŒ 
(
ŒŒ  
Jugador
ŒŒ  '
currentPlayer
ŒŒ( 5
,
ŒŒ5 6
CheckersGameMode
ŒŒ7 G
gameMode
ŒŒH P
)
ŒŒP Q
{
œœ 	
MatchmakingResult
–– 
matchmakingResult
–– /
;
––/ 0
if
““ 
(
““ "
playersQueuedClassic
““ $
.
““$ %
Count
““% *
>
““+ ,
$num
““- .
)
““. /
{
”” 
Match
‘‘ 
newCompleteGame
‘‘ %
=
‘‘& '"
playersQueuedClassic
‘‘( <
.
‘‘< =
First
‘‘= B
(
‘‘B C
)
‘‘C D
;
‘‘D E"
playersQueuedClassic
’’ $
.
’’$ %
Remove
’’% +
(
’’+ ,
newCompleteGame
’’, ;
)
’’; <
;
’’< =
newCompleteGame
÷÷ 
.
÷÷  
playerTwoCallback
÷÷  1
=
÷÷2 3!
GameManagerCallback
÷÷4 G
;
÷÷G H
newCompleteGame
◊◊ 
.
◊◊  
playerTwoData
◊◊  -
=
◊◊. /
currentPlayer
◊◊0 =
;
◊◊= >
newCompleteGame
ÿÿ 
.
ÿÿ  
matchActiveNumber
ÿÿ  1
=
ÿÿ2 3!
numberActiveMatches
ÿÿ4 G
;
ÿÿG H"
playersQueuedClassic
ŸŸ $
.
ŸŸ$ %
Sort
ŸŸ% )
(
ŸŸ) *
)
ŸŸ* +
;
ŸŸ+ ,
matchmakingResult
⁄⁄ !
=
⁄⁄" #
MatchmakingResult
⁄⁄$ 5
.
⁄⁄5 6
MATCH_FOUND
⁄⁄6 A
;
⁄⁄A B
activeMatches
€€ 
.
€€ 
Add
€€ !
(
€€! "
newCompleteGame
€€" 1
)
€€1 2
;
€€2 3!
numberActiveMatches
‹‹ #
++
‹‹# %
;
‹‹% &
try
ﬁﬁ 
{
ﬂﬂ 
newCompleteGame
‡‡ #
.
‡‡# $
playerOneCallback
‡‡$ 5
.
‡‡5 6"
GetMatchmakingResult
‡‡6 J
(
‡‡J K
matchmakingResult
‡‡K \
,
‡‡\ ]
newCompleteGame
‡‡^ m
,
‡‡m n

PLAYER_ONE
‡‡o y
)
‡‡y z
;
‡‡z {!
GameManagerCallback
„„ '
.
„„' ("
GetMatchmakingResult
„„( <
(
„„< =
matchmakingResult
„„= N
,
„„N O
newCompleteGame
„„P _
,
„„_ `

PLAYER_TWO
„„a k
)
„„k l
;
„„l m
}
‰‰ 
catch
ÂÂ 
(
ÂÂ '
EndpointNotFoundException
ÂÂ /
)
ÂÂ/ 0
{
ÊÊ 
matchmakingResult
ÁÁ %
=
ÁÁ& '
MatchmakingResult
ÁÁ( 9
.
ÁÁ9 :#
UNABLE_TO_ENTER_MATCH
ÁÁ: O
;
ÁÁO P!
GameManagerCallback
ËË '
.
ËË' ("
GetMatchmakingResult
ËË( <
(
ËË< =
matchmakingResult
ËË= N
,
ËËN O
newCompleteGame
ËËP _
,
ËË_ `

PLAYER_TWO
ËËa k
)
ËËk l
;
ËËl m
}
ÍÍ 
}
ÏÏ 
else
ÌÌ 
{
ÓÓ 
Match
ÔÔ 
newGame
ÔÔ 
=
ÔÔ 
new
ÔÔ  #
Match
ÔÔ$ )
(
ÔÔ) *
)
ÔÔ* +
{
 
currentPlayer
ÒÒ !
=
ÒÒ" #

PLAYER_ONE
ÒÒ$ .
,
ÒÒ. /
playerOneData
ÚÚ !
=
ÚÚ" #
currentPlayer
ÚÚ$ 1
,
ÚÚ1 2
playerOneCallback
ÛÛ %
=
ÛÛ& '!
GameManagerCallback
ÛÛ( ;
,
ÛÛ; <
}
ÙÙ 
;
ÙÙ "
playersQueuedClassic
ˆˆ $
.
ˆˆ$ %
Add
ˆˆ% (
(
ˆˆ( )
newGame
ˆˆ) 0
)
ˆˆ0 1
;
ˆˆ1 2
matchmakingResult
˜˜ !
=
˜˜" #
MatchmakingResult
˜˜$ 5
.
˜˜5 6
MATCH_NOT_FOUND
˜˜6 E
;
˜˜E F!
GameManagerCallback
¯¯ #
.
¯¯# $"
GetMatchmakingResult
¯¯$ 8
(
¯¯8 9
matchmakingResult
¯¯9 J
,
¯¯J K
newGame
¯¯L S
,
¯¯S T

PLAYER_ONE
¯¯U _
)
¯¯_ `
;
¯¯` a
}
˙˙ 
}
˚˚ 	
public
˛˛ 
void
˛˛ 
Player2Turn
˛˛ 
(
˛˛  
Checker
˛˛  '
[
˛˛' (
]
˛˛( )
[
˛˛) *
]
˛˛* +
updateBoardMatrix
˛˛, =
,
˛˛= >
int
˛˛? B
matchNumber
˛˛C N
,
˛˛N O
int
˛˛P S
playerTwoCheckers
˛˛T e
,
˛˛e f
int
˛˛g j
playerOneCheckers
˛˛k |
)
˛˛| }
{
ˇˇ 	
activeMatches
ÄÄ 
[
ÄÄ 
matchNumber
ÄÄ %
]
ÄÄ% &
.
ÄÄ& '
playerOneCallback
ÄÄ' 8
.
ÄÄ8 9
UpdateGameGUI
ÄÄ9 F
(
ÄÄF G
updateBoardMatrix
ÄÄG X
,
ÄÄX Y
playerTwoCheckers
ÄÄZ k
,
ÄÄk l
playerOneCheckers
ÄÄm ~
)
ÄÄ~ 
;ÄÄ Ä
}
ÅÅ 	
public
ÉÉ 
void
ÉÉ 
FinishPlayerGame
ÉÉ $
(
ÉÉ$ %
int
ÉÉ% (
matchNumber
ÉÉ) 4
,
ÉÉ4 5
int
ÉÉ6 9
playerNumber
ÉÉ: F
,
ÉÉF G
int
ÉÉH K
playerTwoCheckers
ÉÉL ]
,
ÉÉ] ^
int
ÉÉ_ b
playerOneCheckers
ÉÉc t
)
ÉÉt u
{
ÑÑ 	
if
ÖÖ 
(
ÖÖ 
playerNumber
ÖÖ 
==
ÖÖ 

PLAYER_ONE
ÖÖ  *
)
ÖÖ* +
{
ÜÜ 
activeMatches
áá 
[
áá 
matchNumber
áá )
]
áá) *
.
áá* +
playerTwoCallback
áá+ <
.
áá< =

FinishGame
áá= G
(
ááG H
playerTwoCheckers
ááH Y
,
ááY Z
playerOneCheckers
áá[ l
)
áál m
;
áám n
}
àà 
else
ââ 
{
ää 
activeMatches
åå 
[
åå 
matchNumber
åå )
]
åå) *
.
åå* +
playerOneCallback
åå+ <
.
åå< =

FinishGame
åå= G
(
ååG H
playerTwoCheckers
ååH Y
,
ååY Z
playerOneCheckers
åå[ l
)
åål m
;
ååm n
}
çç  
RankingDataManager
éé  
rankingDataManager
éé 1
=
éé2 3
new
éé4 7 
RankingDataManager
éé8 J
(
ééJ K
)
ééK L
;
ééL M 
rankingDataManager
èè 
.
èè  
UpdateMatchResults
èè 1
(
èè1 2
activeMatches
èè2 ?
[
èè? @
matchNumber
èè@ K
]
èèK L
.
èèL M
playerOneData
èèM Z
,
èèZ [
playerOneCheckers
èè\ m
,
èèm n
activeMatches
èèo |
[
èè| }
matchNumberèè} à
]èèà â
.èèâ ä
playerTwoDataèèä ó
,èèó ò!
playerTwoCheckersèèô ™
,èè™ ´
playerNumberèè¨ ∏
)èè∏ π
;èèπ ∫!
numberActiveMatches
êê 
--
êê !
;
êê! "
activeMatches
ëë 
.
ëë 
RemoveAt
ëë "
(
ëë" #
matchNumber
ëë# .
)
ëë. /
;
ëë/ 0
int
ìì 
listPosition
ìì 
;
ìì 
for
ïï 
(
ïï 
listPosition
ïï 
=
ïï 
matchNumber
ïï  +
;
ïï+ ,
listPosition
ïï- 9
<
ïï: ;
activeMatches
ïï< I
.
ïïI J
Count
ïïJ O
;
ïïO P
listPosition
ïïQ ]
++
ïï] _
)
ïï_ `
{
ññ 
activeMatches
óó 
[
óó 
listPosition
óó *
]
óó* +
.
óó+ ,
matchActiveNumber
óó, =
--
óó= ?
;
óó? @
activeMatches
òò 
[
òò 
listPosition
òò *
]
òò* +
.
òò+ ,
playerOneCallback
òò, =
.
òò= >
UpdateMatchNumber
òò> O
(
òòO P
activeMatches
òòP ]
[
òò] ^
listPosition
òò^ j
]
òòj k
.
òòk l
matchActiveNumber
òòl }
)
òò} ~
;
òò~ 
activeMatches
ôô 
[
ôô 
listPosition
ôô *
]
ôô* +
.
ôô+ ,
playerTwoCallback
ôô, =
.
ôô= >
UpdateMatchNumber
ôô> O
(
ôôO P
activeMatches
ôôP ]
[
ôô] ^
listPosition
ôô^ j
]
ôôj k
.
ôôk l
matchActiveNumber
ôôl }
)
ôô} ~
;
ôô~ 
}
öö 
}
õõ 	
public
ùù 
void
ùù 
SendGameMessage
ùù #
(
ùù# $
int
ùù$ '
playerNumber
ùù( 4
,
ùù4 5
string
ùù6 <
message
ùù= D
,
ùùD E
int
ùùF I
matchNumber
ùùJ U
)
ùùU V
{
ûû 	
if
üü 
(
üü 
playerNumber
üü 
==
üü 

PLAYER_ONE
üü  *
)
üü* +
{
†† 
activeMatches
°° 
[
°° 
matchNumber
°° )
]
°°) *
.
°°* +
playerTwoCallback
°°+ <
.
°°< = 
RecieveGameMessage
°°= O
(
°°O P
message
°°P W
,
°°W X

PLAYER_ONE
°°Y c
)
°°c d
;
°°d e
}
¢¢ 
else
££ 
{
§§ 
activeMatches
•• 
[
•• 
matchNumber
•• )
]
••) *
.
••* +
playerOneCallback
••+ <
.
••< = 
RecieveGameMessage
••= O
(
••O P
message
••P W
,
••W X

PLAYER_TWO
••X b
)
••b c
;
••c d
}
¶¶ 
}
ßß 	
public
©© 
void
©© 
ReportPlayer
©©  
(
©©  !
int
©©! $#
playerNumberReporting
©©% :
,
©©: ;
int
©©< ?
matchNumber
©©@ K
,
©©K L
string
©©M S

reportText
©©T ^
)
©©^ _
{
™™ 	
int
´´ 
reportResult
´´ 
;
´´ 
ReportSaveResult
¨¨ 
reportSaveResult
¨¨ -
=
¨¨. /
ReportSaveResult
¨¨0 @
.
¨¨@ A
ERROR_SAVING
¨¨A M
;
¨¨M N
ReportDataManager
≠≠ 
reportDataManager
≠≠ /
=
≠≠0 1
new
≠≠2 5
ReportDataManager
≠≠6 G
(
≠≠G H
)
≠≠H I
;
≠≠I J
if
ØØ 
(
ØØ #
playerNumberReporting
ØØ %
==
ØØ& (

PLAYER_ONE
ØØ) 3
)
ØØ3 4
{
∞∞ 
reportResult
±± 
=
±± 
reportDataManager
±± 0
.
±±0 1
ReportPlayer
±±1 =
(
±±= >
activeMatches
±±> K
[
±±K L
matchNumber
±±L W
]
±±W X
.
±±X Y
playerTwoData
±±Y f
.
±±f g
	IdJugador
±±g p
,
±±p q
activeMatches
±±r 
[±± Ä
matchNumber±±Ä ã
]±±ã å
.±±å ç
playerOneData±±ç ö
.±±ö õ
	IdJugador±±õ §
,±±§ •

reportText±±¶ ∞
)±±∞ ±
;±±± ≤
}
≤≤ 
else
≥≥ 
{
¥¥ 
reportResult
µµ 
=
µµ 
reportDataManager
µµ 0
.
µµ0 1
ReportPlayer
µµ1 =
(
µµ= >
activeMatches
µµ> K
[
µµK L
matchNumber
µµL W
]
µµW X
.
µµX Y
playerOneData
µµY f
.
µµf g
	IdJugador
µµg p
,
µµp q
activeMatches
µµr 
[µµ Ä
matchNumberµµÄ ã
]µµã å
.µµå ç
playerTwoDataµµç ö
.µµö õ
	IdJugadorµµõ §
,µµ§ •

reportTextµµ¶ ∞
)µµ∞ ±
;µµ± ≤
}
∂∂ 
if
∏∏ 
(
∏∏ 
reportResult
∏∏ 
>
∏∏ 
$num
∏∏  
)
∏∏  !
{
ππ 
reportSaveResult
∫∫  
=
∫∫! "
ReportSaveResult
∫∫# 3
.
∫∫3 4
SAVED_REPORT
∫∫4 @
;
∫∫@ A
}
ªª !
GameManagerCallback
ºº 
.
ºº  
ReportResult
ºº  ,
(
ºº, -
reportSaveResult
ºº- =
)
ºº= >
;
ºº> ?
}
ΩΩ 	
}
ææ 
public
¿¿ 

partial
¿¿ 
class
¿¿ 
MainService
¿¿ $
:
¿¿% &
IBanManager
¿¿' 2
{
¡¡ !
IBanManagerCallback
¬¬ 
BanCallback
¬¬ '
{
√√ 	
get
ƒƒ 
{
≈≈ 
return
∆∆ 
OperationContext
∆∆ '
.
∆∆' (
Current
∆∆( /
.
∆∆/ 0 
GetCallbackChannel
∆∆0 B
<
∆∆B C!
IBanManagerCallback
∆∆C V
>
∆∆V W
(
∆∆W X
)
∆∆X Y
;
∆∆Y Z
}
«« 
}
»» 	
public
   
void
   
GetReportData
   !
(
  ! "
)
  " #
{
ÀÀ 	
AdminReportResult
ÃÃ 
result
ÃÃ $
=
ÃÃ% &
AdminReportResult
ÃÃ' 8
.
ÃÃ8 9
NO_REPORTS_EXIST
ÃÃ9 I
;
ÃÃI J
List
ÕÕ 
<
ÕÕ 
Dominio
ÕÕ 
.
ÕÕ 
Reporte
ÕÕ  
>
ÕÕ  !

reportList
ÕÕ" ,
=
ÕÕ- .
QueryReportData
ÕÕ/ >
(
ÕÕ> ?
)
ÕÕ? @
;
ÕÕ@ A
if
œœ 
(
œœ 

reportList
œœ 
.
œœ 
Count
œœ  
>
œœ! "
$num
œœ# $
)
œœ$ %
{
–– 
result
—— 
=
—— 
AdminReportResult
—— *
.
——* +
REPORT_EXISTS
——+ 8
;
——8 9
BanCallback
”” 
.
”” 
ReceiveReportData
”” -
(
””- .

reportList
””. 8
)
””8 9
;
””9 :
}
‘‘ 
BanCallback
’’ 
.
’’ &
GetReportDataQueryResult
’’ 0
(
’’0 1
result
’’1 7
)
’’7 8
;
’’8 9
}
÷÷ 	
public
ÿÿ 
List
ÿÿ 
<
ÿÿ 
Dominio
ÿÿ 
.
ÿÿ 
Reporte
ÿÿ #
>
ÿÿ# $
QueryReportData
ÿÿ% 4
(
ÿÿ4 5
)
ÿÿ5 6
{
ŸŸ 	
List
⁄⁄ 
<
⁄⁄ 
Dominio
⁄⁄ 
.
⁄⁄ 
Reporte
⁄⁄  
>
⁄⁄  !"
currentPlayerReports
⁄⁄" 6
=
⁄⁄7 8
new
⁄⁄9 <
List
⁄⁄= A
<
⁄⁄A B
Dominio
⁄⁄B I
.
⁄⁄I J
Reporte
⁄⁄J Q
>
⁄⁄Q R
(
⁄⁄R S
)
⁄⁄S T
;
⁄⁄T U
ReportDataManager
€€ 
reportDataManager
€€ /
=
€€0 1
new
€€2 5
ReportDataManager
€€6 G
(
€€G H
)
€€H I
;
€€I J 
JugadorDataManager
‹‹ 
playerManager
‹‹ ,
=
‹‹- .
new
‹‹/ 2 
JugadorDataManager
‹‹3 E
(
‹‹E F
)
‹‹F G
;
‹‹G H
List
›› 
<
›› 

DataAccess
›› 
.
›› 
Reporte
›› #
>
››# $
queriedReportList
››% 6
=
››7 8
reportDataManager
››9 J
.
››J K
GetReportList
››K X
(
››X Y
)
››Y Z
;
››Z [
if
ﬂﬂ 
(
ﬂﬂ 
reportDataManager
ﬂﬂ !
.
ﬂﬂ! "
GetReportList
ﬂﬂ" /
(
ﬂﬂ/ 0
)
ﬂﬂ0 1
!=
ﬂﬂ2 4
null
ﬂﬂ5 9
)
ﬂﬂ9 :
{
‡‡ 
foreach
·· 
(
·· 

DataAccess
·· #
.
··# $
Reporte
··$ +
playerReport
··, 8
in
··9 ;
queriedReportList
··< M
)
··M N
{
‚‚ "
currentPlayerReports
„„ (
.
„„( )
Add
„„) ,
(
„„, -
new
„„- 0
Dominio
„„1 8
.
„„8 9
Reporte
„„9 @
{
‰‰ 
	IdReporte
ÂÂ !
=
ÂÂ" #
playerReport
ÂÂ$ 0
.
ÂÂ0 1
	idReporte
ÂÂ1 :
,
ÂÂ: ;
Acusador
ÊÊ  
=
ÊÊ! "
playerManager
ÊÊ# 0
.
ÊÊ0 1!
GetDomainPlayerByID
ÊÊ1 D
(
ÊÊD E
playerReport
ÊÊE Q
.
ÊÊQ R

idAcusador
ÊÊR \
)
ÊÊ\ ]
,
ÊÊ] ^
	Reportado
ÁÁ !
=
ÁÁ" #
playerManager
ÁÁ$ 1
.
ÁÁ1 2!
GetDomainPlayerByID
ÁÁ2 E
(
ÁÁE F
playerReport
ÁÁF R
.
ÁÁR S
idReportado
ÁÁS ^
)
ÁÁ^ _
,
ÁÁ_ `
DescripcionAcuso
ËË (
=
ËË) *
playerReport
ËË+ 7
.
ËË7 8
descripcionAcuso
ËË8 H
??
ËËI K
default
ËËL S
(
ËËS T
string
ËËT Z
)
ËËZ [
}
ÈÈ 
)
ÈÈ 
;
ÈÈ 
}
ÍÍ 
}
ÎÎ 
return
ÌÌ "
currentPlayerReports
ÌÌ '
;
ÌÌ' (
}
ÓÓ 	
public
 
void
 
	BanPlayer
 
(
 
string
 $ 
reportedPlayerName
% 7
)
7 8
{
ÒÒ 	
int
ÚÚ 
isPlayerBanned
ÚÚ 
=
ÚÚ  
$num
ÚÚ! "
;
ÚÚ" #
const
ÛÛ 
int
ÛÛ 
BAN_SAUCCESSFUL
ÛÛ %
=
ÛÛ& '
$num
ÛÛ( )
;
ÛÛ) *
const
ÙÙ 
int
ÙÙ 
BAN_ALREADY
ÙÙ !
=
ÙÙ" #
$num
ÙÙ$ %
;
ÙÙ% & 
JugadorDataManager
ıı 
playerDataManager
ıı 0
=
ıı1 2
new
ıı3 6 
JugadorDataManager
ıı7 I
(
ııI J
)
ııJ K
;
ııK L
	BanResult
˜˜ 
	banResult
˜˜ 
=
˜˜  !
	BanResult
˜˜" +
.
˜˜+ ,
ERROR_BANNING
˜˜, 9
;
˜˜9 :

DataAccess
¯¯ 
.
¯¯ 
Jugador
¯¯ 
reportedPlayer
¯¯ -
=
¯¯. /
playerDataManager
¯¯0 A
.
¯¯A B!
GetPlayerByNickname
¯¯B U
(
¯¯U V 
reportedPlayerName
¯¯V h
)
¯¯h i
;
¯¯i j
isPlayerBanned
˘˘ 
=
˘˘ 
playerDataManager
˘˘ .
.
˘˘. /
	BanPlayer
˘˘/ 8
(
˘˘8 9
reportedPlayer
˘˘9 G
.
˘˘G H
apodo
˘˘H M
)
˘˘M N
;
˘˘N O
if
˚˚ 
(
˚˚ 
isPlayerBanned
˚˚ 
==
˚˚ !
BAN_SAUCCESSFUL
˚˚" 1
)
˚˚1 2
{
¸¸ 
MailMessage
˝˝ 
emailContent
˝˝ (
=
˝˝) *
new
˝˝+ .
MailMessage
˝˝/ :
(
˝˝: ;
)
˝˝; <
;
˝˝< =
emailContent
ˇˇ 
.
ˇˇ 
To
ˇˇ 
.
ˇˇ  
Add
ˇˇ  #
(
ˇˇ# $
reportedPlayer
ˇˇ$ 2
.
ˇˇ2 3
correoElectronico
ˇˇ3 D
)
ˇˇD E
;
ˇˇE F
emailContent
ÄÄ 
.
ÄÄ 
Subject
ÄÄ $
=
ÄÄ% &
$str
ÄÄ' O
+
ÄÄP Q
reportedPlayer
ÄÄR `
.
ÄÄ` a
apodo
ÄÄa f
;
ÄÄf g
emailContent
ÅÅ 
.
ÅÅ 
Body
ÅÅ !
=
ÅÅ" #
$str
ÅÅ$ +
+
ÅÅ, -
reportedPlayer
ÅÅ. <
.
ÅÅ< =
apodo
ÅÅ= B
+
ÅÅC D
$str
ÅÅE ~
+ÅÅ Ä
$str
ÇÇ 6
;
ÇÇ6 7
emailContent
ÉÉ 
.
ÉÉ 
From
ÉÉ !
=
ÉÉ" #
new
ÉÉ$ '
System
ÉÉ( .
.
ÉÉ. /
Net
ÉÉ/ 2
.
ÉÉ2 3
Mail
ÉÉ3 7
.
ÉÉ7 8
MailAddress
ÉÉ8 C
(
ÉÉC D
$str
ÉÉD _
,
ÉÉ_ `
$str
ÉÉa x
)
ÉÉx y
;
ÉÉy z

SmtpClient
ÖÖ 
client
ÖÖ !
=
ÖÖ" #
new
ÖÖ$ '

SmtpClient
ÖÖ( 2
{
ÜÜ 
Credentials
áá 
=
áá  !
new
áá" %
System
áá& ,
.
áá, -
Net
áá- 0
.
áá0 1
NetworkCredential
áá1 B
(
ááB C
mailUser
ááC K
,
ááK L
mailPassword
ááM Y
)
ááY Z
,
ááZ [
	EnableSsl
àà 
=
àà 
true
àà  $
,
àà$ %
Port
ââ 
=
ââ 
$num
ââ 
,
ââ 
Host
ää 
=
ää 
$str
ää +
,
ää+ ,
}
ãã 
;
ãã 
try
çç 
{
éé 
client
èè 
.
èè 
Send
èè 
(
èè  
emailContent
èè  ,
)
èè, -
;
èè- .
}
êê 
catch
ëë 
(
ëë 
System
ëë 
.
ëë 
Net
ëë !
.
ëë! "
Mail
ëë" &
.
ëë& '
SmtpException
ëë' 4
)
ëë4 5
{
íí 
throw
ìì 
new
ìì 
System
ìì $
.
ìì$ %
Net
ìì% (
.
ìì( )
Mail
ìì) -
.
ìì- .
SmtpException
ìì. ;
(
ìì; <
$strìì< í
)ììí ì
;ììì î
}
îî 
	banResult
ññ 
=
ññ 
	BanResult
ññ %
.
ññ% &
PLAYER_BANNED
ññ& 3
;
ññ3 4
}
óó 
else
òò 
if
òò 
(
òò 
isPlayerBanned
òò "
==
òò# %
BAN_ALREADY
òò& 1
)
òò1 2
{
ôô 
	banResult
öö 
=
öö 
	BanResult
öö %
.
öö% &#
PLAYER_ALREADY_BANNED
öö& ;
;
öö; <
}
õõ 
BanCallback
ùù 
.
ùù 
GetBanResult
ùù $
(
ùù$ %
	banResult
ùù% .
)
ùù. /
;
ùù/ 0
}
üü 	
}
†† 
}°° ©

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
]##) *Ã#
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
,++ 
	EsBaneado,, 
=,, 
$num,, 
}-- 
public// 

enum// 

SaveResult// 
{00 
JugadorGuardado11 
=11 
$num11 
,11 
NicknameExistente22 
=22 
$num22 
,22 
CorreoExistente33 
=33 
$num33 
,33 
ErrorGuardado44 
=44 
$num44 
,44 
}55 
public77 

enum77 
AdminReportResult77 !
{88 
NO_REPORTS_EXIST99 
=99 
$num99 
,99 
REPORT_EXISTS:: 
=:: 
$num:: 
};; 
public== 

enum== 
ReportSaveResult==  
{>> 
SAVED_REPORT?? 
=?? 
$num?? 
,?? 
ERROR_SAVING@@ 
=@@ 
$num@@ 
}AA 
publicCC 

enumCC 
RankingResultCC 
{DD 

NO_RANKINGEE 
=EE 
$numEE 
,EE 
RANKING_EXISTSFF 
=FF 
$numFF 
}GG 
publicHH 

enumHH 

MailResultHH 
{II 
MailSendJJ 
=JJ 
$numJJ 
,JJ 
	SendErrorKK 
=KK 
$numKK 
,KK 
UnknownPlayerLL 
=LL 
$numLL 
}MM 
publicOO 

enumOO 
	PinResultOO 
{PP 
VerifiedPinQQ 
=QQ 
$numQQ 
,QQ 
WrongAnswerRR 
=RR 
$numRR 
,RR 

UnknownPinSS 
=SS 
$numSS 
}TT 
publicVV 

enumVV  
PasswordChangeResultVV $
{WW 
ChangedPasswordXX 
=XX 
$numXX 
,XX 
ErrorChangingYY 
=YY 
$numYY 
}ZZ 
public\\ 

enum\\ 
DataObtainedResult\\ "
{]] 
DataObtained^^ 
=^^ 
$num^^ 
,^^ 
ErrorObtainingData__ 
=__ 
$num__ 
}`` 
publicbb 

enumbb 
	BanResultbb 
{cc 
PLAYER_BANNEDdd 
=dd 
$numdd 
,dd !
PLAYER_ALREADY_BANNEDee 
=ee 
$numee  !
,ee! "
ERROR_BANNINGff 
=ff 
$numff 
}gg 
}hh 