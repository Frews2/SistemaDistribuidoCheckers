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
}!! �*
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
}11 �0
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
}BB �
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
} ��
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
�� 
.
�� 
Jugador
�� &
	newPlayer
��' 0
=
��1 2
new
��3 6

DataAccess
��7 A
.
��A B
Jugador
��B I
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
��, -
contrasenia
�� #
=
��$ %
hashText
��& .
.
��. /

TextToHash
��/ 9
(
��9 :
player
��: @
.
��@ A
Contrasenia
��A L
)
��L M
,
��M N
correoElectronico
�� )
=
��* +
player
��, 2
.
��2 3
CorreoElectronico
��3 D
,
��D E
status
�� 
=
��  
ACTIVATION_STATE
��! 1
,
��1 2#
respuestaConfirmacion
�� -
=
��. /
player
��0 6
.
��6 7#
RespuestaConfirmacion
��7 L
,
��L M"
preguntaRecuperacion
�� ,
=
��- .
player
��/ 5
.
��5 6"
PreguntaRecuperacion
��6 J
,
��J K
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
��@ A
	idCreador
�� !
=
��" #
$num
��$ %
,
��% &
idioma
�� 
=
��  
player
��! '
.
��' (

IdLenguaje
��( 2
}
�� 
;
��  
JugadorDataManager
�� &
jugadorManager
��' 5
=
��6 7
new
��8 ; 
JugadorDataManager
��< N
(
��N O
)
��O P
;
��P Q
columnasAfectadas
�� %
=
��& '
jugadorManager
��( 6
.
��6 7
SaveNewPlayer
��7 D
(
��D E
	newPlayer
��E N
)
��N O
;
��O P
if
�� 
(
�� 
columnasAfectadas
�� )
>
��* +
$num
��, -
)
��- .
{
�� 

saveResult
�� "
=
��# $

SaveResult
��% /
.
��/ 0
JugadorGuardado
��0 ?
;
��? @
Callback
��  
.
��  !
GetSaveResult
��! .
(
��. /

saveResult
��/ 9
,
��9 :
player
��; A
)
��A B
;
��B C
System
�� 
.
�� 
Net
�� "
.
��" #
Mail
��# '
.
��' (
MailMessage
��( 3
mensaje
��4 ;
=
��< =
new
��> A
System
��B H
.
��H I
Net
��I L
.
��L M
Mail
��M Q
.
��Q R
MailMessage
��R ]
(
��] ^
)
��^ _
;
��_ `
mensaje
�� 
.
��  
To
��  "
.
��" #
Add
��# &
(
��& '
	newPlayer
��' 0
.
��0 1
correoElectronico
��1 B
)
��B C
;
��C D
mensaje
�� 
.
��  
Subject
��  '
=
��( )
$str
��* O
+
��P Q
player
��R X
.
��X Y
Apodo
��Y ^
;
��^ _
mensaje
�� 
.
��  
Body
��  $
=
��% &
$str
��' .
+
��/ 0
player
��1 7
.
��7 8
Apodo
��8 =
+
��> ?
$str
��@ l
+
��m n
$str
�� S
+
��T U
	newPlayer
��V _
.
��_ `
pinConfirmacion
��` o
;
��o p
mensaje
�� 
.
��  
From
��  $
=
��% &
new
��' *
System
��+ 1
.
��1 2
Net
��2 5
.
��5 6
Mail
��6 :
.
��: ;
MailAddress
��; F
(
��F G
$str
��G b
,
��b c
$str
��d {
)
��{ |
;
��| }
System
�� 
.
�� 
Net
�� "
.
��" #
Mail
��# '
.
��' (

SmtpClient
��( 2
cliente
��3 :
=
��; <
new
��= @
System
��A G
.
��G H
Net
��H K
.
��K L
Mail
��L P
.
��P Q

SmtpClient
��Q [
{
�� 
Credentials
�� '
=
��( )
new
��* -
System
��. 4
.
��4 5
Net
��5 8
.
��8 9
NetworkCredential
��9 J
(
��J K
mailUser
��K S
,
��S T
mailPassword
��U a
)
��a b
,
��b c
Port
��  
=
��! "
$num
��# &
,
��& '
	EnableSsl
�� %
=
��& '
true
��( ,
,
��, -
Host
��  
=
��! "
$str
��# 3
,
��3 4
}
�� 
;
�� 
try
�� 
{
�� 
cliente
�� #
.
��# $
Send
��$ (
(
��( )
mensaje
��) 0
)
��0 1
;
��1 2
}
�� 
catch
�� 
(
�� 
System
�� %
.
��% &
Net
��& )
.
��) *
Mail
��* .
.
��. /
SmtpException
��/ <
)
��< =
{
�� 
Callback
�� $
.
��$ %!
GetResendMailResult
��% 8
(
��8 9

mailResult
��9 C
,
��C D
player
��E K
.
��K L
Apodo
��L Q
)
��Q R
;
��R S
throw
�� !
new
��" %
System
��& ,
.
��, -
Net
��- 0
.
��0 1
Mail
��1 5
.
��5 6
SmtpException
��6 C
(
��C D
$str��D �
)��� �
;��� �
}
�� 
}
�� 
else
�� 
{
�� 

saveResult
�� "
=
��# $

SaveResult
��% /
.
��/ 0
ErrorGuardado
��0 =
;
��= >
Callback
��  
.
��  !
GetSaveResult
��! .
(
��. /

saveResult
��/ 9
,
��9 :
player
��; A
)
��A B
;
��B C
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
��; <
Callback
�� 
.
�� 
GetSaveResult
�� *
(
��* +

saveResult
��+ 5
,
��5 6
player
��7 =
)
��= >
;
��> ?
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
��9 :
Callback
�� 
.
�� 
GetSaveResult
�� &
(
��& '

saveResult
��' 1
,
��1 2
player
��3 9
)
��9 :
;
��: ;
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
�� 
Callback
�� 
.
�� 
GetVerifyResult
�� $
(
��$ %
	resultado
��% .
)
��. /
;
��/ 0
}
�� 	
public
�� 
void
�� 
SendMail
�� 
(
�� 
Jugador
�� $
player
��% +
)
��+ ,
{
�� 	

MailResult
�� 
mailSuccesResult
�� '
;
��' (
System
�� 
.
�� 
Net
�� 
.
�� 
Mail
�� 
.
�� 
MailMessage
�� '
mailMesagge
��( 3
=
��4 5
new
��6 9
System
��: @
.
��@ A
Net
��A D
.
��D E
Mail
��E I
.
��I J
MailMessage
��J U
(
��U V
)
��V W
;
��W X
mailMesagge
�� 
.
�� 
To
�� 
.
�� 
Add
�� 
(
�� 
player
�� %
.
��% &
CorreoElectronico
��& 7
)
��7 8
;
��8 9
mailMesagge
�� 
.
�� 
Subject
�� 
=
��  !
$str
��" G
+
��H I
player
��J P
.
��P Q
Apodo
��Q V
;
��V W
mailMesagge
�� 
.
�� 
Body
�� 
=
�� 
$str
�� &
+
��' (
player
��) /
.
��/ 0
Apodo
��0 5
+
��6 7
$str
��8 d
+
��e f
$str
�� G
+
��H I
player
��J P
.
��P Q
PinConfirmacion
��Q `
;
��` a
mailMesagge
�� 
.
�� 
From
�� 
=
�� 
new
�� "
System
��# )
.
��) *
Net
��* -
.
��- .
Mail
��. 2
.
��2 3
MailAddress
��3 >
(
��> ?
$str
��? Z
,
��Z [
$str
��\ s
)
��s t
;
��t u
System
�� 
.
�� 
Net
�� 
.
�� 
Mail
�� 
.
�� 

SmtpClient
�� &
client
��' -
=
��. /
new
��0 3
System
��4 :
.
��: ;
Net
��; >
.
��> ?
Mail
��? C
.
��C D

SmtpClient
��D N
{
�� 
Credentials
�� 
=
�� 
new
�� !
System
��" (
.
��( )
Net
��) ,
.
��, -
NetworkCredential
��- >
(
��> ?
mailUser
��? G
,
��G H
mailPassword
��I U
)
��U V
,
��V W
Port
�� 
=
�� 
$num
�� 
,
�� 
	EnableSsl
�� 
=
�� 
true
��  
,
��  !
Host
�� 
=
�� 
$str
�� '
,
��' (
}
�� 
;
�� 
try
�� 
{
�� 
client
�� 
.
�� 
Send
�� 
(
�� 
mailMesagge
�� '
)
��' (
;
��( )
mailSuccesResult
��  
=
��! "

MailResult
��# -
.
��- .
MailSend
��. 6
;
��6 7
Callback
�� 
.
�� !
GetResendMailResult
�� ,
(
��, -
mailSuccesResult
��- =
,
��= >
player
��? E
.
��E F
Apodo
��F K
)
��K L
;
��L M
}
�� 
catch
�� 
(
�� 
System
�� 
.
�� 
Net
�� 
.
�� 
Mail
�� "
.
��" #
SmtpException
��# 0
)
��0 1
{
�� 
mailSuccesResult
��  
=
��! "

MailResult
��# -
.
��- .
	SendError
��. 7
;
��7 8
Callback
�� 
.
�� !
GetResendMailResult
�� ,
(
��, -
mailSuccesResult
��- =
,
��= >
player
��? E
.
��E F
Apodo
��F K
)
��K L
;
��L M
throw
�� 
new
�� 
System
��  
.
��  !
Net
��! $
.
��$ %
Mail
��% )
.
��) *
SmtpException
��* 7
(
��7 8
$str
��8 x
)
��x y
;
��y z
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
��: ;
Callback
�� 
.
�� 
GetMailResult
�� *
(
��* +
mailSuccesResult
��+ ;
,
��; <
actualNickname
��= K
,
��K L
securityQuestion
��M ]
)
��] ^
;
��^ _
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
��; <
Callback
�� 
.
�� 
GetMailResult
�� *
(
��* +
mailSuccesResult
��+ ;
,
��; <
actualNickname
��= K
,
��K L
securityQuestion
��M ]
)
��] ^
;
��^ _
throw
�� 
new
�� 
System
�� $
.
��$ %
Net
��% (
.
��( )
Mail
��) -
.
��- .
SmtpException
��. ;
(
��; <
$str
��< |
)
��| }
;
��} ~
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
��; <
Callback
�� 
.
�� 
GetMailResult
�� &
(
��& '
mailSuccesResult
��' 7
,
��7 8
actualNickname
��9 G
,
��G H
securityQuestion
��I Y
)
��Y Z
;
��Z [
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
�� 
Callback
�� 
.
�� 
GetPinResult
�� !
(
��! "
	pinResult
��" +
,
��+ ,
actualNickname
��- ;
)
��; <
;
��< =
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
�� 
Callback
�� 
.
�� %
GetPasswordChangeResult
�� ,
(
��, -
changeResult
��- 9
)
��9 :
;
��: ;
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
�� 
.
�� 
Jugador
�� "
domainSearchedPlayer
��  4
=
��5 6
new
��7 :
Dominio
��; B
.
��B C
Jugador
��C J
{
�� 
	IdJugador
�� 
=
�� 
searchedPlayer
��  .
.
��. /
	idJugador
��/ 8
,
��8 9
Apodo
�� 
=
�� 
searchedPlayer
�� *
.
��* +
apodo
��+ 0
,
��0 1
CorreoElectronico
�� %
=
��& '
searchedPlayer
��( 6
.
��6 7
correoElectronico
��7 H
,
��H I
Status
�� 
=
�� 
searchedPlayer
�� +
.
��+ ,
status
��, 2
,
��2 3"
PreguntaRecuperacion
�� (
=
��) *
searchedPlayer
��+ 9
.
��9 :"
preguntaRecuperacion
��: N
,
��N O

IdLenguaje
�� 
=
��  
searchedPlayer
��! /
.
��/ 0
idioma
��0 6
}
�� 
;
��  
dataObtainedResult
�� "
=
��# $ 
DataObtainedResult
��% 7
.
��7 8
DataObtained
��8 D
;
��D E
Callback
�� 
.
�� 
SendActualPlayer
�� )
(
��) * 
dataObtainedResult
��* <
,
��< ="
domainSearchedPlayer
��> R
)
��R S
;
��S T
}
�� 
else
�� 
{
�� 
Dominio
�� 
.
�� 
Jugador
�� 
emptyPlayer
��  +
=
��, -
new
��. 1
Jugador
��2 9
(
��9 :
)
��: ;
;
��; <
Callback
�� 
.
�� 
SendActualPlayer
�� )
(
��) * 
dataObtainedResult
��* <
,
��< =
emptyPlayer
��> I
)
��I J
;
��J K
}
�� 
}
�� 	$
IPlayerManagerCallback
�� 
Callback
�� '
{
�� 	
get
�� 
{
�� 
return
�� 
OperationContext
�� '
.
��' (
Current
��( /
.
��/ 0 
GetCallbackChannel
��0 B
<
��B C$
IPlayerManagerCallback
��C Y
>
��Y Z
(
��Z [
)
��[ \
;
��\ ]
}
�� 
}
�� 	
}
�� 
public
�� 

partial
�� 
class
�� 
MainService
�� $
:
��% &
IRankingManager
��' 6
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
�� 	
activeMatches
�� 
[
�� 
matchNumber
�� %
]
��% &
.
��& '
playerTwoCallback
��' 8
.
��8 9
UpdateGameGUI
��9 F
(
��F G
updateBoardMatrix
��G X
,
��X Y
playerTwoCheckers
��Z k
,
��k l
playerOneCheckers
��m ~
)
��~ 
;�� �
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
�� 
Match
�� 
newCompleteGame
�� %
=
��& '"
playersQueuedClassic
��( <
.
��< =
First
��= B
(
��B C
)
��C D
;
��D E"
playersQueuedClassic
�� $
.
��$ %
Remove
��% +
(
��+ ,
newCompleteGame
��, ;
)
��; <
;
��< =
newCompleteGame
�� 
.
��  
playerTwoCallback
��  1
=
��2 3!
GameManagerCallback
��4 G
;
��G H
newCompleteGame
�� 
.
��  
playerTwoData
��  -
=
��. /
currentPlayer
��0 =
;
��= >
newCompleteGame
�� 
.
��  
matchActiveNumber
��  1
=
��2 3!
numberActiveMatches
��4 G
;
��G H"
playersQueuedClassic
�� $
.
��$ %
Sort
��% )
(
��) *
)
��* +
;
��+ ,
matchmakingResult
�� !
=
��" #
MatchmakingResult
��$ 5
.
��5 6
MATCH_FOUND
��6 A
;
��A B
activeMatches
�� 
.
�� 
Add
�� !
(
��! "
newCompleteGame
��" 1
)
��1 2
;
��2 3!
numberActiveMatches
�� #
++
��# %
;
��% &
try
�� 
{
�� 
newCompleteGame
�� #
.
��# $
playerOneCallback
��$ 5
.
��5 6"
GetMatchmakingResult
��6 J
(
��J K
matchmakingResult
��K \
,
��\ ]
newCompleteGame
��^ m
,
��m n

PLAYER_ONE
��o y
)
��y z
;
��z {!
GameManagerCallback
�� '
.
��' ("
GetMatchmakingResult
��( <
(
��< =
matchmakingResult
��= N
,
��N O
newCompleteGame
��P _
,
��_ `

PLAYER_TWO
��a k
)
��k l
;
��l m
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� /
)
��/ 0
{
�� 
matchmakingResult
�� %
=
��& '
MatchmakingResult
��( 9
.
��9 :#
UNABLE_TO_ENTER_MATCH
��: O
;
��O P!
GameManagerCallback
�� '
.
��' ("
GetMatchmakingResult
��( <
(
��< =
matchmakingResult
��= N
,
��N O
newCompleteGame
��P _
,
��_ `

PLAYER_TWO
��a k
)
��k l
;
��l m
}
�� 
}
�� 
else
�� 
{
�� 
Match
�� 
newGame
�� 
=
�� 
new
��  #
Match
��$ )
(
��) *
)
��* +
{
�� 
currentPlayer
�� !
=
��" #

PLAYER_ONE
��$ .
,
��. /
playerOneData
�� !
=
��" #
currentPlayer
��$ 1
,
��1 2
playerOneCallback
�� %
=
��& '!
GameManagerCallback
��( ;
,
��; <
}
�� 
;
�� "
playersQueuedClassic
�� $
.
��$ %
Add
��% (
(
��( )
newGame
��) 0
)
��0 1
;
��1 2
matchmakingResult
�� !
=
��" #
MatchmakingResult
��$ 5
.
��5 6
MATCH_NOT_FOUND
��6 E
;
��E F!
GameManagerCallback
�� #
.
��# $"
GetMatchmakingResult
��$ 8
(
��8 9
matchmakingResult
��9 J
,
��J K
newGame
��L S
,
��S T

PLAYER_ONE
��U _
)
��_ `
;
��` a
}
�� 
}
�� 	
public
�� 
void
�� 
Player2Turn
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
�� 	
activeMatches
�� 
[
�� 
matchNumber
�� %
]
��% &
.
��& '
playerOneCallback
��' 8
.
��8 9
UpdateGameGUI
��9 F
(
��F G
updateBoardMatrix
��G X
,
��X Y
playerTwoCheckers
��Z k
,
��k l
playerOneCheckers
��m ~
)
��~ 
;�� �
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
�� 	
}
�� 
public
�� 

partial
�� 
class
�� 
MainService
�� $
:
��% &
IBanManager
��' 2
{
�� !
IBanManagerCallback
�� 
BanCallback
�� '
{
�� 	
get
�� 
{
�� 
return
�� 
OperationContext
�� '
.
��' (
Current
��( /
.
��/ 0 
GetCallbackChannel
��0 B
<
��B C!
IBanManagerCallback
��C V
>
��V W
(
��W X
)
��X Y
;
��Y Z
}
�� 
}
�� 	
public
�� 
void
�� 
GetReportData
�� !
(
��! "
)
��" #
{
�� 	
AdminReportResult
�� 
result
�� $
=
��% &
AdminReportResult
��' 8
.
��8 9
NO_REPORTS_EXIST
��9 I
;
��I J
List
�� 
<
�� 
Dominio
�� 
.
�� 
Reporte
��  
>
��  !

reportList
��" ,
=
��- .
QueryReportData
��/ >
(
��> ?
)
��? @
;
��@ A
if
�� 
(
�� 

reportList
�� 
.
�� 
Count
��  
>
��! "
$num
��# $
)
��$ %
{
�� 
result
�� 
=
�� 
AdminReportResult
�� *
.
��* +
REPORT_EXISTS
��+ 8
;
��8 9
BanCallback
�� 
.
�� 
ReceiveReportData
�� -
(
��- .

reportList
��. 8
)
��8 9
;
��9 :
}
�� 
BanCallback
�� 
.
�� &
GetReportDataQueryResult
�� 0
(
��0 1
result
��1 7
)
��7 8
;
��8 9
}
�� 	
public
�� 
List
�� 
<
�� 
Dominio
�� 
.
�� 
Reporte
�� #
>
��# $
QueryReportData
��% 4
(
��4 5
)
��5 6
{
�� 	
List
�� 
<
�� 
Dominio
�� 
.
�� 
Reporte
��  
>
��  !"
currentPlayerReports
��" 6
=
��7 8
new
��9 <
List
��= A
<
��A B
Dominio
��B I
.
��I J
Reporte
��J Q
>
��Q R
(
��R S
)
��S T
;
��T U
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
��I J 
JugadorDataManager
�� 
playerManager
�� ,
=
��- .
new
��/ 2 
JugadorDataManager
��3 E
(
��E F
)
��F G
;
��G H
List
�� 
<
�� 

DataAccess
�� 
.
�� 
Reporte
�� #
>
��# $
queriedReportList
��% 6
=
��7 8
reportDataManager
��9 J
.
��J K
GetReportList
��K X
(
��X Y
)
��Y Z
;
��Z [
if
�� 
(
�� 
reportDataManager
�� !
.
��! "
GetReportList
��" /
(
��/ 0
)
��0 1
!=
��2 4
null
��5 9
)
��9 :
{
�� 
foreach
�� 
(
�� 

DataAccess
�� #
.
��# $
Reporte
��$ +
playerReport
��, 8
in
��9 ;
queriedReportList
��< M
)
��M N
{
�� "
currentPlayerReports
�� (
.
��( )
Add
��) ,
(
��, -
new
��- 0
Dominio
��1 8
.
��8 9
Reporte
��9 @
{
�� 
	IdReporte
�� !
=
��" #
playerReport
��$ 0
.
��0 1
	idReporte
��1 :
,
��: ;
Acusador
��  
=
��! "
playerManager
��# 0
.
��0 1!
GetDomainPlayerByID
��1 D
(
��D E
playerReport
��E Q
.
��Q R

idAcusador
��R \
)
��\ ]
,
��] ^
	Reportado
�� !
=
��" #
playerManager
��$ 1
.
��1 2!
GetDomainPlayerByID
��2 E
(
��E F
playerReport
��F R
.
��R S
idReportado
��S ^
)
��^ _
,
��_ `
DescripcionAcuso
�� (
=
��) *
playerReport
��+ 7
.
��7 8
descripcionAcuso
��8 H
??
��I K
default
��L S
(
��S T
string
��T Z
)
��Z [
}
�� 
)
�� 
;
�� 
}
�� 
}
�� 
return
�� "
currentPlayerReports
�� '
;
��' (
}
�� 	
public
�� 
void
�� 
	BanPlayer
�� 
(
�� 
string
�� $ 
reportedPlayerName
��% 7
)
��7 8
{
�� 	
int
�� 
isPlayerBanned
�� 
=
��  
$num
��! "
;
��" #
const
�� 
int
�� 
BAN_SAUCCESSFUL
�� %
=
��& '
$num
��( )
;
��) *
const
�� 
int
�� 
BAN_ALREADY
�� !
=
��" #
$num
��$ %
;
��% & 
JugadorDataManager
�� 
playerDataManager
�� 0
=
��1 2
new
��3 6 
JugadorDataManager
��7 I
(
��I J
)
��J K
;
��K L
	BanResult
�� 
	banResult
�� 
=
��  !
	BanResult
��" +
.
��+ ,
ERROR_BANNING
��, 9
;
��9 :

DataAccess
�� 
.
�� 
Jugador
�� 
reportedPlayer
�� -
=
��. /
playerDataManager
��0 A
.
��A B!
GetPlayerByNickname
��B U
(
��U V 
reportedPlayerName
��V h
)
��h i
;
��i j
isPlayerBanned
�� 
=
�� 
playerDataManager
�� .
.
��. /
	BanPlayer
��/ 8
(
��8 9
reportedPlayer
��9 G
.
��G H
apodo
��H M
)
��M N
;
��N O
if
�� 
(
�� 
isPlayerBanned
�� 
==
�� !
BAN_SAUCCESSFUL
��" 1
)
��1 2
{
�� 
MailMessage
�� 
emailContent
�� (
=
��) *
new
��+ .
MailMessage
��/ :
(
��: ;
)
��; <
;
��< =
emailContent
�� 
.
�� 
To
�� 
.
��  
Add
��  #
(
��# $
reportedPlayer
��$ 2
.
��2 3
correoElectronico
��3 D
)
��D E
;
��E F
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
]##) *�#
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