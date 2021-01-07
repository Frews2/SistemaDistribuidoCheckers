õ
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
}** —*
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
}AA Ÿ
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
} –
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
} ßú
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
€€ 
Credentials
 '
=
( )
new
* -
System
. 4
.
4 5
Net
5 8
.
8 9
NetworkCredential
9 J
(
J K
$str
K f
,
f g
$str
h y
)
y z
,
z {
Port
‚‚  
=
‚‚! "
$num
‚‚# &
,
‚‚& '
	EnableSsl
ƒƒ %
=
ƒƒ& '
true
ƒƒ( ,
,
ƒƒ, -
Host
„„  
=
„„! "
$str
„„# 3
,
„„3 4
}
…… 
;
…… 
try
†† 
{
‡‡ 
cliente
ˆˆ #
.
ˆˆ# $
Send
ˆˆ$ (
(
ˆˆ( )
mensaje
ˆˆ) 0
)
ˆˆ0 1
;
ˆˆ1 2
}
‰‰ 
catch
ŠŠ 
(
ŠŠ 
System
ŠŠ %
.
ŠŠ% &
Net
ŠŠ& )
.
ŠŠ) *
Mail
ŠŠ* .
.
ŠŠ. /
SmtpException
ŠŠ/ <
)
ŠŠ< =
{
‹‹ 
Callback
ŒŒ $
.
ŒŒ$ %
GetMailResult
ŒŒ% 2
(
ŒŒ2 3

mailResult
ŒŒ3 =
,
ŒŒ= >
player
ŒŒ? E
.
ŒŒE F
Apodo
ŒŒF K
)
ŒŒK L
;
ŒŒL M
throw
 !
new
" %
System
& ,
.
, -
Net
- 0
.
0 1
Mail
1 5
.
5 6
SmtpException
6 C
(
C D
$strD „
)„ …
;… †
}
 
}
 
else
 
{
‘‘ 

saveResult
’’ "
=
’’# $

SaveResult
’’% /
.
’’/ 0
ErrorGuardado
’’0 =
;
’’= >
Callback
““  
.
““  !
GetSaveResult
““! .
(
““. /

saveResult
““/ 9
,
““9 :
player
““; A
)
““A B
;
““B C
}
”” 
}
•• 
else
–– 
{
—— 

saveResult
˜˜ 
=
˜˜  

SaveResult
˜˜! +
.
˜˜+ ,
CorreoExistente
˜˜, ;
;
˜˜; <
Callback
™™ 
.
™™ 
GetSaveResult
™™ *
(
™™* +

saveResult
™™+ 5
,
™™5 6
player
™™7 =
)
™™= >
;
™™> ?
}
šš 
}
›› 
else
œœ 
{
 

saveResult
 
=
 

SaveResult
 '
.
' (
NicknameExistente
( 9
;
9 :
Callback
ŸŸ 
.
ŸŸ 
GetSaveResult
ŸŸ &
(
ŸŸ& '

saveResult
ŸŸ' 1
,
ŸŸ1 2
player
ŸŸ3 9
)
ŸŸ9 :
;
ŸŸ: ;
}
   
Callback
¡¡ 
.
¡¡ 
GetSaveResult
¡¡ "
(
¡¡" #

saveResult
¡¡# -
,
¡¡- .
player
¡¡/ 5
)
¡¡5 6
;
¡¡6 7
}
¢¢ 	
public
¤¤ 
void
¤¤ 
VerifyPlayer
¤¤  
(
¤¤  !
Dominio
¤¤! (
.
¤¤( )
Jugador
¤¤) 0
player
¤¤1 7
)
¤¤7 8
{
¥¥ 	 
VerificationResult
¦¦ 
	resultado
¦¦ (
=
¦¦) * 
VerificationResult
¦¦+ =
.
¦¦= >
NoExisteJugador
¦¦> M
;
¦¦M N 
JugadorDataManager
¨¨  
jugadorDataManager
¨¨ 1
=
¨¨2 3
new
¨¨4 7 
JugadorDataManager
¨¨8 J
(
¨¨J K
)
¨¨K L
;
¨¨L M
if
ªª 
(
ªª  
jugadorDataManager
ªª "
.
ªª" #
CheckNickname
ªª# 0
(
ªª0 1
player
ªª1 7
.
ªª7 8
Apodo
ªª8 =
)
ªª= >
)
ªª> ?
{
«« 
if
¬¬ 
(
¬¬  
jugadorDataManager
¬¬ &
.
¬¬& '
PinCorrecto
¬¬' 2
(
¬¬2 3
player
¬¬3 9
.
¬¬9 :
Apodo
¬¬: ?
,
¬¬? @
player
¬¬A G
.
¬¬G H
PinConfirmacion
¬¬H W
)
¬¬W X
)
¬¬X Y
{
­­ 
int
®® 
result
®® 
=
®®   
jugadorDataManager
®®! 3
.
®®3 4
VerifyNewPlayer
®®4 C
(
®®C D
new
®®D G

DataAccess
®®H R
.
®®R S
Jugador
®®S Z
{
¯¯ 
apodo
°° 
=
°° 
player
°°  &
.
°°& '
Apodo
°°' ,
,
°°, -
pinConfirmacion
±± '
=
±±( )
player
±±* 0
.
±±0 1
PinConfirmacion
±±1 @
,
±±@ A
}
²² 
)
²² 
;
²² 
if
´´ 
(
´´ 
result
´´ 
>
´´  
$num
´´! "
)
´´" #
{
µµ 
	resultado
¶¶ !
=
¶¶" # 
VerificationResult
¶¶$ 6
.
¶¶6 7"
VerificacionExistosa
¶¶7 K
;
¶¶K L
}
·· 
}
¸¸ 
else
¹¹ 
{
ºº 
	resultado
»» 
=
»»  
VerificationResult
»»  2
.
»»2 3
PinIncorrecto
»»3 @
;
»»@ A
}
¼¼ 
}
½½ 
else
¾¾ 
{
¿¿ 
	resultado
ÀÀ 
=
ÀÀ  
VerificationResult
ÀÀ .
.
ÀÀ. /
NoExisteJugador
ÀÀ/ >
;
ÀÀ> ?
}
ÁÁ 
Callback
ÃÃ 
.
ÃÃ 
GetVerifyResult
ÃÃ $
(
ÃÃ$ %
	resultado
ÃÃ% .
)
ÃÃ. /
;
ÃÃ/ 0
}
ÄÄ 	
public
ÆÆ 
void
ÆÆ 
SendMail
ÆÆ 
(
ÆÆ 
Jugador
ÆÆ $
player
ÆÆ% +
)
ÆÆ+ ,
{
ÇÇ 	

MailResult
ÈÈ 
mailSuccesResult
ÈÈ '
=
ÈÈ( )

MailResult
ÈÈ* 4
.
ÈÈ4 5
	SendError
ÈÈ5 >
;
ÈÈ> ?
System
ÊÊ 
.
ÊÊ 
Net
ÊÊ 
.
ÊÊ 
Mail
ÊÊ 
.
ÊÊ 
MailMessage
ÊÊ '
mailMesagge
ÊÊ( 3
=
ÊÊ4 5
new
ÊÊ6 9
System
ÊÊ: @
.
ÊÊ@ A
Net
ÊÊA D
.
ÊÊD E
Mail
ÊÊE I
.
ÊÊI J
MailMessage
ÊÊJ U
(
ÊÊU V
)
ÊÊV W
;
ÊÊW X
mailMesagge
ÌÌ 
.
ÌÌ 
To
ÌÌ 
.
ÌÌ 
Add
ÌÌ 
(
ÌÌ 
player
ÌÌ %
.
ÌÌ% &
CorreoElectronico
ÌÌ& 7
)
ÌÌ7 8
;
ÌÌ8 9
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
ĞĞ 
.
ĞĞ 
From
ĞĞ 
=
ĞĞ 
new
ĞĞ "
System
ĞĞ# )
.
ĞĞ) *
Net
ĞĞ* -
.
ĞĞ- .
Mail
ĞĞ. 2
.
ĞĞ2 3
MailAddress
ĞĞ3 >
(
ĞĞ> ?
$str
ĞĞ? Z
,
ĞĞZ [
$str
ĞĞ\ s
)
ĞĞs t
;
ĞĞt u
System
ÒÒ 
.
ÒÒ 
Net
ÒÒ 
.
ÒÒ 
Mail
ÒÒ 
.
ÒÒ 

SmtpClient
ÒÒ &
client
ÒÒ' -
=
ÒÒ. /
new
ÒÒ0 3
System
ÒÒ4 :
.
ÒÒ: ;
Net
ÒÒ; >
.
ÒÒ> ?
Mail
ÒÒ? C
.
ÒÒC D

SmtpClient
ÒÒD N
{
ÓÓ 
Credentials
ÔÔ 
=
ÔÔ 
new
ÔÔ !
System
ÔÔ" (
.
ÔÔ( )
Net
ÔÔ) ,
.
ÔÔ, -
NetworkCredential
ÔÔ- >
(
ÔÔ> ?
$str
ÔÔ? Z
,
ÔÔZ [
$str
ÔÔ\ m
)
ÔÔm n
,
ÔÔn o
Port
ÕÕ 
=
ÕÕ 
$num
ÕÕ 
,
ÕÕ 
	EnableSsl
ÖÖ 
=
ÖÖ 
true
ÖÖ  
,
ÖÖ  !
Host
×× 
=
×× 
$str
×× '
,
××' (
}
ØØ 
;
ØØ 
try
ÙÙ 
{
ÚÚ 
client
ÛÛ 
.
ÛÛ 
Send
ÛÛ 
(
ÛÛ 
mailMesagge
ÛÛ '
)
ÛÛ' (
;
ÛÛ( )
mailSuccesResult
ÜÜ  
=
ÜÜ! "

MailResult
ÜÜ# -
.
ÜÜ- .
MailSend
ÜÜ. 6
;
ÜÜ6 7
Callback
İİ 
.
İİ 
GetMailResult
İİ &
(
İİ& '
mailSuccesResult
İİ' 7
,
İİ7 8
player
İİ9 ?
.
İİ? @
Apodo
İİ@ E
)
İİE F
;
İİF G
}
ŞŞ 
catch
ßß 
(
ßß 
System
ßß 
.
ßß 
Net
ßß 
.
ßß 
Mail
ßß "
.
ßß" #
SmtpException
ßß# 0
)
ßß0 1
{
àà 
Callback
áá 
.
áá 
GetMailResult
áá &
(
áá& '
mailSuccesResult
áá' 7
,
áá7 8
player
áá9 ?
.
áá? @
Apodo
áá@ E
)
ááE F
;
ááF G
throw
ââ 
new
ââ 
System
ââ  
.
ââ  !
Net
ââ! $
.
ââ$ %
Mail
ââ% )
.
ââ) *
SmtpException
ââ* 7
(
ââ7 8
$str
ââ8 x
)
ââx y
;
âây z
}
ãã 
}
ää 	
public
ææ 
void
ææ  
PasswordForgotMail
ææ &
(
ææ& '
string
ææ' -
actualNickname
ææ. <
)
ææ< =
{
çç 	 
JugadorDataManager
èè  
jugadorDataManager
èè 1
=
èè2 3
new
èè4 7 
JugadorDataManager
èè8 J
(
èèJ K
)
èèK L
;
èèL M

MailResult
éé 
mailSuccesResult
éé '
=
éé( )

MailResult
éé* 4
.
éé4 5
	SendError
éé5 >
;
éé> ?
if
ëë 
(
ëë  
jugadorDataManager
ëë "
.
ëë" #
CheckNickname
ëë# 0
(
ëë0 1
actualNickname
ëë1 ?
)
ëë? @
)
ëë@ A
{
ìì 

DataAccess
íí 
.
íí 
Jugador
íí "
player
íí# )
=
íí* +
new
íí, /

DataAccess
íí0 :
.
íí: ;
Jugador
íí; B
(
ííB C
)
ííC D
;
ííD E
player
îî 
=
îî  
jugadorDataManager
îî +
.
îî+ ,!
ChangePinByNickname
îî, ?
(
îî? @
actualNickname
îî@ N
)
îîN O
;
îîO P
System
ğğ 
.
ğğ 
Net
ğğ 
.
ğğ 
Mail
ğğ 
.
ğğ  
MailMessage
ğğ  +
mailMesagge
ğğ, 7
=
ğğ8 9
new
ğğ: =
System
ğğ> D
.
ğğD E
Net
ğğE H
.
ğğH I
Mail
ğğI M
.
ğğM N
MailMessage
ğğN Y
(
ğğY Z
)
ğğZ [
;
ğğ[ \
mailMesagge
òò 
.
òò 
To
òò 
.
òò 
Add
òò "
(
òò" #
player
òò# )
.
òò) *
correoElectronico
òò* ;
)
òò; <
;
òò< =
mailMesagge
óó 
.
óó 
Subject
óó #
=
óó$ %
$str
óó& K
+
óóL M
player
óóN T
.
óóT U
apodo
óóU Z
;
óóZ [
mailMesagge
ôô 
.
ôô 
Body
ôô  
=
ôô! "
$str
ôô# *
+
ôô+ ,
player
ôô- 3
.
ôô3 4
apodo
ôô4 9
+
ôô: ;
$str
ôô< j
+
ôôk l
$str
õõ \
+
õõ] ^
player
õõ_ e
.
õõe f
pinConfirmacion
õõf u
;
õõu v
mailMesagge
öö 
.
öö 
From
öö  
=
öö! "
new
öö# &
System
öö' -
.
öö- .
Net
öö. 1
.
öö1 2
Mail
öö2 6
.
öö6 7
MailAddress
öö7 B
(
ööB C
$str
ööC ^
,
öö^ _
$str
öö` w
)
ööw x
;
ööx y
System
øø 
.
øø 
Net
øø 
.
øø 
Mail
øø 
.
øø  

SmtpClient
øø  *
client
øø+ 1
=
øø2 3
new
øø4 7
System
øø8 >
.
øø> ?
Net
øø? B
.
øøB C
Mail
øøC G
.
øøG H

SmtpClient
øøH R
{
ùù 
Credentials
úú 
=
úú  !
new
úú" %
System
úú& ,
.
úú, -
Net
úú- 0
.
úú0 1
NetworkCredential
úú1 B
(
úúB C
$str
úúC ^
,
úú^ _
$str
úú` q
)
úúq r
,
úúr s
Port
ûû 
=
ûû 
$num
ûû 
,
ûû 
	EnableSsl
üü 
=
üü 
true
üü  $
,
üü$ %
Host
ıı 
=
ıı 
$str
ıı +
,
ıı+ ,
}
şş 
;
şş 
try
ÿÿ 
{
€€ 
client
 
.
 
Send
 
(
  
mailMesagge
  +
)
+ ,
;
, -
mailSuccesResult
‚‚ $
=
‚‚% &

MailResult
‚‚' 1
.
‚‚1 2
MailSend
‚‚2 :
;
‚‚: ;
Callback
ƒƒ 
.
ƒƒ 
GetMailResult
ƒƒ *
(
ƒƒ* +
mailSuccesResult
ƒƒ+ ;
,
ƒƒ; <
actualNickname
ƒƒ= K
)
ƒƒK L
;
ƒƒL M
}
„„ 
catch
…… 
(
…… 
System
…… 
.
…… 
Net
…… !
.
……! "
Mail
……" &
.
……& '
SmtpException
……' 4
)
……4 5
{
†† 
Callback
‡‡ 
.
‡‡ 
GetMailResult
‡‡ *
(
‡‡* +
mailSuccesResult
‡‡+ ;
,
‡‡; <
actualNickname
‡‡= K
)
‡‡K L
;
‡‡L M
throw
ˆˆ 
new
ˆˆ 
System
ˆˆ $
.
ˆˆ$ %
Net
ˆˆ% (
.
ˆˆ( )
Mail
ˆˆ) -
.
ˆˆ- .
SmtpException
ˆˆ. ;
(
ˆˆ; <
$str
ˆˆ< |
)
ˆˆ| }
;
ˆˆ} ~
}
‰‰ 
}
ŠŠ 
else
‹‹ 
{
ŒŒ 
mailSuccesResult
  
=
! "

MailResult
# -
.
- .
UnknownPlayer
. ;
;
; <
Callback
 
.
 
GetMailResult
 &
(
& '
mailSuccesResult
' 7
,
7 8
actualNickname
9 G
)
G H
;
H I
}
 
}
 	
public
’’ 
void
’’ 
	VerifyPin
’’ 
(
’’ 
string
’’ $
actualNickname
’’% 3
,
’’3 4
string
’’5 ;
	playerPin
’’< E
)
’’E F
{
““ 	
	PinResult
”” 
	pinResult
”” 
=
””  !
	PinResult
””" +
.
””+ ,

UnknownPin
””, 6
;
””6 7
if
–– 
(
––  
jugadorDataManager
–– "
.
––" #
PinCorrecto
––# .
(
––. /
actualNickname
––/ =
,
––= >
	playerPin
––? H
)
––H I
)
––I J
{
—— 
	pinResult
˜˜ 
=
˜˜ 
	PinResult
˜˜ %
.
˜˜% &
VerifiedPin
˜˜& 1
;
˜˜1 2
}
™™ 
Callback
›› 
.
›› 
GetPinResult
›› !
(
››! "
	pinResult
››" +
,
››+ ,
actualNickname
››- ;
)
››; <
;
››< =
}
œœ 	
public
 
void
 
ChangePassword
 "
(
" #
string
# )
userNickname
* 6
,
6 7
string
8 >
password
? G
)
G H
{
ŸŸ 	"
PasswordChangeResult
    
changeResult
  ! -
=
  . /"
PasswordChangeResult
  0 D
.
  D E
ErrorChanging
  E R
;
  R S
if
¢¢ 
(
¢¢  
jugadorDataManager
¢¢ "
.
¢¢" #
CheckNickname
¢¢# 0
(
¢¢0 1
userNickname
¢¢1 =
)
¢¢= >
)
¢¢> ?
{
££ 
string
¤¤ 
newPassword
¤¤ "
=
¤¤# $
hashText
¤¤% -
.
¤¤- .

TextToHash
¤¤. 8
(
¤¤8 9
password
¤¤9 A
)
¤¤A B
;
¤¤B C
int
¥¥ 
resultChange
¥¥  
=
¥¥! " 
jugadorDataManager
¥¥# 5
.
¥¥5 6
ChangePassword
¥¥6 D
(
¥¥D E
userNickname
¥¥E Q
,
¥¥Q R
newPassword
¥¥S ^
)
¥¥^ _
;
¥¥_ `
if
§§ 
(
§§ 
resultChange
§§  
>
§§! "
$num
§§# $
)
§§$ %
{
¨¨ 
changeResult
©©  
=
©©! ""
PasswordChangeResult
©©# 7
.
©©7 8
ChangedPassword
©©8 G
;
©©G H
}
ªª 
}
¬¬ 
Callback
®® 
.
®® %
GetPasswordChangeResult
®® ,
(
®®, -
changeResult
®®- 9
)
®®9 :
;
®®: ;
}
°° 	
public
²² 
void
²² 
GetActualPlayer
²² #
(
²²# $
Jugador
²²$ +
actualPlayer
²², 8
)
²²8 9
{
³³ 	 
DataObtainedResult
´´  
dataObtainedResult
´´ 1
=
´´2 3 
DataObtainedResult
´´4 F
.
´´F G 
ErrorObtainingData
´´G Y
;
´´Y Z

DataAccess
µµ 
.
µµ 
Jugador
µµ 
searchedPlayer
µµ -
=
µµ. / 
jugadorDataManager
µµ0 B
.
µµB C!
GetPlayerByNickname
µµC V
(
µµV W
actualPlayer
µµW c
.
µµc d
Apodo
µµd i
)
µµi j
;
µµj k
if
·· 
(
·· 
searchedPlayer
·· 
!=
·· !
null
··" &
)
··& '
{
¸¸ 
Dominio
¹¹ 
.
¹¹ 
Jugador
¹¹ "
domainSearchedPlayer
¹¹  4
=
¹¹5 6
new
¹¹7 :
Dominio
¹¹; B
.
¹¹B C
Jugador
¹¹C J
{
ºº 
	IdJugador
»» 
=
»» 
searchedPlayer
»»  .
.
»». /
	idJugador
»»/ 8
,
»»8 9
Apodo
¼¼ 
=
¼¼ 
searchedPlayer
¼¼ *
.
¼¼* +
apodo
¼¼+ 0
,
¼¼0 1
CorreoElectronico
½½ %
=
½½& '
searchedPlayer
½½( 6
.
½½6 7
correoElectronico
½½7 H
,
½½H I
Status
¾¾ 
=
¾¾ 
searchedPlayer
¾¾ +
.
¾¾+ ,
status
¾¾, 2
,
¾¾2 3"
PreguntaRecuperacion
¿¿ (
=
¿¿) *
searchedPlayer
¿¿+ 9
.
¿¿9 :"
preguntaRecuperacion
¿¿: N
,
¿¿N O

IdLenguaje
ÀÀ 
=
ÀÀ  
searchedPlayer
ÀÀ! /
.
ÀÀ/ 0
idioma
ÀÀ0 6
}
ÂÂ 
;
ÂÂ  
dataObtainedResult
ÃÃ "
=
ÃÃ# $ 
DataObtainedResult
ÃÃ% 7
.
ÃÃ7 8
DataObtained
ÃÃ8 D
;
ÃÃD E
Callback
ÄÄ 
.
ÄÄ 
SendActualPlayer
ÄÄ )
(
ÄÄ) * 
dataObtainedResult
ÄÄ* <
,
ÄÄ< ="
domainSearchedPlayer
ÄÄ> R
)
ÄÄR S
;
ÄÄS T
}
ÅÅ 
else
ÆÆ 
{
ÇÇ 
Dominio
ÈÈ 
.
ÈÈ 
Jugador
ÈÈ 
emptyPlayer
ÈÈ  +
=
ÈÈ, -
new
ÈÈ. 1
Jugador
ÈÈ2 9
(
ÈÈ9 :
)
ÈÈ: ;
;
ÈÈ; <
Callback
ÉÉ 
.
ÉÉ 
SendActualPlayer
ÉÉ )
(
ÉÉ) * 
dataObtainedResult
ÉÉ* <
,
ÉÉ< =
emptyPlayer
ÉÉ> I
)
ÉÉI J
;
ÉÉJ K
}
ÊÊ 
}
ÍÍ 	$
IPlayerManagerCallback
ÏÏ 
Callback
ÏÏ '
{
ĞĞ 	
get
ÑÑ 
{
ÒÒ 
return
ÓÓ 
OperationContext
ÓÓ '
.
ÓÓ' (
Current
ÓÓ( /
.
ÓÓ/ 0 
GetCallbackChannel
ÓÓ0 B
<
ÓÓB C$
IPlayerManagerCallback
ÓÓC Y
>
ÓÓY Z
(
ÓÓZ [
)
ÓÓ[ \
;
ÓÓ\ ]
}
ÔÔ 
}
ÕÕ 	
}
ÖÖ 
public
ØØ 

partial
ØØ 
class
ØØ 
MainService
ØØ $
:
ØØ% &
IRankingManager
ØØ' 6
{
ÙÙ 
public
ÚÚ 
void
ÚÚ 
GetRankingData
ÚÚ "
(
ÚÚ" #
)
ÚÚ# $
{
ÛÛ 	
RankingResult
ÜÜ 
result
ÜÜ  
;
ÜÜ  !
List
İİ 
<
İİ 
Dominio
İİ 
.
İİ 
Ranking
İİ  
>
İİ  !
rankings
İİ" *
=
İİ+ ,
QueryRankingData
İİ- =
(
İİ= >
)
İİ> ?
;
İİ? @
if
ßß 
(
ßß 
rankings
ßß 
==
ßß 
null
ßß  
)
ßß  !
{
àà 
result
áá 
=
áá 
RankingResult
áá &
.
áá& '

NO_RANKING
áá' 1
;
áá1 2
}
ââ 
else
ãã 
{
ää 
result
åå 
=
åå 
RankingResult
åå &
.
åå& '
RANKING_EXISTS
åå' 5
;
åå5 6
RankingCallback
çç 
.
çç  
GetRankingResult
çç  0
(
çç0 1
result
çç1 7
)
çç7 8
;
çç8 9
RankingCallback
éé 
.
éé   
ReceiveRankingData
éé  2
(
éé2 3
rankings
éé3 ;
)
éé; <
;
éé< =
}
êê 
}
ëë 	
public
íí 
List
íí 
<
íí 
Dominio
íí 
.
íí 
Ranking
íí #
>
íí# $
QueryRankingData
íí% 5
(
íí5 6
)
íí6 7
{
îî 	
List
ïï 
<
ïï 
Dominio
ïï 
.
ïï 
Ranking
ïï  
>
ïï  !
currentRankings
ïï" 1
=
ïï2 3
new
ïï4 7
List
ïï8 <
<
ïï< =
Dominio
ïï= D
.
ïïD E
Ranking
ïïE L
>
ïïL M
(
ïïM N
)
ïïN O
;
ïïO P 
RankingDataManager
ğğ 
dataManager
ğğ *
=
ğğ+ ,
new
ğğ- 0 
RankingDataManager
ğğ1 C
(
ğğC D
)
ğğD E
;
ğğE F
List
ññ 
<
ññ 

DataAccess
ññ 
.
ññ 
Ranking
ññ #
>
ññ# $ 
queriedRankingList
ññ% 7
=
ññ8 9
dataManager
ññ: E
.
ññE F
GetRankingList
ññF T
(
ññT U
)
ññU V
;
ññV W
if
óó 
(
óó 
dataManager
óó 
.
óó 
GetRankingList
óó *
(
óó* +
)
óó+ ,
!=
óó- /
null
óó0 4
)
óó4 5
{
ôô 
foreach
õõ 
(
õõ 

DataAccess
õõ #
.
õõ# $
Ranking
õõ$ +
playerRanking
õõ, 9
in
õõ: < 
queriedRankingList
õõ= O
)
õõO P
{
öö 
currentRankings
÷÷ #
.
÷÷# $
Add
÷÷$ '
(
÷÷' (
new
÷÷( +
Dominio
÷÷, 3
.
÷÷3 4
Ranking
÷÷4 ;
{
øø 
	IdRanking
ùù !
=
ùù" #
playerRanking
ùù$ 1
.
ùù1 2
	idRanking
ùù2 ;
,
ùù; <
Duenio
úú 
=
úú  
dataManager
úú! ,
.
úú, -
GetPlayerByID
úú- :
(
úú: ;
playerRanking
úú; H
.
úúH I
idDuenio
úúI Q
)
úúQ R
,
úúR S
FechaRegistracion
ûû )
=
ûû* +
playerRanking
ûû, 9
.
ûû9 :
fechaRegistracion
ûû: K
??
ûûL N
default
ûûO V
(
ûûV W
DateTime
ûûW _
)
ûû_ `
,
ûû` a
NumeroVictorias
üü '
=
üü( )
playerRanking
üü* 7
.
üü7 8
numeroVictorias
üü8 G
??
üüH J
default
üüK R
(
üüR S
int
üüS V
)
üüV W
,
üüW X
PartidasJugadas
ıı '
=
ıı( )
playerRanking
ıı* 7
.
ıı7 8
partidasJugadas
ıı8 G
??
ııH J
default
ııK R
(
ııR S
int
ııS V
)
ııV W
,
ııW X
Rank
şş 
=
şş 
playerRanking
şş ,
.
şş, -
rank
şş- 1
??
şş2 4
default
şş5 <
(
şş< =
int
şş= @
)
şş@ A
,
şşA B
NumeroPerdidas
ÿÿ &
=
ÿÿ' (
playerRanking
ÿÿ) 6
.
ÿÿ6 7
numeroPerdidas
ÿÿ7 E
??
ÿÿF H
default
ÿÿI P
(
ÿÿP Q
int
ÿÿQ T
)
ÿÿT U
}
€€ 
)
€€ 
;
€€ 
}
 
}
‚‚ 
return
„„ 
currentRankings
„„ "
;
„„" #
}
…… 	%
IRankingManagerCallback
‡‡ 
RankingCallback
‡‡  /
{
ˆˆ 	
get
‰‰ 
{
ŠŠ 
return
‹‹ 
OperationContext
‹‹ '
.
‹‹' (
Current
‹‹( /
.
‹‹/ 0 
GetCallbackChannel
‹‹0 B
<
‹‹B C%
IRankingManagerCallback
‹‹C Z
>
‹‹Z [
(
‹‹[ \
)
‹‹\ ]
;
‹‹] ^
}
ŒŒ 
}
 	
}
 
public
 

partial
 
class
 
MainService
 $
:
% &
IGameMatchManager
' 8
{
‘‘ 
private
’’ 
List
’’ 
<
’’ 
Match
’’ 
>
’’ 
activeMatches
’’ )
=
’’* +
new
’’, /
List
’’0 4
<
’’4 5
Match
’’5 :
>
’’: ;
(
’’; <
)
’’< =
;
’’= >
private
““ 
int
““ !
numberActiveMatches
““ '
=
““( )
$num
““) *
;
““* +
private
”” 
List
”” 
<
”” 
Match
”” 
>
”” "
playersQueuedClassic
”” 0
=
””1 2
new
””3 6
List
””7 ;
<
””; <
Match
””< A
>
””A B
(
””B C
)
””C D
;
””D E
private
•• 
const
•• 
int
•• 

PLAYER_ONE
•• $
=
••% &
$num
••' (
;
••( )
private
–– 
const
–– 
int
–– 

PLAYER_TWO
–– $
=
––% &
$num
––' (
;
––( )'
IGameMatchManagerCallback
˜˜ !&
GameMatchManagerCallback
˜˜" :
{
™™ 	
get
šš 
{
›› 
return
œœ 
OperationContext
œœ '
.
œœ' (
Current
œœ( /
.
œœ/ 0 
GetCallbackChannel
œœ0 B
<
œœB C'
IGameMatchManagerCallback
œœC \
>
œœ\ ]
(
œœ] ^
)
œœ^ _
;
œœ_ `
}
 
}
 	
public
   
void
   
Player1Turn
   
(
    
Checker
    '
[
  ' (
]
  ( )
[
  ) *
]
  * +
updateBoardMatrix
  , =
,
  = >
int
  ? B
matchNumber
  C N
,
  N O
int
  P S
playerTwoCheckers
  T e
,
  e f
int
  g j
playerOneCheckers
  k |
)
  | }
{
¡¡ 	
activeMatches
¢¢ 
[
¢¢ 
matchNumber
¢¢ %
]
¢¢% &
.
¢¢& '
playerTwoCallback
¢¢' 8
.
¢¢8 9
UpdateGameGUI
¢¢9 F
(
¢¢F G
updateBoardMatrix
¢¢G X
,
¢¢X Y
playerTwoCheckers
¢¢Z k
,
¢¢k l
playerOneCheckers
¢¢m ~
)
¢¢~ 
;¢¢ €
}
££ 	
public
¥¥ 
void
¥¥ 
CreateMatch
¥¥ 
(
¥¥  
Jugador
¥¥  '
currentPlayer
¥¥( 5
,
¥¥5 6
CheckersGameMode
¥¥7 G
gameMode
¥¥H P
)
¥¥P Q
{
¦¦ 	
MatchmakingResult
§§ 
matchmakingResult
§§ /
=
§§0 1
MatchmakingResult
§§2 C
.
§§C D#
UNABLE_TO_ENTER_MATCH
§§D Y
;
§§Y Z
if
©© 
(
©© "
playersQueuedClassic
©© $
.
©©$ %
Count
©©% *
>
©©+ ,
$num
©©- .
)
©©. /
{
ªª 
Match
«« 
newCompleteGame
«« %
=
««& '
new
««( +
Match
««, 1
(
««1 2
)
««2 3
;
««3 4
newCompleteGame
¬¬ 
=
¬¬  !"
playersQueuedClassic
¬¬" 6
.
¬¬6 7
First
¬¬7 <
(
¬¬< =
)
¬¬= >
;
¬¬> ?"
playersQueuedClassic
­­ $
.
­­$ %
Remove
­­% +
(
­­+ ,
newCompleteGame
­­, ;
)
­­; <
;
­­< =
newCompleteGame
®® 
.
®®  
playerTwoCallback
®®  1
=
®®2 3&
GameMatchManagerCallback
®®4 L
as
®®M O'
IGameMatchManagerCallback
®®P i
;
®®i j
newCompleteGame
¯¯ 
.
¯¯  
playerTwoData
¯¯  -
=
¯¯. /
currentPlayer
¯¯0 =
;
¯¯= >
newCompleteGame
°° 
.
°°  
matchActiveNumber
°°  1
=
°°2 3!
numberActiveMatches
°°4 G
;
°°G H"
playersQueuedClassic
±± $
.
±±$ %
Sort
±±% )
(
±±) *
)
±±* +
;
±±+ ,
matchmakingResult
²² !
=
²²" #
MatchmakingResult
²²$ 5
.
²²5 6
MATCH_FOUND
²²6 A
;
²²A B
activeMatches
³³ 
.
³³ 
Add
³³ !
(
³³! "
newCompleteGame
³³" 1
)
³³1 2
;
³³2 3!
numberActiveMatches
´´ #
++
´´# %
;
´´% &&
GameMatchManagerCallback
·· (
.
··( )"
GetMatchmakingResult
··) =
(
··= >
matchmakingResult
··> O
,
··O P
newCompleteGame
··Q `
,
··` a

PLAYER_TWO
··b l
)
··l m
;
··m n
newCompleteGame
¸¸ 
.
¸¸  
playerOneCallback
¸¸  1
.
¸¸1 2"
GetMatchmakingResult
¸¸2 F
(
¸¸F G
matchmakingResult
¸¸G X
,
¸¸X Y
newCompleteGame
¸¸Z i
,
¸¸i j

PLAYER_ONE
¸¸k u
)
¸¸u v
;
¸¸v w
}
ºº 
else
»» 
{
¼¼ 
Match
½½ 
newGame
½½ 
=
½½ 
new
½½  #
Match
½½$ )
(
½½) *
)
½½* +
{
¾¾ 
currentPlayer
¿¿ %
=
¿¿& '

PLAYER_ONE
¿¿( 2
,
¿¿2 3
playerOneData
ÀÀ %
=
ÀÀ& '
currentPlayer
ÀÀ( 5
,
ÀÀ5 6
playerOneCallback
ÁÁ )
=
ÁÁ* +&
GameMatchManagerCallback
ÁÁ, D
as
ÁÁE G'
IGameMatchManagerCallback
ÁÁH a
,
ÁÁa b
}
ÂÂ 
;
ÂÂ "
playersQueuedClassic
ÄÄ $
.
ÄÄ$ %
Add
ÄÄ% (
(
ÄÄ( )
newGame
ÄÄ) 0
)
ÄÄ0 1
;
ÄÄ1 2
matchmakingResult
ÅÅ !
=
ÅÅ" #
MatchmakingResult
ÅÅ$ 5
.
ÅÅ5 6
MATCH_NOT_FOUND
ÅÅ6 E
;
ÅÅE F&
GameMatchManagerCallback
ÆÆ (
.
ÆÆ( )"
GetMatchmakingResult
ÆÆ) =
(
ÆÆ= >
matchmakingResult
ÆÆ> O
,
ÆÆO P
newGame
ÆÆQ X
,
ÆÆX Y

PLAYER_ONE
ÆÆZ d
)
ÆÆd e
;
ÆÆe f
}
ÈÈ 
}
ÉÉ 	
public
ÌÌ 
void
ÌÌ 
Player2Turn
ÌÌ 
(
ÌÌ  
Checker
ÌÌ  '
[
ÌÌ' (
]
ÌÌ( )
[
ÌÌ) *
]
ÌÌ* +
updateBoardMatrix
ÌÌ, =
,
ÌÌ= >
int
ÌÌ> A
matchNumber
ÌÌB M
,
ÌÌM N
int
ÌÌN Q
playerTwoCheckers
ÌÌR c
,
ÌÌc d
int
ÌÌe h
playerOneCheckers
ÌÌi z
)
ÌÌz {
{
ÍÍ 	
activeMatches
ÎÎ 
[
ÎÎ 
matchNumber
ÎÎ %
]
ÎÎ% &
.
ÎÎ& '
playerOneCallback
ÎÎ' 8
.
ÎÎ8 9
UpdateGameGUI
ÎÎ9 F
(
ÎÎF G
updateBoardMatrix
ÎÎG X
,
ÎÎX Y
playerTwoCheckers
ÎÎZ k
,
ÎÎk l
playerOneCheckers
ÎÎm ~
)
ÎÎ~ 
;ÎÎ €
}
ÏÏ 	
public
ÑÑ 
void
ÑÑ 
FinishPlayerGame
ÑÑ $
(
ÑÑ$ %
int
ÑÑ% (
matchNumber
ÑÑ) 4
,
ÑÑ4 5
int
ÑÑ6 9
playerNumber
ÑÑ: F
,
ÑÑF G
int
ÑÑH K
playerTwoCheckers
ÑÑL ]
,
ÑÑ] ^
int
ÑÑ_ b
playerOneCheckers
ÑÑc t
)
ÑÑt u
{
ÒÒ 	
if
ÓÓ 
(
ÓÓ 
playerNumber
ÓÓ 
==
ÓÓ 

PLAYER_ONE
ÓÓ  *
)
ÓÓ* +
{
ÔÔ 
activeMatches
ÖÖ 
[
ÖÖ 
matchNumber
ÖÖ )
]
ÖÖ) *
.
ÖÖ* +
playerTwoCallback
ÖÖ+ <
.
ÖÖ< =

FinishGame
ÖÖ= G
(
ÖÖG H
playerTwoCheckers
ÖÖH Y
,
ÖÖY Z
playerOneCheckers
ÖÖ[ l
)
ÖÖl m
;
ÖÖm n
}
×× 
else
ØØ 
{
ÙÙ 
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
playerOneCallback
ÛÛ+ <
.
ÛÛ< =

FinishGame
ÛÛ= G
(
ÛÛG H
playerTwoCheckers
ÛÛH Y
,
ÛÛY Z
playerOneCheckers
ÛÛ[ l
)
ÛÛl m
;
ÛÛm n
}
ÜÜ  
RankingDataManager
İİ  
rankingDataManager
İİ 1
=
İİ2 3
new
İİ4 7 
RankingDataManager
İİ8 J
(
İİJ K
)
İİK L
;
İİL M 
rankingDataManager
ŞŞ 
.
ŞŞ  
UpdateMatchResults
ŞŞ 1
(
ŞŞ1 2
activeMatches
ŞŞ2 ?
[
ŞŞ? @
matchNumber
ŞŞ@ K
]
ŞŞK L
.
ŞŞL M
playerOneData
ŞŞM Z
,
ŞŞZ [
playerOneCheckers
ŞŞ[ l
,
ŞŞl m
activeMatches
ŞŞm z
[
ŞŞz {
matchNumberŞŞ{ †
]ŞŞ† ‡
.ŞŞ‡ ˆ
playerTwoDataŞŞˆ •
,ŞŞ• –!
playerTwoCheckersŞŞ– §
,ŞŞ§ ¨
playerNumberŞŞ¨ ´
)ŞŞ´ µ
;ŞŞµ ¶!
numberActiveMatches
ßß 
--
ßß !
;
ßß! "
activeMatches
àà 
.
àà 
RemoveAt
àà "
(
àà" #
matchNumber
àà# .
)
àà. /
;
àà/ 0
int
áá 
listPosition
áá 
;
áá 
for
ââ 
(
ââ 
listPosition
ââ 
=
ââ 
matchNumber
ââ  +
;
ââ+ ,
listPosition
ââ- 9
<
ââ9 :
activeMatches
ââ; H
.
ââH I
Count
ââI N
;
ââN O
listPosition
ââP \
++
ââ\ ^
)
ââ^ _
{
ãã 
activeMatches
ää 
[
ää 
listPosition
ää *
]
ää* +
.
ää+ ,
matchActiveNumber
ää, =
--
ää= ?
;
ää? @
activeMatches
åå 
[
åå 
listPosition
åå *
]
åå* +
.
åå+ ,
playerOneCallback
åå, =
.
åå= >
UpdateMatchNumber
åå> O
(
ååO P
activeMatches
ååP ]
[
åå] ^
listPosition
åå^ j
]
ååj k
.
ååk l
matchActiveNumber
åål }
)
åå} ~
;
åå~ 
activeMatches
ææ 
[
ææ 
listPosition
ææ *
]
ææ* +
.
ææ+ ,
playerTwoCallback
ææ, =
.
ææ= >
UpdateMatchNumber
ææ> O
(
ææO P
activeMatches
ææP ]
[
ææ] ^
listPosition
ææ^ j
]
ææj k
.
ææk l
matchActiveNumber
ææl }
)
ææ} ~
;
ææ~ 
}
çç 
}
èè 	
}
éé 
public
ëë 

partial
ëë 
class
ëë 
MainService
ëë $
:
ëë% &
IChatManager
ëë' 3
{
ìì "
IChatManagerCallback
îî 
ChatCallback
îî )
{
ïï 	
get
ğğ 
{
ññ 
return
òò 
OperationContext
òò '
.
òò' (
Current
òò( /
.
òò/ 0 
GetCallbackChannel
òò0 B
<
òòB C"
IChatManagerCallback
òòC W
>
òòW X
(
òòX Y
)
òòY Z
;
òòZ [
}
óó 
}
ôô 	
public
öö 
void
öö 
GetChatCallback
öö #
(
öö# $
)
öö$ %
{
÷÷ 	
throw
øø 
new
øø %
NotImplementedException
øø -
(
øø- .
)
øø. /
;
øø/ 0
}
ùù 	
public
ûû 
void
ûû 
SendText
ûû 
(
ûû 
string
ûû #
destination
ûû$ /
,
ûû/ 0
string
ûû1 7
message
ûû8 ?
)
ûû? @
{
üü 	
throw
ıı 
new
ıı %
NotImplementedException
ıı -
(
ıı- .
)
ıı. /
;
ıı/ 0
}
şş 	
}
ÿÿ 
}‚‚ Ù
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
} ”
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
]$$) *Ï
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