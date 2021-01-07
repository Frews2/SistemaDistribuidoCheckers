�
cD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\Contratos\IGameMatchManager.cs
	namespace 	
	Contratos
 
{		 
[

 
ServiceContract

 
(

 
CallbackContract

 %
=

& '
typeof

( .
(

. /%
IGameMatchManagerCallback

/ H
)

H I
)

I J
]

J K
public 

	interface 
IGameMatchManager &
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
CreateMatch 
( 
Dominio  
.  !
Jugador! (
currentPlayer) 6
,6 7
CheckersGameMode8 H
gameModeI Q
)Q R
;R S
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
Player1Turn 
( 
Checker  
[  !
]! "
[" #
]# $
updateBoardMatrix% 6
,6 7
int8 ;
matchNumber< G
,G H
intI L
playerTwoCheckersM ^
,^ _
int` c
playerOneCheckersd u
)u v
;v w
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
Player2Turn 
( 
Checker  
[  !
]! "
[" #
]# $
updateBoardMatrix% 6
,6 7
int8 ;
matchNumber< G
,G H
intI L
playerTwoCheckersM ^
,^ _
int` c
playerOneCheckersd u
)u v
;v w
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
FinishPlayerGame 
( 
int !
matchNumber" -
,- .
int/ 2
playerNumber3 ?
,? @
int@ C
playerTwoCheckersD U
,U V
intW Z
playerOneCheckers[ l
)l m
;m n
} 
[ 
ServiceContract 
] 
public 

	interface %
IGameMatchManagerCallback .
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
UpdateGameGUI 
( 
Checker "
[" #
]# $
[$ %
]% &
updateBoardMatrix' 8
,8 9
int: =
playerTwoCheckers> O
,O P
intQ T
playerOneCheckersU f
)f g
;g h
[!! 	
OperationContract!!	 
(!! 
IsOneWay!! #
=!!$ %
true!!& *
)!!* +
]!!+ ,
void"" 

FinishGame"" 
("" 
int"" 
playerTwoCheckers"" -
,""- .
int""/ 2
playerOneCheckers""3 D
)""D E
;""E F
[$$ 	
OperationContract$$	 
($$ 
IsOneWay$$ #
=$$$ %
true$$& *
)$$* +
]$$+ ,
void%%  
GetMatchmakingResult%% !
(%%! "
MatchmakingResult%%" 3
result%%4 :
,%%: ;
Match%%< A
match%%B G
,%%G H
int%%I L
playerNumber%%M Y
)%%Y Z
;%%Z [
['' 	
OperationContract''	 
('' 
IsOneWay'' #
=''$ %
true''& *
)''* +
]''+ ,
void(( 
UpdateMatchNumber(( 
((( 
int(( "
newMatchNumber((# 1
)((1 2
;((2 3
})) 
}** �*
`D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\Contratos\IPlayerManager.cs
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
(. /"
IPlayerManagerCallback/ E
)E F
)F G
]G H
public 

	interface 
IPlayerManager #
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
Login 
( 
Jugador 
player !
)! "
;" #
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 

SavePlayer 
( 
Jugador 
player  &
)& '
;' (
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
VerifyPlayer 
( 
Jugador !
player" (
)( )
;) *
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
SendMail 
( 
Jugador 
player $
)$ %
;% &
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
PasswordForgotMail 
(  
string  &
nickname' /
)/ 0
;0 1
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
	VerifyPin 
( 
string 
nickname &
,& '
string( .
pin/ 2
)2 3
;3 4
[   	
OperationContract  	 
(   
IsOneWay   #
=  $ %
true  & *
)  * +
]  + ,
void!! 
ChangePassword!! 
(!! 
string!! "
nickname!!# +
,!!+ ,
string!!- 3
newPassword!!4 ?
)!!? @
;!!@ A
[## 	
OperationContract##	 
(## 
IsOneWay## #
=##$ %
true##& *
)##* +
]##+ ,
void$$ 
GetActualPlayer$$ 
($$ 
Jugador$$ $
actualPlayer$$% 1
)$$1 2
;$$2 3
}%% 
['' 
ServiceContract'' 
]'' 
public(( 

	interface(( "
IPlayerManagerCallback(( +
{)) 
[** 	
OperationContract**	 
(** 
IsOneWay** #
=**$ %
true**& *
)*** +
]**+ ,
void++ 
GetLoginResult++ 
(++ 
LoginResult++ '
resultadoLogin++( 6
,++6 7
Jugador++7 >
player++? E
)++E F
;++F G
[-- 	
OperationContract--	 
(-- 
IsOneWay-- #
=--$ %
true--& *
)--* +
]--+ ,
void.. 
GetSaveResult.. 
(.. 

SaveResult.. %
resultadoGuardado..& 7
,..7 8
Jugador..9 @
player..A G
)..G H
;..H I
[00 	
OperationContract00	 
(00 
IsOneWay00 #
=00$ %
true00& *
)00* +
]00+ ,
void11 
GetVerifyResult11 
(11 
VerificationResult11 /!
resultadoVerificacion110 E
)11E F
;11F G
[33 	
OperationContract33	 
(33 
IsOneWay33 #
=33$ %
true33& *
)33* +
]33+ ,
void44 
GetMailResult44 
(44 

MailResult44 %
resultadoCorreo44& 5
,445 6
string447 =
actualNickname44> L
)44L M
;44M N
[66 	
OperationContract66	 
(66 
IsOneWay66 #
=66$ %
true66& *
)66* +
]66+ ,
void77 
GetPinResult77 
(77 
	PinResult77 #
verifiedPinResult77$ 5
,775 6
string777 =
playerNickname77> L
)77L M
;77M N
[99 	
OperationContract99	 
(99 
IsOneWay99 #
=99$ %
true99& *
)99* +
]99+ ,
void:: #
GetPasswordChangeResult:: $
(::$ % 
PasswordChangeResult::% 9!
passwordChangedResult::: O
)::O P
;::P Q
[<< 	
OperationContract<<	 
(<< 
IsOneWay<< #
=<<$ %
true<<& *
)<<* +
]<<+ ,
void== 
SendActualPlayer== 
(== 
DataObtainedResult== 0
dataObtainedResult==1 C
,==C D
Dominio==E L
.==L M
Jugador==M T
actualPlayer==U a
)==a b
;==b c
}>> 
}AA �
^D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\Contratos\IChatManager.cs
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
IChatManagerCallback/ C
)C D
)D E
]E F
	interface 
IChatManager 
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
SendText 
( 
string 
destination (
,( )
string* 0
message1 8
)8 9
;9 :
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
GetChatCallback 
( 
) 
; 
} 
[ 
ServiceContract 
] 
public 

	interface  
IChatManagerCallback )
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
ReceiveText 
( 
string 
source  &
,& '
string( .
message/ 6
)6 7
;7 8
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void  
GetSentMessageResult !
(! "
SendMessageResult" 3
result4 :
): ;
;; <
} 
} �
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
RankingResult +
	resultado, 5
)5 6
;6 7
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
} ��
]D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\Contratos\MainService.cs
	namespace 	
	Contratos
 
{ 
[ 
ServiceBehavior 
( 
InstanceContextMode (
=) *
InstanceContextMode+ >
.> ?
Single? E
,E F
ConcurrencyModeG V
=W X
ConcurrencyModeY h
.h i
Multiplei q
)q r
]r s
public 

partial 
class 
MainService $
:% &
IPlayerManager' 5
{ 
public 
static 
readonly 
string %
ACTIVATION_STATE& 6
=7 8
$str9 H
;H I
public 
static 
readonly 
string %
ACTIVE_STATE& 2
=3 4
$str5 =
;= >
public 
static 
readonly 
string %
REPORTED_STATE& 4
=5 6
$str7 D
;D E
public 
static 
readonly 
string %

DOWN_STATE& 0
=1 2
$str3 9
;9 :
JugadorDataManager 
jugadorDataManager -
=. /
new0 3
JugadorDataManager4 F
(F G
)G H
;H I
HashManager 
hashText 
= 
new "
HashManager# .
(. /
)/ 0
;0 1
private 

Dictionary 
< 
string !
,! ""
IPlayerManagerCallback# 9
>9 :
playersLoggedIn; J
=K L
newM P

DictionaryQ [
<[ \
string\ b
,b c"
IPlayerManagerCallbackd z
>z {
({ |
)| }
;} ~
public"" 
void"" 
Login"" 
("" 
Jugador"" !
player""" (
)""( )
{## 	
LoginResult$$ 
result$$ 
=$$  
LoginResult$$! ,
.$$, -
NoExisteJugador$$- <
;$$< =
AdminDataManager%% 
adminDataManager%% -
=%%. /
new%%0 3
AdminDataManager%%4 D
(%%D E
)%%E F
;%%F G
if&& 
(&& 
adminDataManager&&  
.&&  !
CheckNickname&&! .
(&&. /
player&&/ 5
.&&5 6
Apodo&&6 ;
)&&; <
)&&< =
{'' 
if(( 
((( 
adminDataManager(( $
.(($ %
EsPasswordCorrecto((% 7
(((7 8
hashText((8 @
.((@ A

TextToHash((A K
(((K L
player((L R
.((R S
Contrasenia((S ^
)((^ _
,((_ `
player((a g
.((g h
Apodo((h m
)((m n
)((n o
{)) 
result** 
=** 
LoginResult** (
.**( )
EsAdmin**) 0
;**0 1
}++ 
else,, 
{-- 
result.. 
=.. 
LoginResult.. (
...( )
PasswordIncorrecto..) ;
;..; <
}// 
}00 
else11 
{22 
JugadorDataManager33 "
jugadorDataManager33# 5
=336 7
new338 ;
JugadorDataManager33< N
(33N O
)33O P
;33P Q
if44 
(44 
jugadorDataManager44 &
.44& '
CheckNickname44' 4
(444 5
player445 ;
.44; <
Apodo44< A
)44A B
)44B C
{55 
if66 
(66 
jugadorDataManager66 *
.66* +

CheckState66+ 5
(665 6
player666 <
.66< =
Apodo66= B
)66B C
)66C D
{77 
if88 
(88 
jugadorDataManager88 .
.88. /
EsPasswordCorrecto88/ A
(88A B
hashText88B J
.88J K

TextToHash88K U
(88U V
player88V \
.88\ ]
Contrasenia88] h
)88h i
,88i j
player88k q
.88q r
Apodo88r w
)88w x
)88x y
{99 
result:: "
=::# $
LoginResult::% 0
.::0 1#
ExisteJugadorVerificado::1 H
;::H I

DataAccess;; &
.;;& '
Jugador;;' .
searchedPlayer;;/ =
=;;> ?
jugadorDataManager;;@ R
.;;R S
GetPlayerByNickname;;S f
(;;f g
player;;g m
.;;m n
Apodo;;n s
);;s t
;;;t u
player<< "
.<<" #

IdLenguaje<<# -
=<<. /
searchedPlayer<<0 >
.<<> ?
idioma<<? E
;<<E F
}== 
else>> 
{?? 
result@@ "
=@@# $
LoginResult@@% 0
.@@0 1
PasswordIncorrecto@@1 C
;@@C D
}AA 
}BB 
elseCC 
{DD 
resultEE 
=EE  
LoginResultEE! ,
.EE, -%
ExisteJugadorNoVerificadoEE- F
;EEF G
}FF 
}GG 
elseHH 
{II 
resultJJ 
=JJ 
LoginResultJJ (
.JJ( )
NoExisteJugadorJJ) 8
;JJ8 9
}KK 
}LL 
CallbackNN 
.NN 
GetLoginResultNN #
(NN# $
resultNN$ *
,NN* +
playerNN, 2
)NN2 3
;NN3 4
}OO 	
publicQQ 
voidQQ 

SavePlayerQQ 
(QQ 
DominioQQ &
.QQ& '
JugadorQQ' .
playerQQ/ 5
)QQ5 6
{RR 	
JugadorDataManagerSS 
playerDataManagerSS 0
=SS1 2
newSS3 6
JugadorDataManagerSS7 I
(SSI J
)SSJ K
;SSK L
intUU 
columnasAfectadasUU !
=UU" #
$numUU$ %
;UU% &
stringVV 
eMailVV 
=VV 
playerVV !
.VV! "
CorreoElectronicoVV" 3
;VV3 4

SaveResultWW 

saveResultWW !
=WW" #

SaveResultWW$ .
.WW. /
ErrorGuardadoWW/ <
;WW< =

MailResultXX 

mailResultXX !
=XX" #

MailResultXX$ .
.XX. /
	SendErrorXX/ 8
;XX8 9
boolZZ 
nicknameExistsZZ 
=ZZ  !
playerDataManagerZZ" 3
.ZZ3 4
CheckNicknameZZ4 A
(ZZA B
playerZZB H
.ZZH I
ApodoZZI N
)ZZN O
;ZZO P
if\\ 
(\\ 
nicknameExists\\ 
==\\ !
false\\" '
)\\' (
{]] 
bool^^ 
emailExists^^  
=^^! "
playerDataManager^^# 4
.^^4 5

CheckEmail^^5 ?
(^^? @
player^^@ F
.^^F G
CorreoElectronico^^G X
)^^X Y
;^^Y Z
if`` 
(`` 
emailExists`` 
==``  "
false``# (
)``( )
{aa 

DataAccessbb 
.bb 
Jugadorbb &
	newPlayerbb' 0
=bb1 2
newbb3 6

DataAccessbb7 A
.bbA B
JugadorbbB I
{cc 
apododd 
=dd 
playerdd  &
.dd& '
Apododd' ,
,dd, -
contraseniaee #
=ee$ %
hashTextee& .
.ee. /

TextToHashee/ 9
(ee9 :
playeree: @
.ee@ A
ContraseniaeeA L
)eeL M
,eeM N
correoElectronicoff )
=ff* +
playerff, 2
.ff2 3
CorreoElectronicoff3 D
,ffD E
statusgg 
=gg  
ACTIVATION_STATEgg! 1
,gg1 2!
respuestaConfirmacionhh -
=hh. /
playerhh0 6
.hh6 7!
RespuestaConfirmacionhh7 L
,hhL M 
preguntaRecuperacionii ,
=ii- .
playerii/ 5
.ii5 6 
PreguntaRecuperacionii6 J
,iiJ K
pinConfirmacionjj '
=jj( )
playerjj* 0
.jj0 1
PinConfirmacionjj1 @
,jj@ A
	idCreadorkk !
=kk" #
$numkk$ %
,kk% &
idiomall 
=ll  
playerll! '
.ll' (

IdLenguajell( 2
}mm 
;mm 
JugadorDataManageroo &
jugadorDataManageroo' 9
=oo: ;
newoo< ?
JugadorDataManageroo@ R
(ooR S
)ooS T
;ooT U
columnasAfectadaspp %
=pp& '
jugadorDataManagerpp( :
.pp: ;
SaveNewPlayerpp; H
(ppH I
	newPlayerppI R
)ppR S
;ppS T
ifrr 
(rr 
columnasAfectadasrr )
>rr* +
$numrr, -
)rr- .
{ss 

saveResulttt "
=tt# $

SaveResulttt% /
.tt/ 0
JugadorGuardadott0 ?
;tt? @
Callbackuu  
.uu  !
GetSaveResultuu! .
(uu. /

saveResultuu/ 9
,uu9 :
playeruu; A
)uuA B
;uuB C
Systemww 
.ww 
Netww "
.ww" #
Mailww# '
.ww' (
MailMessageww( 3
mensajeww4 ;
=ww< =
newww> A
SystemwwB H
.wwH I
NetwwI L
.wwL M
MailwwM Q
.wwQ R
MailMessagewwR ]
(ww] ^
)ww^ _
;ww_ `
mensajeyy 
.yy  
Toyy  "
.yy" #
Addyy# &
(yy& '
	newPlayeryy' 0
.yy0 1
correoElectronicoyy1 B
)yyB C
;yyC D
mensajezz 
.zz  
Subjectzz  '
=zz( )
$strzz* O
+zzP Q
playerzzR X
.zzX Y
ApodozzY ^
;zz^ _
mensaje{{ 
.{{  
Body{{  $
={{% &
$str{{' .
+{{/ 0
player{{1 7
.{{7 8
Apodo{{8 =
+{{> ?
$str{{@ l
+{{m n
$str|| S
+||T U
	newPlayer||V _
.||_ `
pinConfirmacion||` o
;||o p
mensaje}} 
.}}  
From}}  $
=}}% &
new}}' *
System}}+ 1
.}}1 2
Net}}2 5
.}}5 6
Mail}}6 :
.}}: ;
MailAddress}}; F
(}}F G
$str}}G b
,}}b c
$str}}d {
)}}{ |
;}}| }
System 
. 
Net "
." #
Mail# '
.' (

SmtpClient( 2
cliente3 :
=; <
new= @
SystemA G
.G H
NetH K
.K L
MailL P
.P Q

SmtpClientQ [
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
��J K
$str
��K f
,
��f g
$str
��h y
)
��y z
,
��z {
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
��$ %
GetMailResult
��% 2
(
��2 3

mailResult
��3 =
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
�� 
Callback
�� 
.
�� 
GetSaveResult
�� "
(
��" #

saveResult
��# -
,
��- .
player
��/ 5
)
��5 6
;
��6 7
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
jugadorDataManager
�� 1
=
��2 3
new
��4 7 
JugadorDataManager
��8 J
(
��J K
)
��K L
;
��L M
if
�� 
(
��  
jugadorDataManager
�� "
.
��" #
CheckNickname
��# 0
(
��0 1
player
��1 7
.
��7 8
Apodo
��8 =
)
��= >
)
��> ?
{
�� 
if
�� 
(
��  
jugadorDataManager
�� &
.
��& '
PinCorrecto
��' 2
(
��2 3
player
��3 9
.
��9 :
Apodo
��: ?
,
��? @
player
��A G
.
��G H
PinConfirmacion
��H W
)
��W X
)
��X Y
{
�� 
int
�� 
result
�� 
=
��   
jugadorDataManager
��! 3
.
��3 4
VerifyNewPlayer
��4 C
(
��C D
new
��D G

DataAccess
��H R
.
��R S
Jugador
��S Z
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
=
��( )

MailResult
��* 4
.
��4 5
	SendError
��5 >
;
��> ?
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
��> ?
$str
��? Z
,
��Z [
$str
��\ m
)
��m n
,
��n o
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
�� 
GetMailResult
�� &
(
��& '
mailSuccesResult
��' 7
,
��7 8
player
��9 ?
.
��? @
Apodo
��@ E
)
��E F
;
��F G
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
�� 
Callback
�� 
.
�� 
GetMailResult
�� &
(
��& '
mailSuccesResult
��' 7
,
��7 8
player
��9 ?
.
��? @
Apodo
��@ E
)
��E F
;
��F G
throw
�� 
new
�� 
System
��  
.
��  !
Net
��! $
.
��$ %
Mail
��% )
.
��) *
SmtpException
��* 7
(
��7 8
$str
��8 x
)
��x y
;
��y z
}
�� 
}
�� 	
public
�� 
void
��  
PasswordForgotMail
�� &
(
��& '
string
��' -
actualNickname
��. <
)
��< =
{
�� 	 
JugadorDataManager
��  
jugadorDataManager
�� 1
=
��2 3
new
��4 7 
JugadorDataManager
��8 J
(
��J K
)
��K L
;
��L M

MailResult
�� 
mailSuccesResult
�� '
=
��( )

MailResult
��* 4
.
��4 5
	SendError
��5 >
;
��> ?
if
�� 
(
��  
jugadorDataManager
�� "
.
��" #
CheckNickname
��# 0
(
��0 1
actualNickname
��1 ?
)
��? @
)
��@ A
{
�� 

DataAccess
�� 
.
�� 
Jugador
�� "
player
��# )
=
��* +
new
��, /

DataAccess
��0 :
.
��: ;
Jugador
��; B
(
��B C
)
��C D
;
��D E
player
�� 
=
��  
jugadorDataManager
�� +
.
��+ ,!
ChangePinByNickname
��, ?
(
��? @
actualNickname
��@ N
)
��N O
;
��O P
System
�� 
.
�� 
Net
�� 
.
�� 
Mail
�� 
.
��  
MailMessage
��  +
mailMesagge
��, 7
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
��[ \
mailMesagge
�� 
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
correoElectronico
��* ;
)
��; <
;
��< =
mailMesagge
�� 
.
�� 
Subject
�� #
=
��$ %
$str
��& K
+
��L M
player
��N T
.
��T U
apodo
��U Z
;
��Z [
mailMesagge
�� 
.
�� 
Body
��  
=
��! "
$str
��# *
+
��+ ,
player
��- 3
.
��3 4
apodo
��4 9
+
��: ;
$str
��< j
+
��k l
$str
�� \
+
��] ^
player
��_ e
.
��e f
pinConfirmacion
��f u
;
��u v
mailMesagge
�� 
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
�� 
.
�� 
Net
�� 
.
�� 
Mail
�� 
.
��  

SmtpClient
��  *
client
��+ 1
=
��2 3
new
��4 7
System
��8 >
.
��> ?
Net
��? B
.
��B C
Mail
��C G
.
��G H

SmtpClient
��H R
{
�� 
Credentials
�� 
=
��  !
new
��" %
System
��& ,
.
��, -
Net
��- 0
.
��0 1
NetworkCredential
��1 B
(
��B C
$str
��C ^
,
��^ _
$str
��` q
)
��q r
,
��r s
Port
�� 
=
�� 
$num
�� 
,
�� 
	EnableSsl
�� 
=
�� 
true
��  $
,
��$ %
Host
�� 
=
�� 
$str
�� +
,
��+ ,
}
�� 
;
�� 
try
�� 
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
)
��K L
;
��L M
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
�� 
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
)
��K L
;
��L M
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
)
��G H
;
��H I
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
)
��E F
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
�� 
	pinResult
�� 
=
�� 
	PinResult
�� %
.
��% &
VerifiedPin
��& 1
;
��1 2
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
�� 
public
�� 
void
�� 
GetRankingData
�� "
(
��" #
)
��# $
{
�� 	
RankingResult
�� 
result
��  
;
��  !
List
�� 
<
�� 
Dominio
�� 
.
�� 
Ranking
��  
>
��  !
rankings
��" *
=
��+ ,
QueryRankingData
��- =
(
��= >
)
��> ?
;
��? @
if
�� 
(
�� 
rankings
�� 
==
�� 
null
��  
)
��  !
{
�� 
result
�� 
=
�� 
RankingResult
�� &
.
��& '

NO_RANKING
��' 1
;
��1 2
}
�� 
else
�� 
{
�� 
result
�� 
=
�� 
RankingResult
�� &
.
��& '
RANKING_EXISTS
��' 5
;
��5 6
RankingCallback
�� 
.
��  
GetRankingResult
��  0
(
��0 1
result
��1 7
)
��7 8
;
��8 9
RankingCallback
�� 
.
��   
ReceiveRankingData
��  2
(
��2 3
rankings
��3 ;
)
��; <
;
��< =
}
�� 
}
�� 	
public
�� 
List
�� 
<
�� 
Dominio
�� 
.
�� 
Ranking
�� #
>
��# $
QueryRankingData
��% 5
(
��5 6
)
��6 7
{
�� 	
List
�� 
<
�� 
Dominio
�� 
.
�� 
Ranking
��  
>
��  !
currentRankings
��" 1
=
��2 3
new
��4 7
List
��8 <
<
��< =
Dominio
��= D
.
��D E
Ranking
��E L
>
��L M
(
��M N
)
��N O
;
��O P 
RankingDataManager
�� 
dataManager
�� *
=
��+ ,
new
��- 0 
RankingDataManager
��1 C
(
��C D
)
��D E
;
��E F
List
�� 
<
�� 

DataAccess
�� 
.
�� 
Ranking
�� #
>
��# $ 
queriedRankingList
��% 7
=
��8 9
dataManager
��: E
.
��E F
GetRankingList
��F T
(
��T U
)
��U V
;
��V W
if
�� 
(
�� 
dataManager
�� 
.
�� 
GetRankingList
�� *
(
��* +
)
��+ ,
!=
��- /
null
��0 4
)
��4 5
{
�� 
foreach
�� 
(
�� 

DataAccess
�� #
.
��# $
Ranking
��$ +
playerRanking
��, 9
in
��: < 
queriedRankingList
��= O
)
��O P
{
�� 
currentRankings
�� #
.
��# $
Add
��$ '
(
��' (
new
��( +
Dominio
��, 3
.
��3 4
Ranking
��4 ;
{
�� 
	IdRanking
�� !
=
��" #
playerRanking
��$ 1
.
��1 2
	idRanking
��2 ;
,
��; <
Duenio
�� 
=
��  
dataManager
��! ,
.
��, -
GetPlayerByID
��- :
(
��: ;
playerRanking
��; H
.
��H I
idDuenio
��I Q
)
��Q R
,
��R S
FechaRegistracion
�� )
=
��* +
playerRanking
��, 9
.
��9 :
fechaRegistracion
��: K
??
��L N
default
��O V
(
��V W
DateTime
��W _
)
��_ `
,
��` a
NumeroVictorias
�� '
=
��( )
playerRanking
��* 7
.
��7 8
numeroVictorias
��8 G
??
��H J
default
��K R
(
��R S
int
��S V
)
��V W
,
��W X
PartidasJugadas
�� '
=
��( )
playerRanking
��* 7
.
��7 8
partidasJugadas
��8 G
??
��H J
default
��K R
(
��R S
int
��S V
)
��V W
,
��W X
Rank
�� 
=
�� 
playerRanking
�� ,
.
��, -
rank
��- 1
??
��2 4
default
��5 <
(
��< =
int
��= @
)
��@ A
,
��A B
NumeroPerdidas
�� &
=
��' (
playerRanking
��) 6
.
��6 7
numeroPerdidas
��7 E
??
��F H
default
��I P
(
��P Q
int
��Q T
)
��T U
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
��% &
IGameMatchManager
��' 8
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
��) *
;
��* +
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
��( )'
IGameMatchManagerCallback
�� !&
GameMatchManagerCallback
��" :
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
��B C'
IGameMatchManagerCallback
��C \
>
��\ ]
(
��] ^
)
��^ _
;
��_ `
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
=
��0 1
MatchmakingResult
��2 C
.
��C D#
UNABLE_TO_ENTER_MATCH
��D Y
;
��Y Z
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
��& '
new
��( +
Match
��, 1
(
��1 2
)
��2 3
;
��3 4
newCompleteGame
�� 
=
��  !"
playersQueuedClassic
��" 6
.
��6 7
First
��7 <
(
��< =
)
��= >
;
��> ?"
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
��2 3&
GameMatchManagerCallback
��4 L
as
��M O'
IGameMatchManagerCallback
��P i
;
��i j
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
��% &&
GameMatchManagerCallback
�� (
.
��( )"
GetMatchmakingResult
��) =
(
��= >
matchmakingResult
��> O
,
��O P
newCompleteGame
��Q `
,
��` a

PLAYER_TWO
��b l
)
��l m
;
��m n
newCompleteGame
�� 
.
��  
playerOneCallback
��  1
.
��1 2"
GetMatchmakingResult
��2 F
(
��F G
matchmakingResult
��G X
,
��X Y
newCompleteGame
��Z i
,
��i j

PLAYER_ONE
��k u
)
��u v
;
��v w
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
�� %
=
��& '

PLAYER_ONE
��( 2
,
��2 3
playerOneData
�� %
=
��& '
currentPlayer
��( 5
,
��5 6
playerOneCallback
�� )
=
��* +&
GameMatchManagerCallback
��, D
as
��E G'
IGameMatchManagerCallback
��H a
,
��a b
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
��E F&
GameMatchManagerCallback
�� (
.
��( )"
GetMatchmakingResult
��) =
(
��= >
matchmakingResult
��> O
,
��O P
newGame
��Q X
,
��X Y

PLAYER_ONE
��Z d
)
��d e
;
��e f
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
��> A
matchNumber
��B M
,
��M N
int
��N Q
playerTwoCheckers
��R c
,
��c d
int
��e h
playerOneCheckers
��i z
)
��z {
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
playerOneCallback
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
�� 
FinishPlayerGame
�� $
(
��$ %
int
��% (
matchNumber
��) 4
,
��4 5
int
��6 9
playerNumber
��: F
,
��F G
int
��H K
playerTwoCheckers
��L ]
,
��] ^
int
��_ b
playerOneCheckers
��c t
)
��t u
{
�� 	
if
�� 
(
�� 
playerNumber
�� 
==
�� 

PLAYER_ONE
��  *
)
��* +
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
��< =

FinishGame
��= G
(
��G H
playerTwoCheckers
��H Y
,
��Y Z
playerOneCheckers
��[ l
)
��l m
;
��m n
}
�� 
else
�� 
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
��< =

FinishGame
��= G
(
��G H
playerTwoCheckers
��H Y
,
��Y Z
playerOneCheckers
��[ l
)
��l m
;
��m n
}
��  
RankingDataManager
��  
rankingDataManager
�� 1
=
��2 3
new
��4 7 
RankingDataManager
��8 J
(
��J K
)
��K L
;
��L M 
rankingDataManager
�� 
.
��  
UpdateMatchResults
�� 1
(
��1 2
activeMatches
��2 ?
[
��? @
matchNumber
��@ K
]
��K L
.
��L M
playerOneData
��M Z
,
��Z [
playerOneCheckers
��[ l
,
��l m
activeMatches
��m z
[
��z {
matchNumber��{ �
]��� �
.��� �
playerTwoData��� �
,��� �!
playerTwoCheckers��� �
,��� �
playerNumber��� �
)��� �
;��� �!
numberActiveMatches
�� 
--
�� !
;
��! "
activeMatches
�� 
.
�� 
RemoveAt
�� "
(
��" #
matchNumber
��# .
)
��. /
;
��/ 0
int
�� 
listPosition
�� 
;
�� 
for
�� 
(
�� 
listPosition
�� 
=
�� 
matchNumber
��  +
;
��+ ,
listPosition
��- 9
<
��9 :
activeMatches
��; H
.
��H I
Count
��I N
;
��N O
listPosition
��P \
++
��\ ^
)
��^ _
{
�� 
activeMatches
�� 
[
�� 
listPosition
�� *
]
��* +
.
��+ ,
matchActiveNumber
��, =
--
��= ?
;
��? @
activeMatches
�� 
[
�� 
listPosition
�� *
]
��* +
.
��+ ,
playerOneCallback
��, =
.
��= >
UpdateMatchNumber
��> O
(
��O P
activeMatches
��P ]
[
��] ^
listPosition
��^ j
]
��j k
.
��k l
matchActiveNumber
��l }
)
��} ~
;
��~ 
activeMatches
�� 
[
�� 
listPosition
�� *
]
��* +
.
��+ ,
playerTwoCallback
��, =
.
��= >
UpdateMatchNumber
��> O
(
��O P
activeMatches
��P ]
[
��] ^
listPosition
��^ j
]
��j k
.
��k l
matchActiveNumber
��l }
)
��} ~
;
��~ 
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
IChatManager
��' 3
{
�� "
IChatManagerCallback
�� 
ChatCallback
�� )
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
IChatManagerCallback
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
�� 
GetChatCallback
�� #
(
��# $
)
��$ %
{
�� 	
throw
�� 
new
�� %
NotImplementedException
�� -
(
��- .
)
��. /
;
��/ 0
}
�� 	
public
�� 
void
�� 
SendText
�� 
(
�� 
string
�� #
destination
��$ /
,
��/ 0
string
��1 7
message
��8 ?
)
��? @
{
�� 	
throw
�� 
new
�� %
NotImplementedException
�� -
(
��- .
)
��. /
;
��/ 0
}
�� 	
}
�� 
}�� �
WD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\Contratos\Match.cs
	namespace

 	
	Contratos


 
{ 
public 

class 
Match 
{ 
public 
int 
matchActiveNumber $
;$ %
public 
int 
currentPlayer  
;  !
public %
IGameMatchManagerCallback (
playerOneCallback) :
;: ;
public %
IGameMatchManagerCallback (
playerTwoCallback) :
;: ;
public 
Dominio 
. 
Jugador 
playerOneData ,
;, -
public 
Dominio 
. 
Jugador 
playerTwoData ,
;, -
} 
} �
iD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\Contratos\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str $
)$ %
]% &
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
$str &
)& '
]' (
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
]$$) *�
^D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\Contratos\StatesResult.cs
	namespace 	
	Contratos
 
{ 
public		 

enum		 
Checker		 
{

 
	freeSpace 
, 
player1Checker 
, 
player1King 
, 
player2Checker 
, 
player2King 
} 
public 

enum 
CheckersGameMode  
{ 
ClassicCheckers 
= 
$num 
, 
SuicidalCheckers 
= 
$num 
, 
CanadianCheckers 
= 
$num 
, 
ItalianCheckers 
= 
$num 
, 
NoGame 
= 
$num 
} 
public 

enum 
MatchmakingResult !
{ 
MATCH_FOUND 
= 
$num 
, 
MATCH_NOT_FOUND 
= 
$num 
, !
UNABLE_TO_ENTER_MATCH 
= 
$num  !
}   
public"" 
enum"" 
VerificationResult"" 
{## 
PinIncorrecto$$ 
=$$ 
$num$$ 
,$$ 
NoExisteJugador%% 
=%% 
$num%% 
,%%  
VerificacionExistosa&& 
=&& 
$num&&  
}'' 
public)) 

enum)) 
LoginResult)) 
{** 
PasswordIncorrecto++ 
=++ 
$num++ 
,++ 
NoExisteJugador,, 
=,, 
$num,, 
,,, #
ExisteJugadorVerificado-- 
=--  !
$num--" #
,--# $%
ExisteJugadorNoVerificado.. !
=.." #
$num..$ %
,..% &
EsAdmin// 
=// 
$num// 
}00 
public22 

enum22 

SaveResult22 
{33 
JugadorGuardado44 
=44 
$num44 
,44 
NicknameExistente55 
=55 
$num55 
,55 
CorreoExistente66 
=66 
$num66 
,66 
ErrorGuardado77 
=77 
$num77 
,77 
}88 
public:: 

enum:: 

MailResult:: 
{;; 
MailSend<< 
=<< 
$num<< 
,<< 
	SendError== 
=== 
$num== 
,== 
UnknownPlayer>> 
=>> 
$num>> 
}?? 
publicAA 

enumAA 
	PinResultAA 
{BB 
VerifiedPinCC 
=CC 
$numCC 
,CC 

UnknownPinDD 
=DD 
$numDD 
}EE 
publicGG 

enumGG  
PasswordChangeResultGG $
{HH 
ChangedPasswordII 
=II 
$numII 
,II 
ErrorChangingJJ 
=JJ 
$numJJ 
}KK 
publicMM 

enumMM 
DataObtainedResultMM "
{NN 
DataObtainedOO 
=OO 
$numOO 
,OO 
ErrorObtainingDataPP 
=PP 
$numPP 
}QQ 
}RR 