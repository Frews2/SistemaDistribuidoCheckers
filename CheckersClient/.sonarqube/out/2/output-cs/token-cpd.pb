˚
dD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\AdminPage.xaml.cs
	namespace 	
CheckersCliente
 
{ 
public 

partial 
class 
	AdminPage "
:# $
Window% +
{ 
public 
	AdminPage 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
} 
} ﬂ
tD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\LogInPages\ChangePassword.xaml.cs
	namespace 	
CheckersCliente
 
. 

LogInPages $
{ 
public 

partial 
class 
ChangePassword '
:( )
Page* .
{ 
public 
const 
int 
MINIMUN_LENGHT '
=( )
$num* +
;+ ,
private 
string 

playerNick !
;! "
public 
ChangePassword 
( 
string $
playerNickname% 3
)3 4
{ 	
InitializeComponent 
(  
)  !
;! "

playerNick 
= 
playerNickname '
;' (
} 	
private!! 
void!!  
ChangePlayerPassword!! )
(!!) *
object!!* 0
sender!!1 7
,!!7 8
RoutedEventArgs!!9 H
e!!I J
)!!J K
{"" 	
JugadorManager## 
.## 
ChangePassword## )
(##) *
new##* -
Jugador##. 5
{$$ 
Apodo%% 
=%% 

playerNick%% "
,%%" #
Contrasenia&& 
=&& 
PasswordTextBox&& ,
.&&, -
Password&&- 5
}'' 
)'' 
;'' 
}(( 	
private** 
void** 
EnableChangeButton** '
(**' (
object**( .
sender**/ 5
,**5 6
RoutedEventArgs**7 F
e**G H
)**H I
{,, 	
if-- 
(-- 
PasswordTextBox-- 
.--  
Password--  (
.--( )
Length--) /
<--0 1
MINIMUN_LENGHT--2 @
||--A C
!--D E#
PasswordVerificacionBox--E \
.--\ ]
Password--] e
.--e f
Equals--f l
(--l m
PasswordTextBox--m |
.--| }
Password	--} Ö
)
--Ö Ü
||.. 
String.. 
... 
IsNullOrWhiteSpace.. ,
(.., -
PasswordTextBox..- <
...< =
Password..= E
)..E F
)..F G
{// 
RegisterButton00 
.00 
	IsEnabled00 (
=00) *
false00+ 0
;000 1
}11 
else22 
{33 
RegisterButton44 
.44 
	IsEnabled44 (
=44) *
true44+ /
;44/ 0
}55 
}66 	
private88 
void88 
VerifyPassword88 #
(88# $
Object88$ *
sender88+ 1
,881 2
RoutedEventArgs883 B
e88C D
)88D E
{99 	
if:: 
(:: #
PasswordVerificacionBox:: '
.::' (
Password::( 0
.::0 1
Equals::1 7
(::7 8
PasswordTextBox::8 G
.::G H
Password::H P
)::P Q
&&::R T#
PasswordVerificacionBox::U l
.::l m
Password::m u
.::u v
Length::v |
>::} ~
MINIMUN_LENGHT	:: ç
&&;; 
!;; 
String;; 
.;; 
IsNullOrWhiteSpace;; -
(;;- .#
PasswordVerificacionBox;;. E
.;;E F
Password;;F N
);;N O
);;O P
{<< 
RegisterButton== 
.== 
	IsEnabled== (
===) *
true==+ /
;==/ 0
}>> 
else?? 
{@@ 
RegisterButtonAA 
.AA 
	IsEnabledAA (
=AA) *
falseAA+ 0
;AA0 1
}BB 
}DD 	
}EE 
}FF ƒ5
vD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\LogInPages\FinalizeRegister.xaml.cs
	namespace

 	
CheckersCliente


 
.

 

LogInPages

 $
{ 
public 

partial 
class 
FinalizeRegister )
:* +
Page, 0
{ 
private 
int 
timeSeconds 
=  !
$num" $
;$ %
DispatcherTimer 

clockTimer "
;" #
Jugador 

pagePlayer 
= 
new  
Jugador! (
(( )
)) *
;* +
public 
FinalizeRegister  
(  !
Jugador! (
player) /
)/ 0
{ 	

pagePlayer 
= 
player 
;  
InitializeComponent 
(  
)  !
;! "

clockTimer 
= 
new 
DispatcherTimer ,
(, -
)- .
;. /

clockTimer 
. 
Interval 
=  !
new" %
TimeSpan& .
(. /
$num/ 0
,0 1
$num2 3
,3 4
$num5 6
)6 7
;7 8

clockTimer 
. 
Tick 
+= 
	TimerTick (
;( )

clockTimer 
. 
Start 
( 
) 
; 
} 	
void 
	TimerTick 
( 
object 
sender $
,$ %
	EventArgs& /
e0 1
)1 2
{   	
if!! 
(!! 
timeSeconds!! 
>!! 
$num!! 
)!!  
{"" 
timeSeconds## 
--## 
;## 
CountdownNumber$$ 
.$$  
Text$$  $
=$$% &
string$$' -
.$$- .
Format$$. 4
($$4 5
$str$$5 :
,$$: ;
timeSeconds$$< G
/$$G H
$num$$H J
,$$J K
timeSeconds$$K V
%$$V W
$num$$W Y
)$$Y Z
;$$Z [
}%% 
else&& 
{'' 

clockTimer(( 
.(( 
Stop(( 
(((  
)((  !
;((! "
CountdownNumber)) 
.))  

Visibility))  *
=))+ ,

Visibility))- 7
.))7 8
Hidden))8 >
;))> ?
CountdownText** 
.** 

Visibility** (
=**) *

Visibility**+ 5
.**5 6
Hidden**6 <
;**< =
ResendButton++ 
.++ 
	IsEnabled++ &
=++' (
true++) -
;++- .
},, 
}-- 	
private// 
void// 
VerifyAccount// "
(//" #
object//# )
sender//* 0
,//0 1
RoutedEventArgs//2 A
e//B C
)//C D
{00 	
JugadorManager11 
.11 
VerifyPlayer11 '
(11' (
new11( +
Jugador11, 3
{22 
Apodo33 
=33 

pagePlayer33 "
.33" #
Apodo33# (
,33( )
PinConfirmacion44 
=44  !
PINbox44" (
.44( )
Text44) -
}55 
)55 
;55 
}66 	
private88 
void88 

ReSendMail88 
(88  
object88  &
sender88' -
,88- .
RoutedEventArgs88/ >
e88? @
)88@ A
{99 	
JugadorManager;; 
.;; 
ResendEmail;; &
(;;& '

pagePlayer;;' 1
);;1 2
;;;2 3
timeSeconds<< 
=<< 
$num<< 
;<< 

clockTimer== 
.== 
Start== 
(== 
)== 
;== 
CountdownNumber>> 
.>> 

Visibility>> &
=>>' (

Visibility>>) 3
.>>3 4
Visible>>4 ;
;>>; <
CountdownText?? 
.?? 

Visibility?? $
=??% &

Visibility??' 1
.??1 2
Visible??2 9
;??9 :
ResendButton@@ 
.@@ 
	IsEnabled@@ "
=@@# $
false@@% *
;@@* +
}BB 	
privateDD 
voidDD 
CancelClickDD  
(DD  !
objectDD! '
senderDD( .
,DD. /
RoutedEventArgsDD0 ?
eDD@ A
)DDA B
{EE 	
LogInFF 
loginFF 
=FF 
AppFF 
.FF 
CurrentFF %
.FF% &
WindowsFF& -
.FF- .
OfTypeFF. 4
<FF4 5
LogInFF5 :
>FF: ;
(FF; <
)FF< =
.FF= >
FirstOrDefaultFF> L
(FFL M
)FFM N
;FFN O
loginGG 
.GG 
NavigationServiceGG #
.GG# $
NavigateGG$ ,
(GG, -
newGG- 0
	LogInPageGG1 :
(GG: ;
)GG; <
)GG< =
;GG= >
}HH 	
privateJJ 
voidJJ "
PINboxPreviewTextInputJJ +
(JJ+ ,
objectJJ, 2
senderJJ3 9
,JJ9 :$
TextCompositionEventArgsJJ; S
eJJT U
)JJU V
{KK 	
ifLL 
(LL 
!LL 
ValidatorTextLL 
.LL 

AreNumbersLL )
(LL) *
eLL* +
.LL+ ,
TextLL, 0
)LL0 1
)LL1 2
{MM 
eNN 
.NN 
HandledNN 
=NN 
trueNN  
;NN  !
}PP 
elseQQ 
{RR 
eSS 
.SS 
HandledSS 
=SS 
falseSS !
;SS! "
}TT 
}UU 	
privateWW 
voidWW 
PINboxTextChangedWW &
(WW& '
objectWW' -
senderWW. 4
,WW4 5 
TextChangedEventArgsWW6 J
eWWK L
)WWL M
{XX 	
ifYY 
(YY 
PINboxYY 
.YY 
TextYY 
.YY 
LengthYY "
==YY# %
$numYY& '
&&YY( *
ValidatorTextYY+ 8
.YY8 9

AreNumbersYY9 C
(YYC D
PINboxYYD J
.YYJ K
TextYYK O
)YYO P
)YYP Q
{ZZ 
VerifyButton[[ 
.[[ 
	IsEnabled[[ &
=[[' (
true[[) -
;[[- .
}\\ 
else]] 
{^^ 
VerifyButton__ 
.__ 
	IsEnabled__ &
=__' (
false__) .
;__. /
}`` 
}aa 	
}cc 
}dd »
oD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\LogInPages\LogInPage.xaml.cs
	namespace 	
CheckersCliente
 
. 

LogInPages $
{ 
public 

partial 
class 
	LogInPage "
:# $
Page% )
{ 
public 
	LogInPage 
( 
) 
{ 	
InitializeComponent   
(    
)    !
;  ! "
}!! 	
private## 
void## 

LogInClick## 
(##  
object##  &
sender##' -
,##- .
RoutedEventArgs##/ >
e##? @
)##@ A
{$$ 	
JugadorManager&& 
.&& 
Login&&  
(&&  !
new&&! $
Jugador&&% ,
{'' 
Apodo(( 
=(( 
NicknameTextBox(( '
.((' (
Text((( ,
,((, -
Contrasenia)) 
=)) 
PasswordTextBox)) -
.))- .
Password)). 6
}** 
)** 
;** 
LogInButton++ 
.++ 
	IsEnabled++ !
=++" #
false++$ )
;++) *
},, 	
private.. 
void.. 
EnableLoginButton.. &
(..& '
object..' -
sender... 4
,..4 5
RoutedEventArgs..6 E
e..F G
)..G H
{// 	
if00 
(00 
PasswordTextBox00 
.00  
SecurePassword00  .
.00. /
Length00/ 5
<006 7
$num008 9
||00: <
NicknameTextBox00= L
.00L M
Text00M Q
.00Q R
Length00R X
<00Y Z
$num00[ \
||11 
ChekWhiteSpaces11 "
(11" #
)11# $
==11% '
false11( -
)11- .
{22 
LogInButton33 
.33 
	IsEnabled33 %
=33& '
false33( -
;33- .
}44 
else55 
{66 
LogInButton77 
.77 
	IsEnabled77 %
=77& '
true77( ,
;77, -
}88 
}99 	
private;; 
bool;; 
ChekWhiteSpaces;; $
(;;$ %
);;% &
{<< 	
if== 
(== 
String== 
.== 
IsNullOrEmpty== $
(==$ %
PasswordTextBox==% 4
.==4 5
Password==5 =
)=== >
||==? A
String==B H
.==H I
IsNullOrEmpty==I V
(==V W
NicknameTextBox==W f
.==f g
Text==g k
)==k l
)==l m
{>> 
return?? 
false?? 
;?? 
}@@ 
elseAA 
{BB 
returnCC 
trueCC 
;CC 
}DD 
}EE 	
privateGG 
voidGG 
GetPasswordGG  
(GG  !
objectGG! '
senderGG( .
,GG. / 
MouseButtonEventArgsGG0 D
eGGE F
)GGF G
{HH 	
NavigationServiceII 
.II 
NavigateII &
(II& '
newII' *!
ObtainPasswordPinMailII+ @
(II@ A
)IIA B
)IIB C
;IIC D
}JJ 	
privateKK 
voidKK 
RegisterAccountKK $
(KK$ %
objectKK% +
senderKK, 2
,KK2 3 
MouseButtonEventArgsKK4 H
eKKI J
)KKJ K
{LL 	
NavigationServiceMM 
.MM 
NavigateMM &
(MM& '
newMM' *
RegisterAccountMM+ :
(MM: ;
)MM; <
)MM< =
;MM= >
}NN 	
}OO 
}PP ¡
{D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\LogInPages\ObtainPasswordPinMail.xaml.cs
	namespace

 	
CheckersCliente


 
.

 

LogInPages

 $
{ 
public 

partial 
class !
ObtainPasswordPinMail .
:/ 0
Page1 5
{ 
public 
const 
int 
MINIMUN_LENGHT '
=( )
$num* +
;+ ,
private 
string 
playerNickname %
;% &
public !
ObtainPasswordPinMail $
($ %
)% &
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
SendMail 
( 
object $
sender% +
,+ ,
RoutedEventArgs- <
e= >
)> ?
{ 	
playerNickname 
= 
Nicknamebox (
.( )
Text) -
;- .
JugadorManager 
. 
ObtainMailPassword -
(- .
playerNickname. <
)< =
;= >
} 	
private   
void   
CheckNickname   "
(  " #
object  # )
sender  * 0
,  0 1
RoutedEventArgs  2 A
e  B C
)  C D
{!! 	
if"" 
("" 
Nicknamebox"" 
."" 
Text""  
.""  !
Length""! '
<""( )
MINIMUN_LENGHT""* 8
||""9 ;
String""< B
.""B C
IsNullOrEmpty""C P
(""P Q
Nicknamebox""Q \
.""\ ]
Text""] a
)""a b
)""b c
{## 

SendButton$$ 
.$$ 
	IsEnabled$$ $
=$$% &
false$$' ,
;$$, -
}%% 
else&& 
{'' 

SendButton(( 
.(( 
	IsEnabled(( $
=((% &
true((' +
;((+ ,
})) 
}** 	
private,, 
void,, 
CancelClick,,  
(,,  !
object,,! '
sender,,( .
,,,. /
RoutedEventArgs,,0 ?
e,,@ A
),,A B
{-- 	
NavigationService.. 
... 
GoBack.. $
(..$ %
)..% &
;..& '
}// 	
}33 
}44 ’G
uD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\LogInPages\RegisterAccount.xaml.cs
	namespace 	
CheckersCliente
 
. 

LogInPages $
{ 
public 

partial 
class 
RegisterAccount (
:) *
Page+ /
{ 
public 
const 
int 
ENGLISH_NUMBER '
=( )
$num* +
;+ ,
public 
const 
int 
SPANISH_NUMBER '
=( )
$num* +
;+ ,
public 
const 
int 
ITALIANO_NUMBER (
=) *
$num+ ,
;, -
public 
const 
int 
MINIMUN_LENGHT '
=( )
$num* +
;+ ,
public 
const 
int 
MINIMUM_MAIL_LENGHT ,
=- .
$num/ 1
;1 2
public 
const 
int !
ANSWER_MINIMUM_LENGHT .
=/ 0
$num1 2
;2 3
public 
RegisterAccount 
( 
)  
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private   
void    
EnableRegisterButton   )
(  ) *
object  * 0
sender  1 7
,  7 8
RoutedEventArgs  9 H
e  I J
)  J K
{"" 	
if## 
(## 
NicknameTextBox## 
.##  
Text##  $
.##$ %
Length##% +
<##, -
MINIMUN_LENGHT##. <
||##= ?
EmailTextBox##@ L
.##L M
Text##M Q
.##Q R
Length##R X
<##Y Z
MINIMUM_MAIL_LENGHT##[ n
||$$ 
PasswordTextBox$$ "
.$$" #
Password$$# +
.$$+ ,
Length$$, 2
<$$3 4
MINIMUN_LENGHT$$5 C
||$$D F
LanguageBox$$G R
.$$R S
SelectionBoxItem$$S c
==$$d f
null$$g k
||%% 
QuestionTextBox%% "
.%%" #
Text%%# '
.%%' (
Length%%( .
<%%/ 0
MINIMUN_LENGHT%%1 ?
||%%@ B
AnswerTextBox%%C P
.%%P Q
Text%%Q U
.%%U V
Length%%V \
<%%] ^!
ANSWER_MINIMUM_LENGHT%%_ t
||&& 
IsEmail&& 
(&& 
)&& 
==&& 
false&&  %
||&&& (

IsQuestion&&) 3
(&&3 4
)&&4 5
==&&6 8
false&&9 >
||&&? A
CheckWhiteSpaces&&B R
(&&R S
)&&S T
==&&U W
false&&X ]
)&&] ^
{'' 
RegisterButton(( 
.(( 
	IsEnabled(( (
=(() *
false((+ 0
;((0 1
LengthBlock)) 
.)) 

Visibility)) &
=))' (

Visibility))) 3
.))3 4
Visible))4 ;
;)); <
}** 
else++ 
{,, 
RegisterButton-- 
.-- 
	IsEnabled-- (
=--) *
true--+ /
;--/ 0
LengthBlock.. 
... 

Visibility.. &
=..' (

Visibility..) 3
...3 4
Hidden..4 :
;..: ;
}// 
}00 	
private22 
bool22 
CheckWhiteSpaces22 %
(22% &
)22& '
{33 	
if44 
(44 
String44 
.44 
IsNullOrEmpty44 $
(44$ %
NicknameTextBox44% 4
.444 5
Text445 9
)449 :
||44; =
String44> D
.44D E
IsNullOrEmpty44E R
(44R S
PasswordTextBox44S b
.44b c
Password44c k
)44k l
||55 
String55 
.55 
IsNullOrEmpty55 '
(55' (
AnswerTextBox55( 5
.555 6
Text556 :
)55: ;
)55; <
{66 
return77 
false77 
;77 
}88 
else99 
{:: 
return;; 
true;; 
;;; 
}<< 
}== 	
private?? 
bool?? 
IsEmail?? 
(?? 
)?? 
{@@ 	
ifAA 
(AA 
ValidatorTextAA 
.AA 
IsEmailAA %
(AA% &
EmailTextBoxAA& 2
.AA2 3
TextAA3 7
)AA7 8
&&AA9 ;
EmailTextBoxAA< H
.AAH I
TextAAI M
.AAM N
LengthAAN T
>AAU V
MINIMUM_MAIL_LENGHTAAW j
&&BB 
!BB 
StringBB 
.BB 
IsNullOrEmptyBB (
(BB( )
EmailTextBoxBB) 5
.BB5 6
TextBB6 :
)BB: ;
)BB; <
{CC 
returnDD 
trueDD 
;DD 
}EE 
elseFF 
{GG 
returnHH 
falseHH 
;HH 
}II 
}JJ 	
privateKK 
boolKK 

IsQuestionKK 
(KK  
)KK  !
{LL 	
ifMM 
(MM 
ValidatorTextMM 
.MM 

IsQuestionMM (
(MM( )
QuestionTextBoxMM) 8
.MM8 9
TextMM9 =
)MM= >
&&MM? A
QuestionTextBoxMMB Q
.MMQ R
TextMMR V
.MMV W
LengthMMW ]
>MM^ _
MINIMUN_LENGHTMM` n
&&NN 
!NN 
StringNN 
.NN 
IsNullOrEmptyNN (
(NN( )
QuestionTextBoxNN) 8
.NN8 9
TextNN9 =
)NN= >
)NN> ?
{OO 
returnPP 
truePP 
;PP 
}QQ 
elseRR 
{SS 
returnTT 
falseTT 
;TT 
}UU 
}VV 	
privateYY 
voidYY 
RegisterUserYY !
(YY! "
objectYY" (
senderYY) /
,YY/ 0
RoutedEventArgsYY1 @
eYYA B
)YYB C
{ZZ 	
Random[[ 
random[[ 
=[[ 
new[[ 
Random[[  &
([[& '
)[[' (
;[[( )
int]] 
selectedLanguage]]  
=]]! "
CheckLanguage]]# 0
(]]0 1
)]]1 2
;]]2 3
JugadorManager__ 
.__ 
SaveNewPlayer__ (
(__( )
new__) ,
Jugador__- 4
{`` 
Apodoaa 
=aa 
NicknameTextBoxaa '
.aa' (
Textaa( ,
,aa, -
Contraseniabb 
=bb 
PasswordTextBoxbb -
.bb- .
Passwordbb. 6
,bb6 7
CorreoElectronicocc !
=cc" #
EmailTextBoxcc$ 0
.cc0 1
Textcc1 5
,cc5 6
Statusdd 
=dd 
$strdd 
,dd !
RespuestaConfirmacionee %
=ee& '
AnswerTextBoxee( 5
.ee5 6
Textee6 :
,ee: ; 
PreguntaRecuperacionff $
=ff% &
QuestionTextBoxff' 6
.ff6 7
Textff7 ;
,ff; <
PinConfirmaciongg 
=gg  !
randomgg" (
.gg( )
Nextgg) -
(gg- .
$numgg. 3
,gg3 4
$numgg5 :
)gg: ;
.gg; <
ToStringgg< D
(ggD E
)ggE F
,ggF G

IdLenguajehh 
=hh 
selectedLanguagehh -
}ii 
)ii 
;ii 
}jj 	
privatell 
intll 
CheckLanguagell !
(ll! "
)ll" #
{mm 	
intnn 
languageNumbernn 
;nn 
ifpp 
(pp 
LanguageBoxpp 
.pp 
SelectedIndexpp (
.pp( )
Equalspp) /
(pp/ 0
ENGLISH_NUMBERpp0 >
)pp> ?
)pp? @
{qq 
languageNumberrr 
=rr  
ENGLISH_NUMBERrr! /
;rr/ 0
}ss 
elsett 
{uu 
ifvv 
(vv 
LanguageBoxvv 
.vv 
SelectedIndexvv ,
.vv, -
Equalsvv- 3
(vv3 4
SPANISH_NUMBERvv4 B
)vvB C
)vvC D
{ww 
languageNumberxx "
=xx# $
SPANISH_NUMBERxx% 3
;xx3 4
}yy 
elsezz 
{{{ 
languageNumber|| "
=||# $
ITALIANO_NUMBER||% 4
;||4 5
}}} 
}~~ 
return
ÄÄ 
languageNumber
ÄÄ !
;
ÄÄ! "
}
ÅÅ 	
private
ÉÉ 
void
ÉÉ 
CancelRegister
ÉÉ #
(
ÉÉ# $
object
ÉÉ$ *
sender
ÉÉ+ 1
,
ÉÉ1 2
RoutedEventArgs
ÉÉ3 B
e
ÉÉC D
)
ÉÉD E
{
ÑÑ 	
NavigationService
ÖÖ 
.
ÖÖ 
GoBack
ÖÖ $
(
ÖÖ$ %
)
ÖÖ% &
;
ÖÖ& '
}
ÜÜ 	
}
áá 
}àà Æ6
{D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\LogInPages\VerificatePasswordPin.xaml.cs
	namespace 	
CheckersCliente
 
. 

LogInPages $
{ 
public 

partial 
class !
VerificatePasswordPin .
:/ 0
Page1 5
{ 
public 
const 
int 
MINIMUN_LENGHT '
=( )
$num* +
;+ ,
private 
int 
timeSeconds 
=  !
$num" $
;$ %
DispatcherTimer 

clockTimer "
;" #
private 
string 
playerNickname %
;% &
public !
VerificatePasswordPin $
($ %
string% +
nickname, 4
)4 5
{ 	
playerNickname 
= 
nickname %
;% &

clockTimer   
=   
new   
DispatcherTimer   ,
(  , -
)  - .
;  . /

clockTimer!! 
.!! 
Interval!! 
=!!  !
new!!" %
TimeSpan!!& .
(!!. /
$num!!/ 0
,!!0 1
$num!!2 3
,!!3 4
$num!!5 6
)!!6 7
;!!7 8

clockTimer"" 
."" 
Tick"" 
+="" 
	TimerTick"" (
;""( )

clockTimer## 
.## 
Start## 
(## 
)## 
;## 
InitializeComponent$$ 
($$  
)$$  !
;$$! "
}%% 	
void&& 
	TimerTick&& 
(&& 
object&& 
sender&& $
,&&$ %
	EventArgs&&& /
e&&0 1
)&&1 2
{'' 	
if(( 
((( 
timeSeconds(( 
>(( 
$num(( 
)((  
{)) 
timeSeconds** 
--** 
;** 
CountdownNumber++ 
.++  
Text++  $
=++% &
string++' -
.++- .
Format++. 4
(++4 5
$str++5 :
,++: ;
timeSeconds++< G
/++H I
$num++J L
,++L M
timeSeconds++N Y
%++Z [
$num++\ ^
)++^ _
;++_ `
},, 
else-- 
{.. 

clockTimer// 
.// 
Stop// 
(//  
)//  !
;//! "
CountdownNumber00 
.00  

Visibility00  *
=00+ ,

Visibility00- 7
.007 8
Hidden008 >
;00> ?
CountdownText11 
.11 

Visibility11 (
=11) *

Visibility11+ 5
.115 6
Hidden116 <
;11< =
ResendButton22 
.22 
	IsEnabled22 &
=22' (
true22) -
;22- .
}33 
}44 	
private66 
void66 

ReSendMail66 
(66  
object66  &
sender66' -
,66- .
RoutedEventArgs66/ >
e66? @
)66@ A
{77 	
JugadorManager88 
.88 
ObtainMailPassword88 -
(88- .
playerNickname88. <
)88< =
;88= >
timeSeconds99 
=99 
$num99 
;99 

clockTimer:: 
.:: 
Start:: 
(:: 
):: 
;:: 
CountdownNumber;; 
.;; 

Visibility;; &
=;;' (

Visibility;;) 3
.;;3 4
Visible;;4 ;
;;;; <
CountdownText<< 
.<< 

Visibility<< $
=<<% &

Visibility<<' 1
.<<1 2
Visible<<2 9
;<<9 :
ResendButton== 
.== 
	IsEnabled== "
===# $
false==% *
;==* +
}>> 	
private@@ 
void@@ "
PINboxPreviewTextInput@@ +
(@@+ ,
object@@, 2
sender@@3 9
,@@9 :$
TextCompositionEventArgs@@; S
e@@T U
)@@U V
{AA 	
ifBB 
(BB 
!BB 
ValidatorTextBB 
.BB 

AreNumbersBB )
(BB) *
eBB* +
.BB+ ,
TextBB, 0
)BB0 1
)BB1 2
{CC 
eDD 
.DD 
HandledDD 
=DD 
trueDD  
;DD  !
}FF 
elseGG 
{HH 
eII 
.II 
HandledII 
=II 
falseII !
;II! "
}JJ 
}KK 	
privateMM 
voidMM 
PINboxTextChangedMM &
(MM& '
objectMM' -
senderMM. 4
,MM4 5 
TextChangedEventArgsMM6 J
eMMK L
)MML M
{NN 	
ifOO 
(OO 
PINboxOO 
.OO 
TextOO 
.OO 
LengthOO "
==OO# %
$numOO& '
&&OO( *
ValidatorTextOO+ 8
.OO8 9

AreNumbersOO9 C
(OOC D
PINboxOOD J
.OOJ K
TextOOK O
)OOO P
&&OOQ S
!OOT U
StringOOU [
.OO[ \
IsNullOrWhiteSpaceOO\ n
(OOn o
PINboxOOo u
.OOu v
TextOOv z
)OOz {
)OO{ |
{PP 
VerifyButtonQQ 
.QQ 
	IsEnabledQQ &
=QQ' (
trueQQ) -
;QQ- .
}RR 
elseSS 
{TT 
VerifyButtonUU 
.UU 
	IsEnabledUU &
=UU' (
falseUU) .
;UU. /
}VV 
}WW 	
privateYY 
voidYY 
VerifyClickYY  
(YY  !
objectYY! '
senderYY( .
,YY. /
RoutedEventArgsYY0 ?
eYY@ A
)YYA B
{ZZ 	
JugadorManager[[ 
.[[ 
	VerifyPin[[ $
([[$ %
playerNickname[[% 3
,[[3 4
PINbox[[5 ;
.[[; <
Text[[< @
)[[@ A
;[[A B
}\\ 	
private^^ 
void^^ 
CancelClick^^  
(^^  !
object^^! '
sender^^( .
,^^. /
RoutedEventArgs^^0 ?
e^^@ A
)^^A B
{__ 	
LogIn`` 
login`` 
=`` 
App`` 
.`` 
Current`` %
.``% &
Windows``& -
.``- .
OfType``. 4
<``4 5
LogIn``5 :
>``: ;
(``; <
)``< =
.``= >
FirstOrDefault``> L
(``L M
)``M N
;``N O
loginaa 
.aa 
NavigationServiceaa #
.aa# $
Navigateaa$ ,
(aa, -
newaa- 0
	LogInPageaa1 :
(aa: ;
)aa; <
)aa< =
;aa= >
}bb 	
}cc 
}dd ˜
nD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\MenuPages\RulesPage.xaml.cs
	namespace 	
CheckersCliente
 
. 
	MenuPages #
{ 
public 

partial 
class 
	RulesPage "
:# $
Page% )
{ 
public 
	RulesPage 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
CancelClick  
(  !
object! '
sender( .
,. /
RoutedEventArgs0 ?
e@ A
)A B
{ 	
NavigationService 
. 
GoBack $
($ %
)% &
;& '
} 	
}   
}!! ã
mD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\MenuPages\GameMode.xaml.cs
	namespace 	
CheckersCliente
 
. 
	MenuPages #
{ 
public 

partial 
class 
GameMode !
:" #
Page$ (
{ 
private 
Jugador 
currentPlayer %
;% &
private 
CheckersGameMode  
selectedGameMode! 1
;1 2
public 
GameMode 
( 
Jugador 
player  &
)& '
{ 	
InitializeComponent 
(  
)  !
;! "
currentPlayer 
= 
player "
;" #
}   	
private"" 
void"" 
EnterClassicGame"" %
(""% &
object""& ,
sender""- 3
,""3 4
RoutedEventArgs""5 D
e""E F
)""F G
{## 	
selectedGameMode$$ 
=$$ 
CheckersGameMode$$ /
.$$/ 0
ClassicCheckers$$0 ?
;$$? @
GameMatchManager%% 
.%% 
EnterMatchmaking%% -
(%%- .
currentPlayer%%. ;
,%%; <
selectedGameMode%%= M
)%%M N
;%%N O
}&& 	
private(( 
void(( 
EnterCanadianGame(( &
(((& '
object((' -
sender((. 4
,((4 5
RoutedEventArgs((6 E
e((F G
)((G H
{)) 	
selectedGameMode** 
=** 
CheckersGameMode** /
.**/ 0
CanadianCheckers**0 @
;**@ A
GameMatchManager++ 
.++ 
EnterMatchmaking++ -
(++- .
currentPlayer++. ;
,++; <
selectedGameMode++= M
)++M N
;++N O
},, 	
private.. 
void.. 
EnterItalianGame.. %
(..% &
object..& ,
sender..- 3
,..3 4
RoutedEventArgs..5 D
e..E F
)..F G
{// 	
selectedGameMode00 
=00 
CheckersGameMode00 /
.00/ 0
ItalianCheckers000 ?
;00? @
GameMatchManager11 
.11 
EnterMatchmaking11 -
(11- .
currentPlayer11. ;
,11; <
selectedGameMode11= M
)11M N
;11N O
}22 	
private44 
void44 
EnterSuicideGame44 %
(44% &
object44& ,
sender44- 3
,443 4
RoutedEventArgs445 D
e44E F
)44F G
{55 	
selectedGameMode66 
=66 
CheckersGameMode66 /
.66/ 0
SuicidalCheckers660 @
;66@ A
GameMatchManager77 
.77 
EnterMatchmaking77 -
(77- .
currentPlayer77. ;
,77; <
selectedGameMode77= M
)77M N
;77N O
}88 	
private99 
void99 
Return99 
(99 
object99 "
sender99# )
,99) *
System99+ 1
.991 2
Windows992 9
.999 :
RoutedEventArgs99: I
e99J K
)99K L
{:: 	
NavigationService;; 
.;; 
GoBack;; $
(;;$ %
);;% &
;;;& '
}<< 	
}== 
}>> Ø
pD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\MenuPages\GameStandBy.xaml.cs
	namespace 	
CheckersCliente
 
. 
	MenuPages #
{		 
public 

partial 
class 
GameStandBy $
:% &
Page' +
{ 
public 
GameStandBy 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
} 
} ‘&
qD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\Windows\DialogWindowManager.cs
	namespace 	
CheckersCliente
 
. 
Windows !
{ 
public 

class 
DialogWindowManager $
{ 
private 
const 
string 
SAVE_FILTER (
=) *
$str+ ?
;? @
private 
const 
string 

SAVE_TITLE '
=( )
$str* G
;G H
public 
static 
void 
ShowErrorWindow *
(* +
string+ 1
errorMessage2 >
)> ?
{ 	

MessageBox 
. 
Show 
( 
errorMessage (
,( )
$str* 1
,1 2
MessageBoxButton3 C
.C D
OKD F
,F G
MessageBoxImageH W
.W X
ErrorX ]
)] ^
;^ _
} 	
public 
static 
bool "
ShowConfirmationWindow 1
(1 2
string2 8
confirmMessage9 G
)G H
{ 	
bool 
confirmation 
= 
false  %
;% &
MessageBoxResult 

userAnswer '
=( )

MessageBox* 4
.4 5
Show5 9
(9 :
confirmMessage: H
,H I
$strJ X
,X Y
MessageBoxButton  
.  !
YesNo! &
,& '
MessageBoxImage( 7
.7 8
Question8 @
)@ A
;A B
if   
(   

userAnswer   
==   
MessageBoxResult   .
.  . /
Yes  / 2
)  2 3
{!! 
confirmation"" 
="" 
true"" #
;""# $
}## 
return%% 
confirmation%% 
;%%  
}&& 	
public(( 
static(( 
void(( 
ShowSuccessWindow(( ,
(((, -
string((- 3
successMessage((4 B
)((B C
{)) 	

MessageBox** 
.** 
Show** 
(** 
successMessage** *
,*** +
$str**, 3
,**3 4
MessageBoxButton++ (
.++( )
OK++) +
,+++ ,
MessageBoxImage++- <
.++< =
Exclamation++= H
)++H I
;++I J
},, 	
public.. 
static.. 
void.. &
ShowEmptyFieldsErrorWindow.. 5
(..5 6
)..6 7
{// 	

MessageBox00 
.00 
Show00 
(00 
$str00 g
,00g h
$str00i p
,00p q
MessageBoxButton11  
.11  !
OK11! #
,11# $
MessageBoxImage11% 4
.114 5
Error115 :
)11: ;
;11; <
}22 	
public44 
static44 
void44 &
ShowWrongFieldsErrorWindow44 5
(445 6
)446 7
{55 	

MessageBox66 
.66 
Show66 
(66 
$str66 u
,66u v
$str77 
,77 
MessageBoxButton77 )
.77) *
OK77* ,
,77, -
MessageBoxImage77. =
.77= >
Error77> C
)77C D
;77D E
}88 	
public:: 
static:: 
void:: *
ShowNoEnoughProjectSpaceWindow:: 9
(::9 :
)::: ;
{;; 	

MessageBox<< 
.<< 
Show<< 
(<< 
$str<< [
,<<[ \
$str== +
,==+ ,
MessageBoxButton==- =
.=== >
OK==> @
,==@ A
MessageBoxImage==B Q
.==Q R
Error==R W
)==W X
;==X Y
}>> 	
public@@ 
static@@ 
void@@ $
ShowEmptyListErrorWindow@@ 3
(@@3 4
)@@4 5
{AA 	

MessageBoxBB 
.BB 
ShowBB 
(BB 
$strBB I
,BBI J
$strCC 
,CC 
MessageBoxButtonCC )
.CC) *
OKCC* ,
,CC, -
MessageBoxImageCC. =
.CC= >
ErrorCC> C
)CCC D
;CCD E
}DD 	
publicFF 
staticFF 
voidFF %
ShowConnectionErrorWindowFF 4
(FF4 5
)FF5 6
{GG 	

MessageBoxHH 
.HH 
ShowHH 
(HH 
$strHH u
,HHu v
$strII 
,II 
MessageBoxButtonII )
.II) *
OKII* ,
,II, -
MessageBoxImageII. =
.II= >
ErrorII> C
)IIC D
;IID E
}JJ 	
}LL 
}MM Ö
^D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\App.xaml.cs
	namespace		 	
CheckersCliente		
 
{

 
public 

partial 
class 
App 
: 
Application *
{ 
App 
( 
) 
{ 	
System 
. 
	Threading 
. 
Thread #
.# $
CurrentThread$ 1
.1 2
CurrentUICulture2 B
=C D
newE H
SystemI O
.O P
GlobalizationP ]
.] ^
CultureInfo^ i
(i j
$strj n
)n o
;o p
} 	
} 
}  k
|D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\CallbackHandlers\PlayerCallbackHandler.cs
	namespace 	
CheckersCliente
 
{ 
[ 
CallbackBehavior 
( 
ConcurrencyMode %
=& '
ConcurrencyMode( 7
.7 8
	Reentrant8 A
)A B
]B C
public 

class !
PlayerCallbackHandler &
:' ("
IPlayerManagerCallback) ?
{ 
public 
void 
GetLoginResult "
(" #
LoginResult# .
	resultado/ 8
,8 9
Jugador: A
playerLogedB M
)M N
{ 	
if 
( 
	resultado 
== 
LoginResult (
.( )
EsAdmin) 0
)0 1
{ 
	AdminPage 
	adminPage #
=$ %
new& )
	AdminPage* 3
(3 4
)4 5
;5 6
	adminPage 
. 
Show 
( 
)  
;  !
LogIn   
logIn   
=   
App   !
.  ! "
Current  " )
.  ) *
Windows  * 1
.  1 2
OfType  2 8
<  8 9
LogIn  9 >
>  > ?
(  ? @
)  @ A
.  A B
FirstOrDefault  B P
(  P Q
)  Q R
;  R S
logIn!! 
.!! 
Close!! 
(!! 
)!! 
;!! 
}"" 
else## 
{$$ 
if%% 
(%% 
	resultado%% 
==%%  
LoginResult%%! ,
.%%, -#
ExisteJugadorVerificado%%- D
)%%D E
{&& 
Menu'' 
menu'' 
='' 
new''  #
Menu''$ (
(''( )
playerLoged'') 4
)''4 5
;''5 6
menu(( 
.(( 
Show(( 
((( 
)(( 
;((  
LogIn)) 
logIn)) 
=))  !
App))" %
.))% &
Current))& -
.))- .
Windows)). 5
.))5 6
OfType))6 <
<))< =
LogIn))= B
>))B C
())C D
)))D E
.))E F
FirstOrDefault))F T
())T U
)))U V
;))V W
logIn** 
.** 
Close** 
(**  
)**  !
;**! "
}++ 
else,, 
{-- 
if.. 
(.. 
	resultado.. !
==.." $
LoginResult..% 0
...0 1%
ExisteJugadorNoVerificado..1 J
)..J K
{// 
DialogWindowManager00 +
.00+ ,
ShowErrorWindow00, ;
(00; <
$str00< n
)00n o
;00o p
LogIn11 
login11 #
=11$ %
App11& )
.11) *
Current11* 1
.111 2
Windows112 9
.119 :
OfType11: @
<11@ A
LogIn11A F
>11F G
(11G H
)11H I
.11I J
FirstOrDefault11J X
(11X Y
)11Y Z
;11Z [
login22 
.22 
NavigationService22 /
.22/ 0
Navigate220 8
(228 9
new229 <
FinalizeRegister22= M
(22M N
playerLoged22N Y
)22Y Z
)22Z [
;22[ \
}33 
else44 
{55 
if66 
(66 
	resultado66 %
==66& (
LoginResult66) 4
.664 5
NoExisteJugador665 D
)66D E
{77 
DialogWindowManager88 /
.88/ 0
ShowErrorWindow880 ?
(88? @
$str88@ S
)88S T
;88T U
}99 
else:: 
{;; 
DialogWindowManager<< /
.<</ 0
ShowErrorWindow<<0 ?
(<<? @
$str<<@ X
)<<X Y
;<<Y Z
}== 
}?? 
}@@ 
}AA 
}CC 	
publicEE 
voidEE 
GetSaveResultEE !
(EE! "

SaveResultEE" ,

saveResultEE- 7
,EE7 8
JugadorEE9 @
	newPlayerEEA J
)EEJ K
{FF 	
ifGG 
(GG 

saveResultGG 
==GG 

SaveResultGG '
.GG' (
JugadorGuardadoGG( 7
)GG7 8
{HH 
DialogWindowManagerII #
.II# $
ShowSuccessWindowII$ 5
(II5 6
$strII6 p
)IIp q
;IIq r
LogInJJ 
loginJJ 
=JJ 
AppJJ !
.JJ! "
CurrentJJ" )
.JJ) *
WindowsJJ* 1
.JJ1 2
OfTypeJJ2 8
<JJ8 9
LogInJJ9 >
>JJ> ?
(JJ? @
)JJ@ A
.JJA B
FirstOrDefaultJJB P
(JJP Q
)JJQ R
;JJR S
loginKK 
.KK 
NavigationServiceKK '
.KK' (
NavigateKK( 0
(KK0 1
newKK1 4
FinalizeRegisterKK5 E
(KKE F
	newPlayerKKF O
)KKO P
)KKP Q
;KKQ R
}LL 
elseMM 
{NN 
ifOO 
(OO 

saveResultOO 
==OO !

SaveResultOO" ,
.OO, -
NicknameExistenteOO- >
)OO> ?
{PP 
DialogWindowManagerRR '
.RR' (
ShowErrorWindowRR( 7
(RR7 8
$strRR8 g
)RRg h
;RRh i
}SS 
elseTT 
{UU 
ifVV 
(VV 

saveResultVV "
==VV# %

SaveResultVV& 0
.VV0 1
CorreoExistenteVV1 @
)VV@ A
{WW 
DialogWindowManagerYY +
.YY+ ,
ShowErrorWindowYY, ;
(YY; <
$strYY< r
)YYr s
;YYs t
}ZZ 
else[[ 
{\\ 
DialogWindowManager^^ +
.^^+ ,
ShowErrorWindow^^, ;
(^^; <
$str^^< o
)^^o p
;^^p q
}__ 
}`` 
}aa 
}bb 	
publicdd 
voiddd 
GetVerifyResultdd #
(dd# $
VerificationResultdd$ 6!
resultadoVerificaciondd7 L
)ddL M
{ee 	
ifff 
(ff !
resultadoVerificacionff $
==ff% '
VerificationResultff( :
.ff: ; 
VerificacionExistosaff; O
)ffO P
{gg 
DialogWindowManagerhh #
.hh# $
ShowSuccessWindowhh$ 5
(hh5 6
$strhh6 `
)hh` a
;hha b
LogInii 
logInii 
=ii 
Appii !
.ii! "
Currentii" )
.ii) *
Windowsii* 1
.ii1 2
OfTypeii2 8
<ii8 9
LogInii9 >
>ii> ?
(ii? @
)ii@ A
.iiA B
FirstOrDefaultiiB P
(iiP Q
)iiQ R
;iiR S
logInjj 
.jj 
NavigationServicejj '
.jj' (
Navigatejj( 0
(jj0 1
newjj1 4
	LogInPagejj5 >
(jj> ?
)jj? @
)jj@ A
;jjA B
}kk 
elsell 
ifll 
(ll !
resultadoVerificacionll *
==ll+ -
VerificationResultll. @
.ll@ A
NoExisteJugadorllA P
)llP Q
{mm 
DialogWindowManagernn #
.nn# $
ShowErrorWindownn$ 3
(nn3 4
$strnn4 G
)nnG H
;nnH I
}oo 
elsepp 
{qq 
DialogWindowManagerrr #
.rr# $
ShowErrorWindowrr$ 3
(rr3 4
$strrr4 E
)rrE F
;rrF G
}ss 
}tt 	
publicvv 
voidvv 
GetMailResultvv !
(vv! "

MailResultvv" ,
emailResultvv- 8
,vv8 9
stringvv: @
playerNicknamevvA O
)vvO P
{ww 	
ifxx 
(xx 
emailResultxx 
==xx 

MailResultxx (
.xx( )
MailSendxx) 1
)xx1 2
{yy 
DialogWindowManagerzz #
.zz# $
ShowSuccessWindowzz$ 5
(zz5 6
$strzz6 \
)zz\ ]
;zz] ^
LogIn{{ 
login{{ 
={{ 
App{{ !
.{{! "
Current{{" )
.{{) *
Windows{{* 1
.{{1 2
OfType{{2 8
<{{8 9
LogIn{{9 >
>{{> ?
({{? @
){{@ A
.{{A B
FirstOrDefault{{B P
({{P Q
){{Q R
;{{R S
login|| 
.|| 
NavigationService|| '
.||' (
Navigate||( 0
(||0 1
new||1 4!
VerificatePasswordPin||5 J
(||J K
playerNickname||K Y
)||Y Z
)||Z [
;||[ \
}}} 
else~~ 
{ 
if
ÄÄ 
(
ÄÄ 
emailResult
ÄÄ 
==
ÄÄ  "

MailResult
ÄÄ# -
.
ÄÄ- .
UnknownPlayer
ÄÄ. ;
)
ÄÄ; <
{
ÅÅ !
DialogWindowManager
ÇÇ '
.
ÇÇ' (
ShowErrorWindow
ÇÇ( 7
(
ÇÇ7 8
$str
ÇÇ8 K
)
ÇÇK L
;
ÇÇL M
}
ÉÉ 
else
ÑÑ 
{
ÖÖ !
DialogWindowManager
ÜÜ '
.
ÜÜ' (
ShowErrorWindow
ÜÜ( 7
(
ÜÜ7 8
$strÜÜ8 Ä
)ÜÜÄ Å
;ÜÜÅ Ç
}
áá 
}
ââ 
}
ää 	
public
åå 
void
åå 
GetPinResult
åå  
(
åå  !
	PinResult
åå! *
	pinResult
åå+ 4
,
åå4 5
string
åå6 <
playerNickname
åå= K
)
ååK L
{
çç 	
if
éé 
(
éé 
	pinResult
éé 
==
éé 
	PinResult
éé %
.
éé% &
VerifiedPin
éé& 1
)
éé1 2
{
èè 
LogIn
êê 
login
êê 
=
êê 
App
êê !
.
êê! "
Current
êê" )
.
êê) *
Windows
êê* 1
.
êê1 2
OfType
êê2 8
<
êê8 9
LogIn
êê9 >
>
êê> ?
(
êê? @
)
êê@ A
.
êêA B
FirstOrDefault
êêB P
(
êêP Q
)
êêQ R
;
êêR S
login
ëë 
.
ëë 
NavigationService
ëë '
.
ëë' (
Navigate
ëë( 0
(
ëë0 1
new
ëë1 4
ChangePassword
ëë5 C
(
ëëC D
playerNickname
ëëD R
)
ëëR S
)
ëëS T
;
ëëT U
}
íí 
else
ìì 
{
îî !
DialogWindowManager
ïï #
.
ïï# $
ShowErrorWindow
ïï$ 3
(
ïï3 4
$str
ïï4 T
)
ïïT U
;
ïïU V
}
ññ 
}
óó 	
public
ôô 
void
ôô %
GetPasswordChangeResult
ôô +
(
ôô+ ,"
PasswordChangeResult
ôô, @"
passwordChangeResult
ôôA U
)
ôôU V
{
öö 	
if
õõ 
(
õõ "
passwordChangeResult
õõ $
==
õõ% '"
PasswordChangeResult
õõ( <
.
õõ< =
ChangedPassword
õõ= L
)
õõL M
{
úú !
DialogWindowManager
ùù #
.
ùù# $
ShowSuccessWindow
ùù$ 5
(
ùù5 6
$str
ùù6 b
)
ùùb c
;
ùùc d
LogIn
ûû 
login
ûû 
=
ûû 
App
ûû !
.
ûû! "
Current
ûû" )
.
ûû) *
Windows
ûû* 1
.
ûû1 2
OfType
ûû2 8
<
ûû8 9
LogIn
ûû9 >
>
ûû> ?
(
ûû? @
)
ûû@ A
.
ûûA B
FirstOrDefault
ûûB P
(
ûûP Q
)
ûûQ R
;
ûûR S
login
üü 
.
üü 
NavigationService
üü '
.
üü' (
Navigate
üü( 0
(
üü0 1
new
üü1 4
	LogInPage
üü5 >
(
üü> ?
)
üü? @
)
üü@ A
;
üüA B
}
°° 
else
¢¢ 
{
££ !
DialogWindowManager
§§ #
.
§§# $
ShowErrorWindow
§§$ 3
(
§§3 4
$str§§4 Ö
)§§Ö Ü
;§§Ü á
}
•• 
}
ßß 	
public
©© 
void
©© 
SendActualPlayer
©© $
(
©©$ % 
DataObtainedResult
©©% 7 
dataObtainedResult
©©8 J
,
©©J K
Jugador
©©L S
actualPlayer
©©T `
)
©©` a
{
™™ 	
if
´´ 
(
´´  
dataObtainedResult
´´ "
==
´´# % 
DataObtainedResult
´´& 8
.
´´8 9
DataObtained
´´9 E
)
´´E F
{
¨¨ 
Menu
≠≠ 
menu
≠≠ 
=
≠≠ 
App
≠≠ 
.
≠≠  
Current
≠≠  '
.
≠≠' (
Windows
≠≠( /
.
≠≠/ 0
OfType
≠≠0 6
<
≠≠6 7
Menu
≠≠7 ;
>
≠≠; <
(
≠≠< =
)
≠≠= >
.
≠≠> ?
FirstOrDefault
≠≠? M
(
≠≠M N
)
≠≠N O
;
≠≠O P
menu
ÆÆ 
.
ÆÆ 
NavigationService
ÆÆ &
.
ÆÆ& '
Navigate
ÆÆ' /
(
ÆÆ/ 0
new
ÆÆ0 3
UserConfiguration
ÆÆ4 E
(
ÆÆE F
actualPlayer
ÆÆF R
)
ÆÆR S
)
ÆÆS T
;
ÆÆT U
}
ØØ 
else
∞∞ 
{
±± !
DialogWindowManager
≤≤ #
.
≤≤# $
ShowErrorWindow
≤≤$ 3
(
≤≤3 4
$str
≤≤4 }
)
≤≤} ~
;
≤≤~ 
}
≥≥ 
}
¥¥ 	
}
µµ 
}∂∂ ∑
zD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\CallbackHandlers\ChatCallbackHandler.cs
	namespace		 	
CheckersCliente		
 
.		 
CallbackHandlers		 *
{

 
public 

class 
ChatCallbackHandler $
:% & 
IChatManagerCallback& :
{ 
public 
void  
GetSentMessageResult (
(( )
SendMessageResult) :
result; A
)A B
{ 	
throw 
new 
System 
. #
NotImplementedException 4
(4 5
)5 6
;6 7
} 	
public 
void 
ReceiveText 
(  
string  &
source' -
,- .
string/ 5
message6 =
)= >
{ 	
} 	
} 
} Õ1
ÜD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\CallbackHandlers\GameMatchManagerCallbackHandler.cs
	namespace 	
CheckersCliente
 
. 
CallbackHandlers *
{ 
public 

class +
GameMatchManagerCallbackHandler 0
:1 2%
IGameMatchManagerCallback3 L
{ 
public 
void  
GetMatchmakingResult (
(( )
MatchmakingResult) :
result; A
,A B
MatchC H
newMatchI Q
,Q R
intS V
playerNumberW c
)c d
{ 	
if 
( 
result 
== 
MatchmakingResult +
.+ ,
MATCH_FOUND, 7
)7 8
{ 
Game 

gameWindow 
=  !
new" %
Game& *
(* +
newMatch+ 3
,3 4
playerNumber5 A
)A B
;B C

gameWindow 
. 
Show 
(  
)  !
;! "
Menu 
menu 
= 
App 
.  
Current  '
.' (
Windows( /
./ 0
OfType0 6
<6 7
Menu7 ;
>; <
(< =
)= >
.> ?
FirstOrDefault? M
(M N
)N O
;O P
menu 
. 
Close 
( 
) 
; 
} 
else 
{ 
if 
( 
result 
== 
MatchmakingResult /
./ 0
MATCH_NOT_FOUND0 ?
)? @
{ 
Menu 
menu 
= 
App  #
.# $
Current$ +
.+ ,
Windows, 3
.3 4
OfType4 :
<: ;
Menu; ?
>? @
(@ A
)A B
.B C
FirstOrDefaultC Q
(Q R
)R S
;S T
menu 
. 
NavigationService *
.* +
Navigate+ 3
(3 4
new4 7
GameStandBy8 C
(C D
)D E
)E F
;F G
} 
else   
{!! 

MessageBox"" 
."" 
Show"" #
(""# $
$str""$ Y
)""Y Z
;""Z [
}## 
}$$ 
}%% 	
public(( 
void(( 
UpdateGameGUI(( !
(((! "
Checker((" )
[(() *
]((* +
[((+ ,
]((, -
updateBoardMatrix((. ?
,((? @
int((A D
playerTwoCheckers((E V
,((V W
int((X [
playerOneCheckers((\ m
)((m n
{)) 	
Game** 
game** 
=** 
App** 
.** 
Current** #
.**# $
Windows**$ +
.**+ ,
OfType**, 2
<**2 3
Game**3 7
>**7 8
(**8 9
)**9 :
.**: ;
FirstOrDefault**; I
(**I J
)**J K
;**K L
Checker++ 
[++ 
,++ 
]++ 
newChekcersPosition++ *
=+++ ,
new++- 0
Checker++1 8
[++8 9
$num++9 :
,++: ;
$num++; <
]++< =
;++= >
int-- 
	rowNumber-- 
;-- 
int.. 
columnNumber.. 
;.. 
for00 
(00 
	rowNumber00 
=00 
$num00 
;00 
	rowNumber00  )
<00) *
$num00* +
;00+ ,
	rowNumber00, 5
++005 7
)007 8
{11 
for22 
(22 
columnNumber22 !
=22" #
$num22$ %
;22% &
columnNumber22' 3
<223 4
$num224 5
;225 6
columnNumber227 C
++22C E
)22E F
{33 
newChekcersPosition44 '
[44' (
	rowNumber44( 1
,441 2
columnNumber443 ?
]44? @
=44A B
updateBoardMatrix44C T
[44T U
	rowNumber44U ^
]44^ _
[44_ `
columnNumber44` l
]44l m
;44m n
}55 
}66 
game77 
.77 %
UpdateCheckersGuiPosition77 *
(77* +
newChekcersPosition77+ >
)77> ?
;77? @
game88 
.88 
UpdateCheckersCount88 $
(88$ %
playerTwoCheckers88% 6
,886 7
playerOneCheckers887 H
)88H I
;88I J
game99 
.99 
EndSecondPlayerTurn99 $
(99$ %
)99% &
;99& '
}:: 	
public<< 
void<< 
UpdateMatchNumber<< %
(<<% &
int<<& )
newMatchNumber<<* 8
)<<8 9
{== 	
Game>> 
game>> 
=>> 
App>> 
.>> 
Current>> #
.>># $
Windows>>$ +
.>>+ ,
OfType>>, 2
<>>2 3
Game>>3 7
>>>7 8
(>>8 9
)>>9 :
.>>: ;
FirstOrDefault>>; I
(>>I J
)>>J K
;>>K L
game?? 
.?? 
UpdateMatchNumber?? "
(??" #
newMatchNumber??# 1
)??1 2
;??2 3
}@@ 	
publicCC 
voidCC 

FinishGameCC 
(CC 
intCC "
playerTwoCheckersCC# 4
,CC4 5
intCC6 9
playerOneCheckersCC: K
)CCK L
{DD 	
GameEE 
gameEE 
=EE 
AppEE 
.EE 
CurrentEE #
.EE# $
WindowsEE$ +
.EE+ ,
OfTypeEE, 2
<EE2 3
GameEE3 7
>EE7 8
(EE8 9
)EE9 :
.EE: ;
FirstOrDefaultEE; I
(EEI J
)EEJ K
;EEK L
gameFF 
.FF 

FinishGameFF 
(FF 
playerTwoCheckersFF -
,FF- .
playerOneCheckersFF. ?
)FF? @
;FF@ A
}GG 	
}HH 
}JJ ˙
}D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\CallbackHandlers\RankingCallbackHandler.cs
	namespace 	
CheckersCliente
 
. 
CallbackHandlers *
{ 
class 	"
RankingCallbackHandler
  
:! "#
IRankingManagerCallback# :
{ 
public 
void 
GetRankingResult $
($ %
RankingResult% 2
result3 9
)9 :
{ 	
if 
( 
result 
== 
RankingResult '
.' (
RANKING_EXISTS( 6
)6 7
{ 

MessageBox 
. 
Show 
(  
$str  =
)= >
;> ?
} 
else 
if 
( 
result 
== 
RankingResult ,
., -

NO_RANKING- 7
)7 8
{ 

MessageBox 
. 
Show 
(  
$str  >
)> ?
;? @
} 
else 
{ 

MessageBox 
. 
Show 
(  
$str  J
)J K
;K L
} 
} 	
public   
void   
ReceiveRankingData   &
(  & '
Ranking  ' .
[  . /
]  / 0
rankingList  1 <
)  < =
{!! 	
List"" 
<"" 
Ranking"" 
>"" 
rankings"" "
=""# $
rankingList""% 0
.""0 1
ToList""1 7
(""7 8
)""8 9
;""9 :
Menu## 
menu## 
=## 
App## 
.## 
Current## #
.### $
Windows##$ +
.##+ ,
OfType##, 2
<##2 3
Menu##3 7
>##7 8
(##8 9
)##9 :
.##: ;
FirstOrDefault##; I
(##I J
)##J K
;##K L
menu$$ 
.$$ 
Navigate$$ 
($$ 
new$$ 
RankingList$$ )
($$) *
rankings$$* 2
)$$2 3
)$$3 4
;$$4 5
}%% 	
}&& 
}'' ‘ß
_D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\Game.xaml.cs
	namespace 	
CheckersCliente
 
{ 
public 

partial 
class 
Game 
: 
Window  &
{ 
private 
Jugador 
localPlayer #
;# $
private 
List 
< 
Button 
> 

buttonList '
;' (
private 
Button 
previousButton %
;% &
private 
Checker 
[ 
, 
] 
boardMatrix &
;& '
private 
bool 
player1Turn  
=! "
true# '
;' (
private 
bool "
checkPlayerSecondClick +
;+ ,
private 
int 
localPlayerNumber %
;% &
private   
int   
	rowNumber   
;   
private!! 
int!! 
columnNumber!!  
;!!  !
private"" 
int"" 
previousRow"" 
;""  
private## 
int## 
previousColumn## "
;##" #
private$$ 
int$$ 
player1CheckerCount$$ '
;$$' (
private%% 
int%% 
player2CheckerCount%% '
;%%' (
private&& 
Brush&& 
player1Color&& "
;&&" #
private'' 
Brush'' 
player2Color'' "
;''" #
private(( 
Match(( 
actualMatch(( !
;((! "
public** 
Game** 
(** 
Match** 
match** 
,**  
int**! $
playerNumber**% 1
)**1 2
{++ 	
InitializeComponent,, 
(,,  
),,  !
;,,! "
this.. 
... 
actualMatch.. 
=.. 
match.. $
;..$ %
this// 
.// 
player1Color// 
=// 
new//  #
SolidColorBrush//$ 3
(//3 4
Color//4 9
.//9 :
FromRgb//: A
(//A B
$num//B E
,//E F
$num//G J
,//J K
$num//L O
)//O P
)//P Q
;//Q R
this00 
.00 
player2Color00 
=00 
new00  #
SolidColorBrush00$ 3
(003 4
Color004 9
.009 :
FromRgb00: A
(00A B
$num00B E
,00E F
$num00G H
,00H I
$num00J K
)00K L
)00L M
;00M N
localPlayerNumber22 
=22 
playerNumber22  ,
;22, -
player1Checker33 
.33 

Foreground33 %
=33& '
player1Color33( 4
;334 5
player2Checker44 
.44 

Foreground44 %
=44& '
player2Color44( 4
;444 5
current_player55 
.55 
Text55 
=55  !
$str55" 1
;551 2
GenerateGame77 
(77 
)77 
;77 
if88 
(88 
playerNumber88 
==88 
$num88  
)88  !
{99 
foreach:: 
(:: 
Button:: 
blackSquare::  +
in::, .

buttonList::/ 9
)::9 :
{;; 
	IsEnabled<< 
=<< 
false<<  %
;<<% &
}== 
localPlayer>> 
=>> 
match>> #
.>># $
playerTwoData>>$ 1
;>>1 2
}?? 
else@@ 
{AA 
localPlayerBB 
=BB 
matchBB #
.BB# $
playerOneDataBB$ 1
;BB1 2
}CC 
}EE 	
publicGG 
voidGG 
RefreshMessageListGG &
(GG& '
)GG' (
{HH 	
	chatFrameII 
.II 
NavigateII 
(II 
newII "
GameChatII# +
(II+ ,
)II, -
)II- .
;II. /
}JJ 	
privateLL 
voidLL 
RegresarAMenuLL "
(LL" #
objectLL# )
senderLL* 0
,LL0 1
RoutedEventArgsLL2 A
eLLB C
)LLC D
{MM 	
GameMatchManagerNN 
.NN 
LeaveMatchmakingNN -
(NN- .
actualMatchNN. 9
,NN9 :
localPlayerNN; F
)NNF G
;NNG H
}OO 	
privateQQ 
voidQQ 
EndTurnNoMovementQQ &
(QQ& '
objectQQ' -
senderQQ. 4
,QQ4 5
RoutedEventArgsQQ6 E
eQQF G
)QQG H
{RR 	
thisSS 
.SS 
EndTurnSS 
(SS 
)SS 
;SS 
}TT 	
privateWW 
voidWW 
MovementWW 
(WW 
objectWW $
senderWW% +
,WW+ ,
RoutedEventArgsWW- <
eWW= >
)WW> ?
{XX 	
varZZ 
buttonZZ 
=ZZ 
(ZZ 
ButtonZZ  
)ZZ  !
senderZZ! '
;ZZ' (
columnNumber\\ 
=\\ 
Grid\\ 
.\\  
	GetColumn\\  )
(\\) *
button\\* 0
)\\0 1
;\\1 2
	rowNumber]] 
=]] 
Grid]] 
.]] 
GetRow]] #
(]]# $
button]]$ *
)]]* +
;]]+ ,
if__ 
(__ 
player1Turn__ 
)__ 
{`` 
ifaa 
(aa "
checkPlayerSecondClickaa *
)aa* +
{bb 
previousRowcc 
=cc  !
Gridcc" &
.cc& '
GetRowcc' -
(cc- .
previousButtoncc. <
)cc< =
;cc= >
previousColumndd "
=dd# $
Griddd% )
.dd) *
	GetColumndd* 3
(dd3 4
previousButtondd4 B
)ddB C
;ddC D
ifff 
(ff 
boardMatrixff #
[ff# $
previousRowff$ /
,ff/ 0
previousColumnff1 ?
]ff? @
==ffA C
CheckerffD K
.ffK L
player1CheckerffL Z
)ffZ [
{gg 
ifhh 
(hh 
boardMatrixhh '
[hh' (
	rowNumberhh( 1
,hh1 2
columnNumberhh3 ?
]hh? @
==hhA C
CheckerhhD K
.hhK L
	freeSpacehhL U
&&hhV X
(hhY Z
	rowNumberhhZ c
-hhd e
previousRowhhf q
==hhr t
-hhu v
$numhhv w
)hhw x
&&hhy {
(ii 
columnNumberii (
-ii) *
previousColumnii+ 9
==ii: <
-ii= >
$numii> ?
||ii@ B
columnNumberiiC O
-iiP Q
previousColumniiR `
==iia c
$numiid e
)iie f
)iif g
{jj 
ifkk 
(kk  
!kk  !
IsKingCheckerkk! .
(kk. /
)kk/ 0
)kk0 1
{ll 
boardMatrixmm  +
[mm+ ,
	rowNumbermm, 5
,mm5 6
columnNumbermm7 C
]mmC D
=mmE F
CheckermmG N
.mmN O
player1CheckermmO ]
;mm] ^
boardMatrixnn  +
[nn+ ,
previousRownn, 7
,nn7 8
previousColumnnn9 G
]nnG H
=nnI J
CheckernnK R
.nnR S
	freeSpacennS \
;nn\ ]
buttonoo  &
.oo& '
Contentoo' .
=oo/ 0
$stroo1 4
;oo4 5
buttonpp  &
.pp& '

Foregroundpp' 1
=pp2 3
player1Colorpp4 @
;pp@ A
buttonqq  &
.qq& '
FontSizeqq' /
=qq0 1
$numqq2 4
;qq4 5
DismissButtonClickrr  2
(rr2 3
previousButtonrr3 A
)rrA B
;rrB C
previousButtonss  .
.ss. /
Contentss/ 6
=ss7 8
$strss9 ;
;ss; <
}tt 
DismissButtonClickvv .
(vv. /
previousButtonvv/ =
)vv= >
;vv> ?
EndTurnww #
(ww# $
)ww$ %
;ww% &
}xx 
elseyy 
{zz 
if{{ 
({{  
boardMatrix{{  +
[{{+ ,
	rowNumber{{, 5
,{{5 6
columnNumber{{7 C
]{{C D
=={{E G
Checker{{H O
.{{O P
	freeSpace{{P Y
&&{{Z \
({{] ^
	rowNumber{{^ g
-{{h i
previousRow{{j u
=={{v x
-{{y z
$num{{z {
){{{ |
&&{{} 
(
{{Ä Å
columnNumber
{{Å ç
-
{{é è
previousColumn
{{ê û
==
{{ü °
-
{{¢ £
$num
{{£ §
)
{{§ •
)
{{• ¶
{|| 
if}}  "
(}}# $
boardMatrix}}$ /
[}}/ 0
	rowNumber}}0 9
+}}: ;
$num}}< =
,}}= >
columnNumber}}? K
+}}L M
$num}}N O
]}}O P
==}}Q S
Checker}}T [
.}}[ \
player2Checker}}\ j
||}}k m
boardMatrix}}n y
[}}y z
	rowNumber	}}z É
+
}}Ñ Ö
$num
}}Ü á
,
}}á à
columnNumber
}}â ï
+
}}ñ ó
$num
}}ò ô
]
}}ô ö
==
}}õ ù
Checker
}}û •
.
}}• ¶
player2King
}}¶ ±
)
}}± ≤
{~~  !
player2CheckerCount$ 7
--7 9
;9 :
boardMatrix
ÄÄ$ /
[
ÄÄ/ 0
	rowNumber
ÄÄ0 9
+
ÄÄ: ;
$num
ÄÄ< =
,
ÄÄ= >
columnNumber
ÄÄ? K
+
ÄÄL M
$num
ÄÄN O
]
ÄÄO P
=
ÄÄQ R
Checker
ÄÄS Z
.
ÄÄZ [
	freeSpace
ÄÄ[ d
;
ÄÄd e
if
ÇÇ$ &
(
ÇÇ' (
IsKingChecker
ÇÇ( 5
(
ÇÇ5 6
)
ÇÇ6 7
)
ÇÇ7 8
{
ÉÉ$ % 
DismissButtonClick
ÑÑ( :
(
ÑÑ: ;
previousButton
ÑÑ; I
)
ÑÑI J
;
ÑÑJ K
EndTurn
ÖÖ( /
(
ÖÖ/ 0
)
ÖÖ0 1
;
ÖÖ1 2
}
áá$ %
else
àà$ (
{
ââ$ %
boardMatrix
ää( 3
[
ää3 4
	rowNumber
ää4 =
,
ää= >
columnNumber
ää? K
]
ääK L
=
ääM N
Checker
ääO V
.
ääV W
player1Checker
ääW e
;
ääe f
boardMatrix
ãã( 3
[
ãã3 4
previousRow
ãã4 ?
,
ãã? @
previousColumn
ããA O
]
ããO P
=
ããQ R
Checker
ããS Z
.
ããZ [
	freeSpace
ãã[ d
;
ããd e 
DismissButtonClick
åå( :
(
åå: ;
previousButton
åå; I
)
ååI J
;
ååJ K'
UpdateCheckersGuiPosition
çç( A
(
ççA B
boardMatrix
ççB M
)
ççM N
;
ççN O
if
èè( *
(
èè+ ,"
Player1MoreJumpCheck
èè, @
(
èè@ A
)
èèA B
)
èèB C
{
êê( )
previousButton
ëë, :
=
ëë; <
button
ëë= C
;
ëëC D!
RemarkClickedButton
íí, ?
(
íí? @
button
íí@ F
)
ííF G
;
ííG H
}
ìì( )
else
îî( ,
{
ïï( ) 
DismissButtonClick
ññ, >
(
ññ> ?
previousButton
ññ? M
)
ññM N
;
ññN O
EndTurn
óó, 3
(
óó3 4
)
óó4 5
;
óó5 6
}
òò( )
}
ôô$ %
}
õõ  !
}
úú 
else
ùù  
{
ûû 
if
üü  "
(
üü# $
boardMatrix
üü$ /
[
üü/ 0
	rowNumber
üü0 9
,
üü9 :
columnNumber
üü; G
]
üüG H
==
üüI K
Checker
üüL S
.
üüS T
	freeSpace
üüT ]
&&
üü^ `
(
üüa b
	rowNumber
üüb k
-
üül m
previousRow
üün y
==
üüz |
-
üü} ~
$num
üü~ 
)üü Ä
&&üüÅ É
(üüÑ Ö
columnNumberüüÖ ë
-üüí ì
previousColumnüüî ¢
==üü£ •
$numüü¶ ß
)üüß ®
)üü® ©
{
††  !
if
°°$ &
(
°°' (
boardMatrix
°°( 3
[
°°3 4
	rowNumber
°°4 =
+
°°> ?
$num
°°@ A
,
°°A B
columnNumber
°°C O
-
°°P Q
$num
°°R S
]
°°S T
==
°°U W
Checker
°°X _
.
°°_ `
player2Checker
°°` n
||
°°o q
boardMatrix
°°r }
[
°°} ~
	rowNumber°°~ á
+°°à â
$num°°ä ã
,°°ã å
columnNumber°°ç ô
-°°ö õ
$num°°ú ù
]°°ù û
==°°ü °
Checker°°¢ ©
.°°© ™
player2King°°™ µ
)°°µ ∂
{
¢¢$ %!
player2CheckerCount
££( ;
--
££; =
;
££= >
boardMatrix
§§( 3
[
§§3 4
	rowNumber
§§4 =
+
§§> ?
$num
§§@ A
,
§§A B
columnNumber
§§C O
-
§§P Q
$num
§§R S
]
§§S T
=
§§U V
Checker
§§W ^
.
§§^ _
	freeSpace
§§_ h
;
§§h i
if
¶¶( *
(
¶¶+ ,
IsKingChecker
¶¶, 9
(
¶¶9 :
)
¶¶: ;
)
¶¶; <
{
ßß( ) 
DismissButtonClick
®®, >
(
®®> ?
previousButton
®®? M
)
®®M N
;
®®N O
EndTurn
©©, 3
(
©©3 4
)
©©4 5
;
©©5 6
}
™™( )
else
´´( ,
{
¨¨( )
boardMatrix
≠≠, 7
[
≠≠7 8
	rowNumber
≠≠8 A
,
≠≠A B
columnNumber
≠≠C O
]
≠≠O P
=
≠≠Q R
Checker
≠≠S Z
.
≠≠Z [
player1Checker
≠≠[ i
;
≠≠i j
boardMatrix
ÆÆ, 7
[
ÆÆ7 8
previousRow
ÆÆ8 C
,
ÆÆC D
previousColumn
ÆÆE S
]
ÆÆS T
=
ÆÆU V
Checker
ÆÆW ^
.
ÆÆ^ _
	freeSpace
ÆÆ_ h
;
ÆÆh i 
DismissButtonClick
∞∞, >
(
∞∞> ?
previousButton
∞∞? M
)
∞∞M N
;
∞∞N O'
UpdateCheckersGuiPosition
±±, E
(
±±E F
boardMatrix
±±F Q
)
±±Q R
;
±±R S
if
≥≥, .
(
≥≥/ 0"
Player1MoreJumpCheck
≥≥0 D
(
≥≥D E
)
≥≥E F
)
≥≥F G
{
¥¥, -
previousButton
µµ0 >
=
µµ? @
button
µµA G
;
µµG H!
RemarkClickedButton
∂∂0 C
(
∂∂C D
button
∂∂D J
)
∂∂J K
;
∂∂K L
}
∑∑, -
else
∏∏, 0
{
ππ, - 
DismissButtonClick
∫∫0 B
(
∫∫B C
previousButton
∫∫C Q
)
∫∫Q R
;
∫∫R S
EndTurn
ªª0 7
(
ªª7 8
)
ªª8 9
;
ªª9 :
}
ºº, -
}
ΩΩ( )
}
ææ$ %
}
øø  !
else
¿¿  $
{
¡¡  !
InvalidClick
¬¬$ 0
(
¬¬0 1
)
¬¬1 2
;
¬¬2 3
}
√√  !
}
ƒƒ 
}
≈≈ 
}
∆∆ 
else
«« 
{
»» 
if
…… 
(
…… 
KingMove
…… $
(
……$ %
)
……% &
)
……& '
{
   
button
ÀÀ "
.
ÀÀ" #
Content
ÀÀ# *
=
ÀÀ+ ,
$str
ÀÀ- 0
;
ÀÀ0 1
button
ÃÃ "
.
ÃÃ" #
FontSize
ÃÃ# +
=
ÃÃ, -
$num
ÃÃ. 0
;
ÃÃ0 1
button
ÕÕ "
.
ÕÕ" #

Foreground
ÕÕ# -
=
ÕÕ. /
player1Color
ÕÕ0 <
;
ÕÕ< =
previousButton
ŒŒ *
.
ŒŒ* +
Content
ŒŒ+ 2
=
ŒŒ3 4
$str
ŒŒ5 7
;
ŒŒ7 8 
DismissButtonClick
–– .
(
––. /
previousButton
––/ =
)
––= >
;
––> ?
EndTurn
—— #
(
——# $
)
——$ %
;
——% &
}
““ 
else
”” 
{
‘‘ 
if
’’ 
(
’’  
ValidateKingJump
’’  0
(
’’0 1
)
’’1 2
)
’’2 3
{
÷÷ !
player2CheckerCount
◊◊  3
--
◊◊3 5
;
◊◊5 6
int
ŸŸ  #
	jumpedRow
ŸŸ$ -
=
ŸŸ. /
(
ŸŸ0 1
int
ŸŸ1 4
)
ŸŸ4 5
(
ŸŸ5 6
	rowNumber
ŸŸ6 ?
+
ŸŸ@ A
(
ŸŸB C
(
ŸŸC D
	rowNumber
ŸŸD M
-
ŸŸN O
previousRow
ŸŸP [
)
ŸŸ[ \
*
ŸŸ] ^
-
ŸŸ_ `
$num
ŸŸ` b
)
ŸŸb c
)
ŸŸc d
;
ŸŸd e
int
⁄⁄  #
jumpedColumn
⁄⁄$ 0
=
⁄⁄1 2
(
⁄⁄3 4
int
⁄⁄4 7
)
⁄⁄7 8
(
⁄⁄8 9
columnNumber
⁄⁄9 E
+
⁄⁄F G
(
⁄⁄H I
(
⁄⁄I J
columnNumber
⁄⁄J V
-
⁄⁄W X
previousColumn
⁄⁄Y g
)
⁄⁄g h
*
⁄⁄i j
-
⁄⁄k l
$num
⁄⁄l n
)
⁄⁄n o
)
⁄⁄o p
;
⁄⁄p q
boardMatrix
‹‹  +
[
‹‹+ ,
	rowNumber
‹‹, 5
,
‹‹5 6
columnNumber
‹‹7 C
]
‹‹C D
=
‹‹E F
Checker
‹‹G N
.
‹‹N O
player1King
‹‹O Z
;
‹‹Z [
boardMatrix
››  +
[
››+ ,
	jumpedRow
››, 5
,
››5 6
jumpedColumn
››7 C
]
››C D
=
››E F
Checker
››G N
.
››N O
	freeSpace
››O X
;
››X Y
boardMatrix
ﬁﬁ  +
[
ﬁﬁ+ ,
previousRow
ﬁﬁ, 7
,
ﬁﬁ7 8
previousColumn
ﬁﬁ9 G
]
ﬁﬁG H
=
ﬁﬁI J
Checker
ﬁﬁK R
.
ﬁﬁR S
	freeSpace
ﬁﬁS \
;
ﬁﬁ\ ] 
DismissButtonClick
‡‡  2
(
‡‡2 3
previousButton
‡‡3 A
)
‡‡A B
;
‡‡B C'
UpdateCheckersGuiPosition
··  9
(
··9 :
boardMatrix
··: E
)
··E F
;
··F G
if
„„  "
(
„„# $#
KingMoreJumpAvaliable
„„$ 9
(
„„9 :
)
„„: ;
)
„„; <
{
‰‰  !
previousButton
ÂÂ$ 2
=
ÂÂ3 4
button
ÂÂ5 ;
;
ÂÂ; <!
RemarkClickedButton
ÊÊ$ 7
(
ÊÊ7 8
button
ÊÊ8 >
)
ÊÊ> ?
;
ÊÊ? @
}
ÁÁ  !
else
ËË  $
{
ÈÈ  ! 
DismissButtonClick
ÍÍ$ 6
(
ÍÍ6 7
previousButton
ÍÍ7 E
)
ÍÍE F
;
ÍÍF G
EndTurn
ÎÎ$ +
(
ÎÎ+ ,
)
ÎÎ, -
;
ÎÎ- .
}
ÏÏ  !
}
ÌÌ 
else
ÓÓ  
{
ÔÔ 
InvalidClick
  ,
(
, -
)
- .
;
. /
}
ÒÒ 
}
ÚÚ 
}
ÛÛ 
}
ÙÙ 
else
ıı 
{
ˆˆ 
if
˜˜ 
(
˜˜ 
boardMatrix
˜˜ #
[
˜˜# $
	rowNumber
˜˜$ -
,
˜˜- .
columnNumber
˜˜/ ;
]
˜˜; <
==
˜˜= ?
Checker
˜˜@ G
.
˜˜G H
player1Checker
˜˜H V
||
˜˜W Y
boardMatrix
˜˜Z e
[
˜˜e f
	rowNumber
˜˜f o
,
˜˜o p
columnNumber
˜˜q }
]
˜˜} ~
==˜˜ Å
Checker˜˜Ç â
.˜˜â ä
player1King˜˜ä ï
)˜˜ï ñ
{
¯¯ 
previousButton
˘˘ &
=
˘˘' (
button
˘˘) /
;
˘˘/ 0!
RemarkClickedButton
˙˙ +
(
˙˙+ ,
button
˙˙, 2
)
˙˙2 3
;
˙˙3 4$
checkPlayerSecondClick
˚˚ .
=
˚˚/ 0
true
˚˚1 5
;
˚˚5 6
}
¸¸ 
}
˝˝ 
}
˛˛ 
else
ˇˇ 
{
ÄÄ 
if
ÅÅ 
(
ÅÅ $
checkPlayerSecondClick
ÅÅ *
)
ÅÅ* +
{
ÇÇ 
previousRow
ÉÉ 
=
ÉÉ  !
Grid
ÉÉ" &
.
ÉÉ& '
GetRow
ÉÉ' -
(
ÉÉ- .
previousButton
ÉÉ. <
)
ÉÉ< =
;
ÉÉ= >
previousColumn
ÑÑ "
=
ÑÑ# $
Grid
ÑÑ% )
.
ÑÑ) *
	GetColumn
ÑÑ* 3
(
ÑÑ3 4
previousButton
ÑÑ4 B
)
ÑÑB C
;
ÑÑC D
if
ÜÜ 
(
ÜÜ 
boardMatrix
ÜÜ #
[
ÜÜ# $
previousRow
ÜÜ$ /
,
ÜÜ/ 0
previousColumn
ÜÜ1 ?
]
ÜÜ? @
==
ÜÜA C
Checker
ÜÜD K
.
ÜÜK L
player2Checker
ÜÜL Z
)
ÜÜZ [
{
áá 
if
àà 
(
àà 
boardMatrix
àà '
[
àà' (
	rowNumber
àà( 1
,
àà1 2
columnNumber
àà3 ?
]
àà? @
==
ààA C
Checker
ààD K
.
ààK L
	freeSpace
ààL U
&&
ààV X
(
ààY Z
	rowNumber
ààZ c
-
ààd e
previousRow
ààf q
==
ààr t
$num
ààu v
)
ààv w
&&
ààx z
(
àà{ |
columnNumberàà| à
-ààâ ä
previousColumnààã ô
==ààö ú
-ààù û
$numààû ü
||àà† ¢
columnNumberàà£ Ø
-àà∞ ±
previousColumnàà≤ ¿
==àà¡ √
$numààƒ ≈
)àà≈ ∆
)àà∆ «
{
ââ 
if
ää 
(
ää  
!
ää  !
IsKingChecker
ää! .
(
ää. /
)
ää/ 0
)
ää0 1
{
ãã 
boardMatrix
åå  +
[
åå+ ,
	rowNumber
åå, 5
,
åå5 6
columnNumber
åå7 C
]
ååC D
=
ååE F
Checker
ååG N
.
ååN O
player2Checker
ååO ]
;
åå] ^
boardMatrix
çç  +
[
çç+ ,
previousRow
çç, 7
,
çç7 8
previousColumn
çç9 G
]
ççG H
=
ççI J
Checker
ççK R
.
ççR S
	freeSpace
ççS \
;
çç\ ]
button
èè  &
.
èè& '
Content
èè' .
=
èè/ 0
$str
èè1 4
;
èè4 5
button
êê  &
.
êê& '

Foreground
êê' 1
=
êê2 3
player2Color
êê4 @
;
êê@ A
button
ëë  &
.
ëë& '
FontSize
ëë' /
=
ëë0 1
$num
ëë2 4
;
ëë4 5
previousButton
íí  .
.
íí. /
Content
íí/ 6
=
íí7 8
$str
íí9 ;
;
íí; < 
DismissButtonClick
îî  2
(
îî2 3
previousButton
îî3 A
)
îîA B
;
îîB C
}
ïï  
DismissButtonClick
ññ .
(
ññ. /
previousButton
ññ/ =
)
ññ= >
;
ññ> ?
EndTurn
óó #
(
óó# $
)
óó$ %
;
óó% &
}
òò 
else
ôô 
{
öö 
if
õõ 
(
õõ  
boardMatrix
õõ  +
[
õõ+ ,
	rowNumber
õõ, 5
,
õõ5 6
columnNumber
õõ7 C
]
õõC D
==
õõE G
Checker
õõH O
.
õõO P
	freeSpace
õõP Y
&&
õõZ \
(
õõ] ^
	rowNumber
õõ^ g
-
õõh i
previousRow
õõj u
==
õõv x
$num
õõy z
)
õõz {
&&
õõ| ~
columnNumberõõ ã
-õõå ç
previousColumnõõé ú
==õõù ü
-õõ† °
$numõõ° ¢
)õõ¢ £
{
úú 
if
ùù  "
(
ùù# $
boardMatrix
ùù$ /
[
ùù/ 0
	rowNumber
ùù0 9
-
ùù: ;
$num
ùù< =
,
ùù= >
columnNumber
ùù? K
+
ùùL M
$num
ùùN O
]
ùùO P
==
ùùQ S
Checker
ùùT [
.
ùù[ \
player1Checker
ùù\ j
||
ùùk m
boardMatrix
ùùn y
[
ùùy z
	rowNumberùùz É
-ùùÑ Ö
$numùùÜ á
,ùùá à
columnNumberùùâ ï
+ùùñ ó
$numùùò ô
]ùùô ö
==ùùõ ù
Checkerùùû •
.ùù• ¶
player1Kingùù¶ ±
)ùù± ≤
{
ûû  !!
player1CheckerCount
üü$ 7
--
üü7 9
;
üü9 :
boardMatrix
°°$ /
[
°°/ 0
	rowNumber
°°0 9
-
°°: ;
$num
°°< =
,
°°= >
columnNumber
°°? K
+
°°L M
$num
°°N O
]
°°O P
=
°°Q R
Checker
°°S Z
.
°°Z [
	freeSpace
°°[ d
;
°°d e
if
££$ &
(
££' (
IsKingChecker
££( 5
(
££5 6
)
££6 7
)
££7 8
{
§§$ % 
DismissButtonClick
••( :
(
••: ;
previousButton
••; I
)
••I J
;
••J K
EndTurn
¶¶( /
(
¶¶/ 0
)
¶¶0 1
;
¶¶1 2
}
ßß$ %
else
®®$ (
{
©©$ %
boardMatrix
™™( 3
[
™™3 4
	rowNumber
™™4 =
,
™™= >
columnNumber
™™? K
]
™™K L
=
™™M N
Checker
™™O V
.
™™V W
player2Checker
™™W e
;
™™e f
boardMatrix
´´( 3
[
´´3 4
previousRow
´´4 ?
,
´´? @
previousColumn
´´A O
]
´´O P
=
´´Q R
Checker
´´S Z
.
´´Z [
	freeSpace
´´[ d
;
´´d e 
DismissButtonClick
≠≠( :
(
≠≠: ;
previousButton
≠≠; I
)
≠≠I J
;
≠≠J K'
UpdateCheckersGuiPosition
ÆÆ( A
(
ÆÆA B
boardMatrix
ÆÆB M
)
ÆÆM N
;
ÆÆN O
if
∞∞( *
(
∞∞+ ,"
Player2MoreJumpCheck
∞∞, @
(
∞∞@ A
)
∞∞A B
)
∞∞B C
{
±±( )!
RemarkClickedButton
≤≤, ?
(
≤≤? @
button
≤≤@ F
)
≤≤F G
;
≤≤G H
previousButton
≥≥, :
=
≥≥; <
button
≥≥= C
;
≥≥C D
}
¥¥( )
else
µµ( ,
{
∂∂( ) 
DismissButtonClick
∑∑, >
(
∑∑> ?
previousButton
∑∑? M
)
∑∑M N
;
∑∑N O
EndTurn
∏∏, 3
(
∏∏3 4
)
∏∏4 5
;
∏∏5 6
}
ππ( )
}
∫∫$ %
}
ªª  !
}
ºº 
else
ΩΩ  
{
ææ 
if
øø  "
(
øø# $
boardMatrix
øø$ /
[
øø/ 0
	rowNumber
øø0 9
,
øø9 :
columnNumber
øø; G
]
øøG H
==
øøI K
Checker
øøL S
.
øøS T
	freeSpace
øøT ]
&&
øø^ `
(
øøa b
	rowNumber
øøb k
-
øøl m
previousRow
øøn y
==
øøz |
$num
øø} ~
)
øø~ 
&&øøÄ Ç
columnNumberøøÉ è
-øøê ë
previousColumnøøí †
==øø° £
$numøø§ •
)øø• ¶
{
¿¿  !!
player1CheckerCount
¡¡$ 7
--
¡¡7 9
;
¡¡9 :
boardMatrix
√√$ /
[
√√/ 0
	rowNumber
√√0 9
-
√√: ;
$num
√√< =
,
√√= >
columnNumber
√√? K
-
√√L M
$num
√√N O
]
√√O P
=
√√Q R
Checker
√√S Z
.
√√Z [
	freeSpace
√√[ d
;
√√d e
if
≈≈$ &
(
≈≈' (
IsKingChecker
≈≈( 5
(
≈≈5 6
)
≈≈6 7
)
≈≈7 8
{
∆∆$ % 
DismissButtonClick
««( :
(
««: ;
previousButton
««; I
)
««I J
;
««J K
EndTurn
»»( /
(
»»/ 0
)
»»0 1
;
»»1 2
}
……$ %
else
  $ (
{
ÀÀ$ %
boardMatrix
ÃÃ( 3
[
ÃÃ3 4
	rowNumber
ÃÃ4 =
,
ÃÃ= >
columnNumber
ÃÃ? K
]
ÃÃK L
=
ÃÃM N
Checker
ÃÃO V
.
ÃÃV W
player2Checker
ÃÃW e
;
ÃÃe f
boardMatrix
ÕÕ( 3
[
ÕÕ3 4
previousRow
ÕÕ4 ?
,
ÕÕ? @
previousColumn
ÕÕA O
]
ÕÕO P
=
ÕÕQ R
Checker
ÕÕS Z
.
ÕÕZ [
	freeSpace
ÕÕ[ d
;
ÕÕd e 
DismissButtonClick
œœ( :
(
œœ: ;
previousButton
œœ; I
)
œœI J
;
œœJ K'
UpdateCheckersGuiPosition
––( A
(
––A B
boardMatrix
––B M
)
––M N
;
––N O
if
““( *
(
““+ ,"
Player2MoreJumpCheck
““, @
(
““@ A
)
““A B
)
““B C
{
””( )!
RemarkClickedButton
‘‘, ?
(
‘‘? @
button
‘‘@ F
)
‘‘F G
;
‘‘G H
previousButton
’’, :
=
’’; <
button
’’= C
;
’’C D
}
÷÷( )
else
◊◊( ,
{
ÿÿ( ) 
DismissButtonClick
ŸŸ, >
(
ŸŸ> ?
previousButton
ŸŸ? M
)
ŸŸM N
;
ŸŸN O
EndTurn
⁄⁄, 3
(
⁄⁄3 4
)
⁄⁄4 5
;
⁄⁄5 6
}
€€( )
}
‹‹$ %
}
››  !
else
ﬁﬁ  $
{
ﬂﬂ  !
InvalidClick
‡‡$ 0
(
‡‡0 1
)
‡‡1 2
;
‡‡2 3
}
··  !
}
‚‚ 
}
„„ 
}
‰‰ 
else
ÂÂ 
{
ÊÊ 
if
ÁÁ 
(
ÁÁ 
KingMove
ÁÁ $
(
ÁÁ$ %
)
ÁÁ% &
)
ÁÁ& '
{
ËË 
button
ÈÈ "
.
ÈÈ" #
Content
ÈÈ# *
=
ÈÈ+ ,
$str
ÈÈ- 0
;
ÈÈ0 1
button
ÍÍ "
.
ÍÍ" #
FontSize
ÍÍ# +
=
ÍÍ, -
$num
ÍÍ. 0
;
ÍÍ0 1
button
ÎÎ "
.
ÎÎ" #

Foreground
ÎÎ# -
=
ÎÎ. /
player2Color
ÎÎ0 <
;
ÎÎ< =
previousButton
ÏÏ *
.
ÏÏ* +
Content
ÏÏ+ 2
=
ÏÏ3 4
$str
ÏÏ5 7
;
ÏÏ7 8 
DismissButtonClick
ÓÓ .
(
ÓÓ. /
previousButton
ÓÓ/ =
)
ÓÓ= >
;
ÓÓ> ?
EndTurn
ÔÔ #
(
ÔÔ# $
)
ÔÔ$ %
;
ÔÔ% &
}
 
else
ÒÒ 
{
ÚÚ 
if
ÛÛ 
(
ÛÛ  
ValidateKingJump
ÛÛ  0
(
ÛÛ0 1
)
ÛÛ1 2
)
ÛÛ2 3
{
ÙÙ !
player1CheckerCount
ıı  3
--
ıı3 5
;
ıı5 6
int
˜˜  #
	jumpedRow
˜˜$ -
=
˜˜. /
(
˜˜0 1
int
˜˜1 4
)
˜˜4 5
(
˜˜5 6
	rowNumber
˜˜6 ?
+
˜˜@ A
(
˜˜B C
(
˜˜C D
	rowNumber
˜˜D M
-
˜˜N O
previousRow
˜˜P [
)
˜˜[ \
*
˜˜] ^
-
˜˜_ `
$num
˜˜` b
)
˜˜b c
)
˜˜c d
;
˜˜d e
int
¯¯  #
	jumpedCol
¯¯$ -
=
¯¯. /
(
¯¯0 1
int
¯¯1 4
)
¯¯4 5
(
¯¯5 6
columnNumber
¯¯6 B
+
¯¯C D
(
¯¯E F
(
¯¯F G
columnNumber
¯¯G S
-
¯¯T U
previousColumn
¯¯V d
)
¯¯d e
*
¯¯f g
-
¯¯h i
$num
¯¯i k
)
¯¯k l
)
¯¯l m
;
¯¯m n
boardMatrix
˙˙  +
[
˙˙+ ,
	rowNumber
˙˙, 5
,
˙˙5 6
columnNumber
˙˙7 C
]
˙˙C D
=
˙˙E F
Checker
˙˙G N
.
˙˙N O
player2King
˙˙O Z
;
˙˙Z [
boardMatrix
˚˚  +
[
˚˚+ ,
	jumpedRow
˚˚, 5
,
˚˚5 6
	jumpedCol
˚˚7 @
]
˚˚@ A
=
˚˚B C
Checker
˚˚D K
.
˚˚K L
	freeSpace
˚˚L U
;
˚˚U V
boardMatrix
¸¸  +
[
¸¸+ ,
previousRow
¸¸, 7
,
¸¸7 8
previousColumn
¸¸9 G
]
¸¸G H
=
¸¸I J
Checker
¸¸K R
.
¸¸R S
	freeSpace
¸¸S \
;
¸¸\ ] 
DismissButtonClick
˛˛  2
(
˛˛2 3
previousButton
˛˛3 A
)
˛˛A B
;
˛˛B C'
UpdateCheckersGuiPosition
ˇˇ  9
(
ˇˇ9 :
boardMatrix
ˇˇ: E
)
ˇˇE F
;
ˇˇF G
if
ÅÅ  "
(
ÅÅ# $#
KingMoreJumpAvaliable
ÅÅ$ 9
(
ÅÅ9 :
)
ÅÅ: ;
)
ÅÅ; <
{
ÇÇ  !
previousButton
ÉÉ$ 2
=
ÉÉ3 4
button
ÉÉ5 ;
;
ÉÉ; <!
RemarkClickedButton
ÑÑ$ 7
(
ÑÑ7 8
button
ÑÑ8 >
)
ÑÑ> ?
;
ÑÑ? @
}
ÖÖ  !
else
ÜÜ  $
{
áá  ! 
DismissButtonClick
àà$ 6
(
àà6 7
previousButton
àà7 E
)
ààE F
;
ààF G
EndTurn
ââ$ +
(
ââ+ ,
)
ââ, -
;
ââ- .
}
ää  !
}
ãã 
else
åå  
{
çç 
InvalidClick
éé  ,
(
éé, -
)
éé- .
;
éé. /
}
èè 
}
êê 
}
ëë 
}
íí 
else
ìì 
{
îî 
current_player
ïï "
.
ïï" #
Text
ïï# '
=
ïï( )
$str
ïï* 9
;
ïï9 :
if
óó 
(
óó 
boardMatrix
óó #
[
óó# $
	rowNumber
óó$ -
,
óó- .
columnNumber
óó/ ;
]
óó; <
==
óó= ?
Checker
óó@ G
.
óóG H
player2Checker
óóH V
||
óóW Y
boardMatrix
óóZ e
[
óóe f
	rowNumber
óóf o
,
óóo p
columnNumber
óóq }
]
óó} ~
==óó Å
CheckeróóÇ â
.óóâ ä
player2Kingóóä ï
)óóï ñ
{
òò 
previousButton
ôô &
=
ôô' (
button
ôô) /
;
ôô/ 0$
checkPlayerSecondClick
öö .
=
öö/ 0
true
öö1 5
;
öö5 6!
RemarkClickedButton
õõ +
(
õõ+ ,
button
õõ, 2
)
õõ2 3
;
õõ3 4
}
úú 
}
ùù 
}
ûû 
}
üü 	
private
°° 
void
°° 
GenerateGame
°° !
(
°°! "
)
°°" #
{
¢¢ 	

buttonList
££ 
=
££ 
Board
££ 
.
££ 
Children
££ '
.
££' (
Cast
££( ,
<
££, -
Button
££- 3
>
££3 4
(
££4 5
)
££5 6
.
££6 7
ToList
££7 =
(
££= >
)
££> ?
;
££? @
boardMatrix
§§ 
=
§§ 
new
§§ 
Checker
§§ %
[
§§% &
$num
§§& '
,
§§' (
$num
§§) *
]
§§* +
;
§§+ ,
int
¶¶ 
	travelRow
¶¶ 
;
¶¶ 
for
®® 
(
®® 
	travelRow
®® 
=
®® 
$num
®® 
;
®® 
	travelRow
®®  )
<
®®* +
$num
®®, -
;
®®- .
	travelRow
®®/ 8
++
®®8 :
)
®®: ;
{
©© 
if
™™ 
(
™™ 
	travelRow
™™ 
==
™™  
$num
™™! "
||
™™# %
	travelRow
™™& /
==
™™0 2
$num
™™3 4
||
™™5 7
	travelRow
™™8 A
==
™™B D
$num
™™E F
)
™™F G
{
´´ 
int
¨¨ 
travelColumns
¨¨ %
;
¨¨% &
for
ÆÆ 
(
ÆÆ 
travelColumns
ÆÆ &
=
ÆÆ' (
$num
ÆÆ) *
;
ÆÆ* +
travelColumns
ÆÆ, 9
<
ÆÆ: ;
$num
ÆÆ< =
;
ÆÆ= >
travelColumns
ÆÆ? L
+=
ÆÆM O
$num
ÆÆP Q
)
ÆÆQ R
{
ØØ 
if
∞∞ 
(
∞∞ 
	travelRow
∞∞ %
==
∞∞& (
$num
∞∞) *
||
∞∞+ -
	travelRow
∞∞. 7
==
∞∞8 :
$num
∞∞; <
)
∞∞< =
{
±± 
boardMatrix
≤≤ '
[
≤≤' (
	travelRow
≤≤( 1
,
≤≤1 2
travelColumns
≤≤3 @
]
≤≤@ A
=
≤≤B C
Checker
≤≤D K
.
≤≤K L
player2Checker
≤≤L Z
;
≤≤Z [
}
≥≥ 
else
¥¥ 
{
µµ 
boardMatrix
∂∂ '
[
∂∂' (
	travelRow
∂∂( 1
,
∂∂1 2
travelColumns
∂∂3 @
]
∂∂@ A
=
∂∂B C
Checker
∂∂D K
.
∂∂K L
player1Checker
∂∂L Z
;
∂∂Z [
}
∑∑ 
}
∏∏ 
}
ππ 
if
ªª 
(
ªª 
	travelRow
ªª 
==
ªª  
$num
ªª! "
||
ªª# %
	travelRow
ªª& /
==
ªª0 2
$num
ªª3 4
||
ªª5 7
	travelRow
ªª8 A
==
ªªB D
$num
ªªE F
)
ªªF G
{
ºº 
int
ΩΩ 
travelColumns
ΩΩ %
;
ΩΩ% &
for
øø 
(
øø 
travelColumns
øø &
=
øø' (
$num
øø) *
;
øø* +
travelColumns
øø, 9
<
øø: ;
$num
øø< =
;
øø= >
travelColumns
øø? L
+=
øøM O
$num
øøP Q
)
øøQ R
{
¿¿ 
if
¡¡ 
(
¡¡ 
	travelRow
¡¡ %
==
¡¡& (
$num
¡¡) *
||
¡¡+ -
	travelRow
¡¡. 7
==
¡¡8 :
$num
¡¡; <
)
¡¡< =
{
¬¬ 
boardMatrix
√√ '
[
√√' (
	travelRow
√√( 1
,
√√1 2
travelColumns
√√3 @
]
√√@ A
=
√√B C
Checker
√√D K
.
√√K L
player1Checker
√√L Z
;
√√Z [
}
ƒƒ 
else
≈≈ 
{
∆∆ 
boardMatrix
«« '
[
««' (
	travelRow
««( 1
,
««1 2
travelColumns
««3 @
]
««@ A
=
««B C
Checker
««D K
.
««K L
player2Checker
««L Z
;
««Z [
}
»» 
}
…… 
}
   
}
ÀÀ 
player1Turn
ÃÃ 
=
ÃÃ 
true
ÃÃ 
;
ÃÃ $
checkPlayerSecondClick
ÕÕ "
=
ÕÕ# $
false
ÕÕ% *
;
ÕÕ* +
	rowNumber
ŒŒ 
=
ŒŒ 
-
ŒŒ 
$num
ŒŒ 
;
ŒŒ 
columnNumber
œœ 
=
œœ 
$num
œœ 
;
œœ 
previousRow
–– 
=
–– 
$num
–– 
;
–– 
previousColumn
—— 
=
—— 
$num
—— 
;
—— !
player1CheckerCount
““ 
=
““  !
$num
““" $
;
““$ %!
player2CheckerCount
”” 
=
””  !
$num
””" $
;
””$ %
int
’’ 
counter
’’ 
=
’’ 
$num
’’ 
;
’’ 

buttonList
◊◊ 
.
◊◊ 
ForEach
◊◊ 
(
◊◊ 
button
◊◊ %
=>
◊◊& (
{
ÿÿ 
if
ŸŸ 
(
ŸŸ 
counter
ŸŸ 
<
ŸŸ 
$num
ŸŸ  
)
ŸŸ  !
{
⁄⁄ 
button
€€ 
.
€€ 
Content
€€ "
=
€€# $
$str
€€% (
;
€€( )
button
‹‹ 
.
‹‹ 
FontSize
‹‹ #
=
‹‹$ %
$num
‹‹& (
;
‹‹( )
button
›› 
.
›› 

Foreground
›› %
=
››& '
player2Color
››( 4
;
››4 5
counter
ﬁﬁ 
++
ﬁﬁ 
;
ﬁﬁ 
}
ﬂﬂ 
else
‡‡ 
{
·· 
if
‚‚ 
(
‚‚ 
counter
‚‚ 
>=
‚‚  "
$num
‚‚# %
&&
‚‚& (
counter
‚‚) 0
<
‚‚1 2
$num
‚‚3 5
)
‚‚5 6
{
„„ 
button
‰‰ 
.
‰‰ 
Content
‰‰ &
=
‰‰' (
$str
‰‰) ,
;
‰‰, -
button
ÂÂ 
.
ÂÂ 
FontSize
ÂÂ '
=
ÂÂ( )
$num
ÂÂ* ,
;
ÂÂ, -
button
ÊÊ 
.
ÊÊ 

Foreground
ÊÊ )
=
ÊÊ* +
player1Color
ÊÊ, 8
;
ÊÊ8 9
counter
ÁÁ 
++
ÁÁ !
;
ÁÁ! "
}
ËË 
else
ÈÈ 
{
ÍÍ 
button
ÎÎ 
.
ÎÎ 
Content
ÎÎ &
=
ÎÎ' (
string
ÎÎ) /
.
ÎÎ/ 0
Empty
ÎÎ0 5
;
ÎÎ5 6
counter
ÏÏ 
++
ÏÏ !
;
ÏÏ! "
}
ÌÌ 
}
ÓÓ 
}
ÔÔ 
)
ÔÔ 
;
ÔÔ 
}
 	
private
ÚÚ 
void
ÚÚ !
RemarkClickedButton
ÚÚ (
(
ÚÚ( )
Button
ÚÚ) /
buttonSelected
ÚÚ0 >
)
ÚÚ> ?
{
ÛÛ 	
buttonSelected
ÙÙ 
.
ÙÙ 
BorderThickness
ÙÙ *
=
ÙÙ+ ,
new
ÙÙ- 0
	Thickness
ÙÙ1 :
(
ÙÙ: ;
$num
ÙÙ; <
,
ÙÙ< =
$num
ÙÙ> ?
,
ÙÙ? @
$num
ÙÙA B
,
ÙÙB C
$num
ÙÙD E
)
ÙÙE F
;
ÙÙF G
buttonSelected
ıı 
.
ıı 
BorderBrush
ıı &
=
ıı' (
Brushes
ıı) 0
.
ıı0 1
Snow
ıı1 5
;
ıı5 6
}
ˆˆ 	
private
¯¯ 
void
¯¯  
DismissButtonClick
¯¯ '
(
¯¯' (
Button
¯¯( .
buttonSelected
¯¯/ =
)
¯¯= >
{
˘˘ 	
buttonSelected
˙˙ 
.
˙˙ 
BorderThickness
˙˙ *
=
˙˙+ ,
new
˙˙- 0
	Thickness
˙˙1 :
(
˙˙: ;
$num
˙˙; <
,
˙˙< =
$num
˙˙> ?
,
˙˙? @
$num
˙˙A B
,
˙˙B C
$num
˙˙D E
)
˙˙E F
;
˙˙F G
buttonSelected
˚˚ 
.
˚˚ 
BorderBrush
˚˚ &
=
˚˚' (
Brushes
˚˚) 0
.
˚˚0 1
	SlateGray
˚˚1 :
;
˚˚: ;
}
¸¸ 	
public
˛˛ 
void
˛˛ '
UpdateCheckersGuiPosition
˛˛ -
(
˛˛- .
Checker
˛˛. 5
[
˛˛6 7
,
˛˛7 8
]
˛˛8 9
boardMatrixUpdate
˛˛9 J
)
˛˛J K
{
ˇˇ 	
boardMatrix
ÄÄ 
=
ÄÄ 
boardMatrixUpdate
ÄÄ +
;
ÄÄ+ ,

buttonList
ÅÅ 
.
ÅÅ 
ForEach
ÅÅ 
(
ÅÅ 
button
ÅÅ %
=>
ÅÅ& (
{
ÅÅ) *
int
ÉÉ 
row
ÉÉ 
=
ÉÉ 
Grid
ÉÉ 
.
ÉÉ 
GetRow
ÉÉ %
(
ÉÉ% &
button
ÉÉ& ,
)
ÉÉ, -
;
ÉÉ- .
int
ÑÑ 
col
ÑÑ 
=
ÑÑ 
Grid
ÑÑ 
.
ÑÑ 
	GetColumn
ÑÑ (
(
ÑÑ( )
button
ÑÑ) /
)
ÑÑ/ 0
;
ÑÑ0 1
if
ÜÜ 
(
ÜÜ 
boardMatrixUpdate
ÜÜ %
[
ÜÜ% &
row
ÜÜ& )
,
ÜÜ) *
col
ÜÜ+ .
]
ÜÜ. /
==
ÜÜ0 2
Checker
ÜÜ3 :
.
ÜÜ: ;
player1Checker
ÜÜ; I
)
ÜÜI J
{
áá 
button
àà 
.
àà 
Content
àà "
=
àà# $
$str
àà% (
;
àà( )
button
ââ 
.
ââ 
FontSize
ââ #
=
ââ$ %
$num
ââ& (
;
ââ( )
button
ää 
.
ää 

Foreground
ää %
=
ää& '
player1Color
ää( 4
;
ää4 5
}
ãã 
else
åå 
{
çç 
if
éé 
(
éé 
boardMatrixUpdate
éé )
[
éé) *
row
éé* -
,
éé- .
col
éé/ 2
]
éé2 3
==
éé4 6
Checker
éé7 >
.
éé> ?
player1King
éé? J
)
ééJ K
{
èè 
button
êê 
.
êê 
Content
êê &
=
êê' (
$str
êê) ,
;
êê, -
button
ëë 
.
ëë 
FontSize
ëë '
=
ëë( )
$num
ëë* ,
;
ëë, -
button
íí 
.
íí 

Foreground
íí )
=
íí* +
player1Color
íí, 8
;
íí8 9
}
ìì 
else
îî 
{
ïï 
if
ññ 
(
ññ 
boardMatrixUpdate
ññ -
[
ññ- .
row
ññ. 1
,
ññ1 2
col
ññ3 6
]
ññ6 7
==
ññ8 :
Checker
ññ; B
.
ññB C
player2Checker
ññC Q
)
ññQ R
{
óó 
button
òò "
.
òò" #
Content
òò# *
=
òò+ ,
$str
òò- 0
;
òò0 1
button
ôô "
.
ôô" #
FontSize
ôô# +
=
ôô, -
$num
ôô. 0
;
ôô0 1
button
öö "
.
öö" #

Foreground
öö# -
=
öö. /
player2Color
öö0 <
;
öö< =
}
õõ 
else
úú 
{
ùù 
if
ûû 
(
ûû  
boardMatrixUpdate
ûû  1
[
ûû1 2
row
ûû2 5
,
ûû5 6
col
ûû7 :
]
ûû: ;
==
ûû< >
Checker
ûû? F
.
ûûF G
player2King
ûûG R
)
ûûR S
{
üü 
button
††  &
.
††& '
Content
††' .
=
††/ 0
$str
††1 4
;
††4 5
button
°°  &
.
°°& '
FontSize
°°' /
=
°°0 1
$num
°°2 4
;
°°4 5
button
¢¢  &
.
¢¢& '

Foreground
¢¢' 1
=
¢¢2 3
player2Color
¢¢4 @
;
¢¢@ A
}
££ 
else
§§  
{
•• 
button
¶¶  &
.
¶¶& '
Content
¶¶' .
=
¶¶/ 0
$str
¶¶1 3
;
¶¶3 4
}
ßß 
}
®® 
}
©© 
}
™™ 
}
´´ 
)
´´ 
;
´´ 
}
¨¨ 	
private
ÆÆ 
bool
ÆÆ "
Player1MoreJumpCheck
ÆÆ )
(
ÆÆ) *
)
ÆÆ* +
{
ØØ 	
if
∞∞ 
(
∞∞ 
	rowNumber
∞∞ 
-
∞∞ 
$num
∞∞ 
>=
∞∞  
$num
∞∞! "
&&
∞∞# %
columnNumber
∞∞& 2
-
∞∞3 4
$num
∞∞5 6
>=
∞∞7 9
$num
∞∞: ;
&&
∞∞< >
boardMatrix
∞∞? J
[
∞∞J K
	rowNumber
∞∞K T
-
∞∞U V
$num
∞∞W X
,
∞∞X Y
columnNumber
∞∞Z f
-
∞∞g h
$num
∞∞i j
]
∞∞j k
==
∞∞l n
Checker
∞∞o v
.
∞∞v w
	freeSpace∞∞w Ä
&&∞∞Å É
(
±± 
boardMatrix
±± 
[
±± 
	rowNumber
±± &
-
±±' (
$num
±±) *
,
±±* +
columnNumber
±±, 8
-
±±9 :
$num
±±; <
]
±±< =
==
±±> @
Checker
±±A H
.
±±H I
player2Checker
±±I W
||
±±X Z
boardMatrix
±±[ f
[
±±f g
	rowNumber
±±g p
-
±±q r
$num
±±s t
,
±±t u
columnNumber±±v Ç
-±±É Ñ
$num±±Ö Ü
]±±Ü á
==±±à ä
Checker±±ã í
.±±í ì
player2King±±ì û
)±±û ü
)±±ü †
{
≤≤ 
return
≥≥ 
true
≥≥ 
;
≥≥ 
}
¥¥ 
else
µµ 
{
∂∂ 
if
∑∑ 
(
∑∑ 
	rowNumber
∑∑ 
-
∑∑ 
$num
∑∑  !
>=
∑∑" $
$num
∑∑% &
&&
∑∑' )
columnNumber
∑∑* 6
+
∑∑7 8
$num
∑∑9 :
<=
∑∑; =
$num
∑∑> ?
&&
∑∑@ B
boardMatrix
∑∑C N
[
∑∑N O
	rowNumber
∑∑O X
-
∑∑Y Z
$num
∑∑[ \
,
∑∑\ ]
columnNumber
∑∑^ j
+
∑∑k l
$num
∑∑m n
]
∑∑n o
==
∑∑p r
Checker
∑∑s z
.
∑∑z {
	freeSpace∑∑{ Ñ
&&∑∑Ö á
(
∏∏ 
boardMatrix
∏∏  
[
∏∏  !
	rowNumber
∏∏! *
-
∏∏+ ,
$num
∏∏- .
,
∏∏. /
columnNumber
∏∏0 <
+
∏∏= >
$num
∏∏? @
]
∏∏@ A
==
∏∏B D
Checker
∏∏E L
.
∏∏L M
player2Checker
∏∏M [
||
∏∏\ ^
boardMatrix
∏∏_ j
[
∏∏j k
	rowNumber
∏∏k t
-
∏∏u v
$num
∏∏w x
,
∏∏x y
columnNumber∏∏z Ü
+∏∏á à
$num∏∏â ä
]∏∏ä ã
==∏∏å é
Checker∏∏è ñ
.∏∏ñ ó
player2King∏∏ó ¢
)∏∏¢ £
)∏∏£ §
{
ππ 
return
∫∫ 
true
∫∫ 
;
∫∫  
}
ªª 
else
ºº 
{
ΩΩ 
return
ææ 
false
ææ  
;
ææ  !
}
øø 
}
¿¿ 
}
¡¡ 	
private
√√ 
bool
√√ "
Player2MoreJumpCheck
√√ )
(
√√) *
)
√√* +
{
ƒƒ 	
if
∆∆ 
(
∆∆ 
	rowNumber
∆∆ 
+
∆∆ 
$num
∆∆ 
<=
∆∆  
$num
∆∆! "
&&
∆∆# %
columnNumber
∆∆& 2
+
∆∆3 4
$num
∆∆5 6
<=
∆∆7 9
$num
∆∆: ;
&&
∆∆< >
boardMatrix
∆∆? J
[
∆∆J K
	rowNumber
∆∆K T
+
∆∆U V
$num
∆∆W X
,
∆∆X Y
columnNumber
∆∆Z f
+
∆∆g h
$num
∆∆i j
]
∆∆j k
==
∆∆l n
Checker
∆∆o v
.
∆∆v w
	freeSpace∆∆w Ä
&&∆∆Å É
(
«« 
boardMatrix
«« 
[
«« 
	rowNumber
«« &
+
««' (
$num
««) *
,
««* +
columnNumber
««, 8
+
««9 :
$num
««; <
]
««< =
==
««> @
Checker
««A H
.
««H I
player1Checker
««I W
||
««X Z
boardMatrix
««[ f
[
««f g
	rowNumber
««g p
+
««q r
$num
««s t
,
««t u
columnNumber««v Ç
+««É Ñ
$num««Ö Ü
]««Ü á
==««à ä
Checker««ã í
.««í ì
player1King««ì û
)««û ü
)««ü †
{
»» 
return
…… 
true
…… 
;
…… 
}
   
else
ÀÀ 
{
ÃÃ 
if
ÕÕ 
(
ÕÕ 
	rowNumber
ÕÕ 
+
ÕÕ 
$num
ÕÕ  !
<=
ÕÕ" $
$num
ÕÕ% &
&&
ÕÕ' )
columnNumber
ÕÕ* 6
-
ÕÕ7 8
$num
ÕÕ9 :
>=
ÕÕ; =
$num
ÕÕ> ?
&&
ÕÕ@ B
boardMatrix
ÕÕC N
[
ÕÕN O
	rowNumber
ÕÕO X
+
ÕÕY Z
$num
ÕÕ[ \
,
ÕÕ\ ]
columnNumber
ÕÕ^ j
-
ÕÕk l
$num
ÕÕm n
]
ÕÕn o
==
ÕÕp r
Checker
ÕÕs z
.
ÕÕz {
	freeSpaceÕÕ{ Ñ
&&ÕÕÖ á
(
ŒŒ 
boardMatrix
ŒŒ 
[
ŒŒ 
	rowNumber
ŒŒ &
+
ŒŒ' (
$num
ŒŒ) *
,
ŒŒ* +
columnNumber
ŒŒ, 8
-
ŒŒ9 :
$num
ŒŒ; <
]
ŒŒ< =
==
ŒŒ> @
Checker
ŒŒA H
.
ŒŒH I
player1Checker
ŒŒI W
||
ŒŒX Z
boardMatrix
ŒŒ[ f
[
ŒŒf g
	rowNumber
ŒŒg p
+
ŒŒq r
$num
ŒŒs t
,
ŒŒt u
columnNumberŒŒv Ç
-ŒŒÉ Ñ
$numŒŒÖ Ü
]ŒŒÜ á
==ŒŒà ä
CheckerŒŒã í
.ŒŒí ì
player1KingŒŒì û
)ŒŒû ü
)ŒŒü †
{
œœ 
return
–– 
true
–– 
;
––  
}
—— 
else
““ 
{
”” 
return
‘‘ 
false
‘‘  
;
‘‘  !
}
’’ 
}
÷÷ 
}
◊◊ 	
private
ŸŸ 
bool
ŸŸ #
KingMoreJumpAvaliable
ŸŸ *
(
ŸŸ* +
)
ŸŸ+ ,
{
⁄⁄ 	
if
€€ 
(
€€ 
player1Turn
€€ 
)
€€ 
{
‹‹ 
if
›› 
(
›› 
	rowNumber
›› 
-
›› 
$num
››  !
>=
››" $
$num
››% &
&&
››' )
columnNumber
››* 6
-
››7 8
$num
››9 :
>=
››; =
$num
››> ?
&&
››@ B
boardMatrix
››C N
[
››N O
	rowNumber
››O X
-
››Y Z
$num
››[ \
,
››\ ]
columnNumber
››^ j
-
››k l
$num
››m n
]
››n o
==
››p r
Checker
››s z
.
››z {
	freeSpace››{ Ñ
&&››Ö á
(
ﬁﬁ 
boardMatrix
ﬁﬁ  
[
ﬁﬁ  !
	rowNumber
ﬁﬁ! *
-
ﬁﬁ+ ,
$num
ﬁﬁ- .
,
ﬁﬁ. /
columnNumber
ﬁﬁ0 <
-
ﬁﬁ= >
$num
ﬁﬁ? @
]
ﬁﬁ@ A
==
ﬁﬁB D
Checker
ﬁﬁE L
.
ﬁﬁL M
player2Checker
ﬁﬁM [
||
ﬁﬁ\ ^
boardMatrix
ﬁﬁ_ j
[
ﬁﬁj k
	rowNumber
ﬁﬁk t
-
ﬁﬁu v
$num
ﬁﬁw x
,
ﬁﬁx y
columnNumberﬁﬁz Ü
-ﬁﬁá à
$numﬁﬁâ ä
]ﬁﬁä ã
==ﬁﬁå é
Checkerﬁﬁè ñ
.ﬁﬁñ ó
player2Kingﬁﬁó ¢
)ﬁﬁ¢ £
)ﬁﬁ£ §
{
ﬂﬂ 
return
‡‡ 
true
‡‡ 
;
‡‡  
}
·· 
else
‚‚ 
{
„„ 
if
‰‰ 
(
‰‰ 
	rowNumber
‰‰ !
-
‰‰" #
$num
‰‰$ %
>=
‰‰& (
$num
‰‰) *
&&
‰‰+ -
columnNumber
‰‰. :
+
‰‰; <
$num
‰‰= >
<=
‰‰? A
$num
‰‰B C
&&
‰‰D F
boardMatrix
‰‰G R
[
‰‰R S
	rowNumber
‰‰S \
-
‰‰] ^
$num
‰‰_ `
,
‰‰` a
columnNumber
‰‰b n
+
‰‰o p
$num
‰‰q r
]
‰‰r s
==
‰‰t v
Checker
‰‰w ~
.
‰‰~ 
	freeSpace‰‰ à
&&‰‰â ã
(
ÂÂ 
boardMatrix
ÂÂ $
[
ÂÂ$ %
	rowNumber
ÂÂ% .
-
ÂÂ/ 0
$num
ÂÂ1 2
,
ÂÂ2 3
columnNumber
ÂÂ4 @
+
ÂÂA B
$num
ÂÂC D
]
ÂÂD E
==
ÂÂF H
Checker
ÂÂI P
.
ÂÂP Q
player2Checker
ÂÂQ _
||
ÂÂ` b
boardMatrix
ÂÂc n
[
ÂÂn o
	rowNumber
ÂÂo x
-
ÂÂy z
$num
ÂÂ{ |
,
ÂÂ| }
columnNumberÂÂ~ ä
+ÂÂã å
$numÂÂç é
]ÂÂé è
==ÂÂê í
CheckerÂÂì ö
.ÂÂö õ
player2KingÂÂõ ¶
)ÂÂ¶ ß
)ÂÂß ®
{
ÊÊ 
return
ÁÁ 
true
ÁÁ #
;
ÁÁ# $
}
ËË 
else
ÈÈ 
{
ÍÍ 
if
ÎÎ 
(
ÎÎ 
	rowNumber
ÎÎ %
+
ÎÎ& '
$num
ÎÎ( )
<=
ÎÎ* ,
$num
ÎÎ- .
&&
ÎÎ/ 1
columnNumber
ÎÎ2 >
-
ÎÎ? @
$num
ÎÎA B
>=
ÎÎC E
$num
ÎÎF G
&&
ÎÎH J
boardMatrix
ÎÎK V
[
ÎÎV W
	rowNumber
ÎÎW `
+
ÎÎa b
$num
ÎÎc d
,
ÎÎd e
columnNumber
ÎÎf r
-
ÎÎs t
$num
ÎÎu v
]
ÎÎv w
==
ÎÎx z
CheckerÎÎ{ Ç
.ÎÎÇ É
	freeSpaceÎÎÉ å
&&ÎÎç è
(
ÏÏ 
boardMatrix
ÏÏ (
[
ÏÏ( )
	rowNumber
ÏÏ) 2
+
ÏÏ3 4
$num
ÏÏ5 6
,
ÏÏ6 7
columnNumber
ÏÏ8 D
-
ÏÏE F
$num
ÏÏG H
]
ÏÏH I
==
ÏÏJ L
Checker
ÏÏM T
.
ÏÏT U
player2Checker
ÏÏU c
||
ÏÏd f
boardMatrix
ÏÏg r
[
ÏÏr s
	rowNumber
ÏÏs |
+
ÏÏ} ~
$numÏÏ Ä
,ÏÏÄ Å
columnNumberÏÏÇ é
-ÏÏè ê
$numÏÏë í
]ÏÏí ì
==ÏÏî ñ
CheckerÏÏó û
.ÏÏû ü
player2KingÏÏü ™
)ÏÏ™ ´
)ÏÏ´ ¨
{
ÌÌ 
return
ÓÓ "
true
ÓÓ# '
;
ÓÓ' (
}
ÔÔ 
else
 
{
ÒÒ 
if
ÚÚ 
(
ÚÚ  
	rowNumber
ÚÚ  )
+
ÚÚ* +
$num
ÚÚ, -
<=
ÚÚ. 0
$num
ÚÚ1 2
&&
ÚÚ3 5
columnNumber
ÚÚ6 B
+
ÚÚC D
$num
ÚÚE F
<=
ÚÚG I
$num
ÚÚJ K
&&
ÚÚL N
boardMatrix
ÚÚO Z
[
ÚÚZ [
	rowNumber
ÚÚ[ d
+
ÚÚe f
$num
ÚÚg h
,
ÚÚh i
columnNumber
ÚÚj v
+
ÚÚw x
$num
ÚÚy z
]
ÚÚz {
==
ÚÚ| ~
CheckerÚÚ Ü
.ÚÚÜ á
	freeSpaceÚÚá ê
&&ÚÚë ì
(
ÛÛ  !
boardMatrix
ÛÛ! ,
[
ÛÛ, -
	rowNumber
ÛÛ- 6
+
ÛÛ7 8
$num
ÛÛ9 :
,
ÛÛ: ;
columnNumber
ÛÛ< H
+
ÛÛI J
$num
ÛÛK L
]
ÛÛL M
==
ÛÛN P
Checker
ÛÛQ X
.
ÛÛX Y
player2Checker
ÛÛY g
||
ÛÛh j
boardMatrix
ÛÛk v
[
ÛÛv w
	rowNumberÛÛw Ä
+ÛÛÅ Ç
$numÛÛÉ Ñ
,ÛÛÑ Ö
columnNumberÛÛÜ í
+ÛÛì î
$numÛÛï ñ
]ÛÛñ ó
==ÛÛò ö
CheckerÛÛõ ¢
.ÛÛ¢ £
player2KingÛÛ£ Æ
)ÛÛÆ Ø
)ÛÛØ ∞
{
ÙÙ 
return
ıı  &
true
ıı' +
;
ıı+ ,
}
ˆˆ 
else
˜˜  
{
¯¯ 
return
˘˘  &
false
˘˘' ,
;
˘˘, -
}
˙˙ 
}
˚˚ 
}
¸¸ 
}
˝˝ 
}
˛˛ 
else
ˇˇ 
{
ÄÄ 
if
ÅÅ 
(
ÅÅ 
	rowNumber
ÅÅ 
-
ÅÅ 
$num
ÅÅ  !
>=
ÅÅ" $
$num
ÅÅ% &
&&
ÅÅ' )
columnNumber
ÅÅ* 6
-
ÅÅ7 8
$num
ÅÅ9 :
>=
ÅÅ; =
$num
ÅÅ> ?
&&
ÅÅ@ B
boardMatrix
ÅÅC N
[
ÅÅN O
	rowNumber
ÅÅO X
-
ÅÅY Z
$num
ÅÅ[ \
,
ÅÅ\ ]
columnNumber
ÅÅ^ j
-
ÅÅk l
$num
ÅÅm n
]
ÅÅn o
==
ÅÅp r
Checker
ÅÅs z
.
ÅÅz {
	freeSpaceÅÅ{ Ñ
&&ÅÅÖ á
(
ÇÇ 
boardMatrix
ÇÇ  
[
ÇÇ  !
	rowNumber
ÇÇ! *
-
ÇÇ+ ,
$num
ÇÇ- .
,
ÇÇ. /
columnNumber
ÇÇ0 <
-
ÇÇ= >
$num
ÇÇ? @
]
ÇÇ@ A
==
ÇÇB D
Checker
ÇÇE L
.
ÇÇL M
player1Checker
ÇÇM [
||
ÇÇ\ ^
boardMatrix
ÇÇ_ j
[
ÇÇj k
	rowNumber
ÇÇk t
-
ÇÇu v
$num
ÇÇw x
,
ÇÇx y
columnNumberÇÇz Ü
-ÇÇá à
$numÇÇâ ä
]ÇÇä ã
==ÇÇå é
CheckerÇÇè ñ
.ÇÇñ ó
player1KingÇÇó ¢
)ÇÇ¢ £
)ÇÇ£ §
{
ÉÉ 
return
ÑÑ 
true
ÑÑ 
;
ÑÑ  
}
ÜÜ 
else
áá 
{
àà 
if
ââ 
(
ââ 
	rowNumber
ââ !
-
ââ" #
$num
ââ$ %
>=
ââ& (
$num
ââ) *
&&
ââ+ -
columnNumber
ââ. :
+
ââ; <
$num
ââ= >
<=
ââ? A
$num
ââB C
&&
ââD F
boardMatrix
ââG R
[
ââR S
	rowNumber
ââS \
-
ââ] ^
$num
ââ_ `
,
ââ` a
columnNumber
ââb n
+
ââo p
$num
ââq r
]
ââr s
==
âât v
Checker
ââw ~
.
ââ~ 
	freeSpaceââ à
&&âââ ã
(
ää 
boardMatrix
ää $
[
ää$ %
	rowNumber
ää% .
-
ää/ 0
$num
ää1 2
,
ää2 3
columnNumber
ää4 @
+
ääA B
$num
ääC D
]
ääD E
==
ääF H
Checker
ääI P
.
ääP Q
player1Checker
ääQ _
||
ää` b
boardMatrix
ääc n
[
ään o
	rowNumber
ääo x
-
ääy z
$num
ää{ |
,
ää| }
columnNumberää~ ä
+ääã å
$numääç é
]ääé è
==ääê í
Checkerääì ö
.ääö õ
player1Kingääõ ¶
)ää¶ ß
)ääß ®
{
ãã 
return
åå 
true
åå #
;
åå# $
}
çç 
else
éé 
{
èè 
if
êê 
(
êê 
	rowNumber
êê %
-
êê& '
$num
êê( )
>=
êê* ,
$num
êê- .
&&
êê/ 1
columnNumber
êê2 >
-
êê? @
$num
êêA B
>=
êêC E
$num
êêF G
&&
êêH J
boardMatrix
êêK V
[
êêV W
	rowNumber
êêW `
+
êêa b
$num
êêc d
,
êêd e
columnNumber
êêf r
-
êês t
$num
êêu v
]
êêv w
==
êêx z
Checkerêê{ Ç
.êêÇ É
	freeSpaceêêÉ å
&&êêç è
(
ëë 
boardMatrix
ëë (
[
ëë( )
	rowNumber
ëë) 2
+
ëë3 4
$num
ëë5 6
,
ëë6 7
columnNumber
ëë8 D
-
ëëE F
$num
ëëG H
]
ëëH I
==
ëëJ L
Checker
ëëM T
.
ëëT U
player1Checker
ëëU c
||
ëëd f
boardMatrix
ëëg r
[
ëër s
	rowNumber
ëës |
+
ëë} ~
$numëë Ä
,ëëÄ Å
columnNumberëëÇ é
-ëëè ê
$numëëë í
]ëëí ì
==ëëî ñ
Checkerëëó û
.ëëû ü
player1Kingëëü ™
)ëë™ ´
)ëë´ ¨
{
íí 
return
ìì "
true
ìì# '
;
ìì' (
}
ïï 
else
ññ 
{
óó 
if
òò 
(
òò  
	rowNumber
òò  )
-
òò* +
$num
òò, -
>=
òò. 0
$num
òò1 2
&&
òò3 5
columnNumber
òò6 B
+
òòC D
$num
òòE F
<=
òòG I
$num
òòJ K
&&
òòL N
boardMatrix
òòO Z
[
òòZ [
	rowNumber
òò[ d
+
òòe f
$num
òòg h
,
òòh i
columnNumber
òòj v
+
òòw x
$num
òòy z
]
òòz {
==
òò| ~
Checkeròò Ü
.òòÜ á
	freeSpaceòòá ê
&&òòë ì
(
ôô  !
boardMatrix
ôô! ,
[
ôô, -
	rowNumber
ôô- 6
+
ôô7 8
$num
ôô9 :
,
ôô: ;
columnNumber
ôô< H
+
ôôI J
$num
ôôK L
]
ôôL M
==
ôôN P
Checker
ôôQ X
.
ôôX Y
player1Checker
ôôY g
||
ôôh j
boardMatrix
ôôk v
[
ôôv w
	rowNumberôôw Ä
+ôôÅ Ç
$numôôÉ Ñ
,ôôÑ Ö
columnNumberôôÜ í
+ôôì î
$numôôï ñ
]ôôñ ó
==ôôò ö
Checkerôôõ ¢
.ôô¢ £
player1Kingôô£ Æ
)ôôÆ Ø
)ôôØ ∞
{
öö 
return
õõ  &
true
õõ' +
;
õõ+ ,
}
úú 
else
ùù  
{
ûû 
return
üü  &
false
üü' ,
;
üü, -
}
†† 
}
°° 
}
¢¢ 
}
££ 
}
§§ 
}
¶¶ 	
private
®® 
bool
®® 
IsKingChecker
®® "
(
®®" #
)
®®# $
{
©© 	
if
™™ 
(
™™ 
	rowNumber
™™ 
==
™™ 
$num
™™ 
&&
™™ !
boardMatrix
™™" -
[
™™- .
previousRow
™™. 9
,
™™9 :
previousColumn
™™; I
]
™™I J
==
™™K M
Checker
™™N U
.
™™U V
player1Checker
™™V d
)
™™d e
{
´´ 
boardMatrix
¨¨ 
[
¨¨ 
	rowNumber
¨¨ %
,
¨¨% &
columnNumber
¨¨' 3
]
¨¨3 4
=
¨¨5 6
Checker
¨¨7 >
.
¨¨> ?
player1King
¨¨? J
;
¨¨J K
boardMatrix
≠≠ 
[
≠≠ 
previousRow
≠≠ '
,
≠≠' (
previousColumn
≠≠) 7
]
≠≠7 8
=
≠≠9 :
Checker
≠≠; B
.
≠≠B C
	freeSpace
≠≠C L
;
≠≠L M'
UpdateCheckersGuiPosition
ØØ )
(
ØØ) *
boardMatrix
ØØ* 5
)
ØØ5 6
;
ØØ6 7
return
±± 
true
±± 
;
±± 
}
≤≤ 
else
≥≥ 
{
¥¥ 
if
µµ 
(
µµ 
	rowNumber
µµ 
==
µµ  
$num
µµ! "
&&
µµ# %
boardMatrix
µµ& 1
[
µµ1 2
previousRow
µµ2 =
,
µµ= >
previousColumn
µµ? M
]
µµM N
==
µµO Q
Checker
µµR Y
.
µµY Z
player2Checker
µµZ h
)
µµh i
{
∂∂ 
boardMatrix
∑∑ 
[
∑∑  
	rowNumber
∑∑  )
,
∑∑) *
columnNumber
∑∑+ 7
]
∑∑7 8
=
∑∑9 :
Checker
∑∑; B
.
∑∑B C
player2King
∑∑C N
;
∑∑N O
boardMatrix
∏∏ 
[
∏∏  
previousRow
∏∏  +
,
∏∏+ ,
previousColumn
∏∏- ;
]
∏∏; <
=
∏∏= >
Checker
∏∏? F
.
∏∏F G
	freeSpace
∏∏G P
;
∏∏P Q'
UpdateCheckersGuiPosition
∫∫ -
(
∫∫- .
boardMatrix
∫∫. 9
)
∫∫9 :
;
∫∫: ;
return
ºº 
true
ºº 
;
ºº  
}
ΩΩ 
else
ææ 
{
øø 
return
¿¿ 
false
¿¿  
;
¿¿  !
}
¡¡ 
}
¬¬ 
}
√√ 	
private
≈≈ 
bool
≈≈ 
KingMove
≈≈ 
(
≈≈ 
)
≈≈ 
{
∆∆ 	
if
«« 
(
«« 
boardMatrix
«« 
[
«« 
	rowNumber
«« %
,
««% &
columnNumber
««' 3
]
««3 4
==
««5 7
Checker
««8 ?
.
««? @
	freeSpace
««@ I
&&
««J L
(
««M N
	rowNumber
««N W
-
««X Y
previousRow
««Z e
==
««f h
$num
««i j
||
««k m
	rowNumber
««n w
-
««x y
previousRow««z Ö
==««Ü à
-««â ä
$num««ä ã
)««ã å
&&
»» 
(
»» 
columnNumber
»»  
-
»»! "
previousColumn
»»# 1
==
»»2 4
$num
»»5 6
||
»»7 9
columnNumber
»»: F
-
»»G H
previousColumn
»»I W
==
»»X Z
-
»»[ \
$num
»»\ ]
)
»»] ^
)
»»^ _
{
…… 
boardMatrix
   
[
   
	rowNumber
   %
,
  % &
columnNumber
  ' 3
]
  3 4
=
  5 6
boardMatrix
  7 B
[
  B C
previousRow
  C N
,
  N O
previousColumn
  P ^
]
  ^ _
;
  _ `
boardMatrix
ÀÀ 
[
ÀÀ 
previousRow
ÀÀ '
,
ÀÀ' (
previousColumn
ÀÀ) 7
]
ÀÀ7 8
=
ÀÀ9 :
Checker
ÀÀ; B
.
ÀÀB C
	freeSpace
ÀÀC L
;
ÀÀL M
return
ÕÕ 
true
ÕÕ 
;
ÕÕ 
}
ŒŒ 
else
œœ 
{
–– 
return
—— 
false
—— 
;
—— 
}
““ 
}
”” 	
private
’’ 
bool
’’ 
ValidateKingJump
’’ %
(
’’% &
)
’’& '
{
÷÷ 	
if
◊◊ 
(
◊◊ 
player1Turn
◊◊ 
)
◊◊ 
{
ÿÿ 
if
ŸŸ 
(
ŸŸ 
boardMatrix
ŸŸ 
[
ŸŸ  
	rowNumber
ŸŸ  )
,
ŸŸ) *
columnNumber
ŸŸ+ 7
]
ŸŸ7 8
==
ŸŸ9 ;
Checker
ŸŸ< C
.
ŸŸC D
	freeSpace
ŸŸD M
&&
ŸŸN P
	rowNumber
ŸŸQ Z
-
ŸŸ[ \
previousRow
ŸŸ] h
==
ŸŸi k
$num
ŸŸl m
&&
ŸŸn p
columnNumber
ŸŸq }
-
ŸŸ~ 
previousColumnŸŸÄ é
==ŸŸè ë
$numŸŸí ì
)ŸŸì î
{
⁄⁄ 
if
€€ 
(
€€ 
boardMatrix
€€ #
[
€€# $
	rowNumber
€€$ -
-
€€. /
$num
€€0 1
,
€€1 2
columnNumber
€€3 ?
-
€€@ A
$num
€€B C
]
€€C D
==
€€E G
Checker
€€H O
.
€€O P
player2Checker
€€P ^
||
€€_ a
boardMatrix
€€b m
[
€€m n
	rowNumber
€€n w
-
€€x y
$num
€€z {
,
€€{ |
columnNumber€€} â
-€€ä ã
$num€€å ç
]€€ç é
==€€è ë
Checker€€í ô
.€€ô ö
player2King€€ö •
)€€• ¶
{
‹‹ 
return
›› 
true
›› #
;
››# $
}
ﬁﬁ 
else
ﬂﬂ 
{
‡‡ 
return
·· 
false
·· $
;
··$ %
}
‚‚ 
}
‰‰ 
else
ÂÂ 
{
ÊÊ 
if
ÁÁ 
(
ÁÁ 
boardMatrix
ÁÁ #
[
ÁÁ# $
	rowNumber
ÁÁ$ -
,
ÁÁ- .
columnNumber
ÁÁ/ ;
]
ÁÁ; <
==
ÁÁ= ?
Checker
ÁÁ@ G
.
ÁÁG H
	freeSpace
ÁÁH Q
&&
ÁÁR T
	rowNumber
ÁÁU ^
-
ÁÁ_ `
previousRow
ÁÁa l
==
ÁÁm o
$num
ÁÁp q
&&
ÁÁr t
columnNumberÁÁu Å
-ÁÁÇ É
previousColumnÁÁÑ í
==ÁÁì ï
-ÁÁñ ó
$numÁÁó ò
)ÁÁò ô
{
ËË 
if
ÈÈ 
(
ÈÈ 
boardMatrix
ÈÈ '
[
ÈÈ' (
	rowNumber
ÈÈ( 1
-
ÈÈ2 3
$num
ÈÈ4 5
,
ÈÈ5 6
columnNumber
ÈÈ7 C
+
ÈÈD E
$num
ÈÈF G
]
ÈÈG H
==
ÈÈI K
Checker
ÈÈL S
.
ÈÈS T
player2Checker
ÈÈT b
||
ÈÈc e
boardMatrix
ÈÈf q
[
ÈÈq r
	rowNumber
ÈÈr {
-
ÈÈ| }
$num
ÈÈ~ 
,ÈÈ Ä
columnNumberÈÈÅ ç
+ÈÈé è
$numÈÈê ë
]ÈÈë í
==ÈÈì ï
CheckerÈÈñ ù
.ÈÈù û
player2KingÈÈû ©
)ÈÈ© ™
{
ÍÍ 
return
ÎÎ "
true
ÎÎ# '
;
ÎÎ' (
}
ÏÏ 
else
ÌÌ 
{
ÓÓ 
return
ÔÔ "
false
ÔÔ# (
;
ÔÔ( )
}
 
}
ÚÚ 
else
ÛÛ 
{
ÙÙ 
if
ıı 
(
ıı 
boardMatrix
ıı '
[
ıı' (
	rowNumber
ıı( 1
,
ıı1 2
columnNumber
ıı3 ?
]
ıı? @
==
ııA C
Checker
ııD K
.
ııK L
	freeSpace
ııL U
&&
ııV X
	rowNumber
ııY b
-
ııc d
previousRow
ııe p
==
ııq s
-
ııt u
$num
ııu v
&&
ııw y
columnNumberıız Ü
-ııá à
previousColumnııâ ó
==ııò ö
$numııõ ú
)ııú ù
{
ˆˆ 
if
˜˜ 
(
˜˜  
boardMatrix
˜˜  +
[
˜˜+ ,
	rowNumber
˜˜, 5
+
˜˜6 7
$num
˜˜8 9
,
˜˜9 :
columnNumber
˜˜; G
-
˜˜H I
$num
˜˜J K
]
˜˜K L
==
˜˜M O
Checker
˜˜P W
.
˜˜W X
player2Checker
˜˜X f
||
˜˜g i
boardMatrix
˜˜j u
[
˜˜u v
	rowNumber
˜˜v 
+˜˜Ä Å
$num˜˜Ç É
,˜˜É Ñ
columnNumber˜˜Ö ë
-˜˜í ì
$num˜˜î ï
]˜˜ï ñ
==˜˜ó ô
Checker˜˜ö °
.˜˜° ¢
player2King˜˜¢ ≠
)˜˜≠ Æ
{
¯¯ 
return
˘˘  &
true
˘˘' +
;
˘˘+ ,
}
˙˙ 
else
˚˚  
{
¸¸ 
return
˝˝  &
false
˝˝' ,
;
˝˝, -
}
˛˛ 
}
ÄÄ 
else
ÅÅ 
{
ÇÇ 
if
ÉÉ 
(
ÉÉ  
boardMatrix
ÉÉ  +
[
ÉÉ+ ,
	rowNumber
ÉÉ, 5
,
ÉÉ5 6
columnNumber
ÉÉ7 C
]
ÉÉC D
==
ÉÉE G
Checker
ÉÉH O
.
ÉÉO P
	freeSpace
ÉÉP Y
&&
ÉÉZ \
	rowNumber
ÉÉ] f
-
ÉÉg h
previousRow
ÉÉi t
==
ÉÉu w
-
ÉÉx y
$num
ÉÉy z
&&
ÉÉ{ }
columnNumberÉÉ~ ä
-ÉÉã å
previousColumnÉÉç õ
==ÉÉú û
-ÉÉü †
$numÉÉ† °
)ÉÉ° ¢
{
ÑÑ 
if
ÖÖ  "
(
ÖÖ# $
boardMatrix
ÖÖ$ /
[
ÖÖ/ 0
	rowNumber
ÖÖ0 9
+
ÖÖ: ;
$num
ÖÖ< =
,
ÖÖ= >
columnNumber
ÖÖ? K
+
ÖÖL M
$num
ÖÖN O
]
ÖÖO P
==
ÖÖQ S
Checker
ÖÖT [
.
ÖÖ[ \
player2Checker
ÖÖ\ j
||
ÖÖk m
boardMatrix
ÖÖn y
[
ÖÖy z
	rowNumberÖÖz É
+ÖÖÑ Ö
$numÖÖÜ á
,ÖÖá à
columnNumberÖÖâ ï
+ÖÖñ ó
$numÖÖò ô
]ÖÖô ö
==ÖÖõ ù
CheckerÖÖû •
.ÖÖ• ¶
player2CheckerÖÖ¶ ¥
)ÖÖ¥ µ
{
ÜÜ  !
return
áá$ *
true
áá+ /
;
áá/ 0
}
àà  !
else
ââ  $
{
ää  !
return
ãã$ *
false
ãã+ 0
;
ãã0 1
}
åå  !
}
çç 
else
éé  
{
èè 
return
êê  &
false
êê' ,
;
êê, -
}
ëë 
}
íí 
}
ìì 
}
îî 
}
ïï 
else
ññ 
{
óó 
if
òò 
(
òò 
boardMatrix
òò 
[
òò  
	rowNumber
òò  )
,
òò) *
columnNumber
òò+ 7
]
òò7 8
==
òò9 ;
Checker
òò< C
.
òòC D
	freeSpace
òòD M
&&
òòN P
	rowNumber
òòQ Z
-
òò[ \
previousRow
òò] h
==
òòi k
$num
òòl m
&&
òòn p
columnNumber
òòq }
-
òò~ 
previousColumnòòÄ é
==òòè ë
$numòòí ì
)òòì î
{
ôô 
if
öö 
(
öö 
boardMatrix
öö #
[
öö# $
	rowNumber
öö$ -
-
öö. /
$num
öö0 1
,
öö1 2
columnNumber
öö3 ?
-
öö@ A
$num
ööB C
]
ööC D
==
ööE G
Checker
ööH O
.
ööO P
player1Checker
ööP ^
||
öö_ a
boardMatrix
ööb m
[
ööm n
	rowNumber
öön w
-
ööx y
$num
ööz {
,
öö{ |
columnNumberöö} â
-ööä ã
$numööå ç
]ööç é
==ööè ë
Checkerööí ô
.ööô ö
player1Kingööö •
)öö• ¶
{
õõ 
return
úú 
true
úú #
;
úú# $
}
ùù 
else
ûû 
{
üü 
return
†† 
false
†† $
;
††$ %
}
°° 
}
££ 
else
§§ 
{
•• 
if
¶¶ 
(
¶¶ 
boardMatrix
¶¶ #
[
¶¶# $
	rowNumber
¶¶$ -
,
¶¶- .
columnNumber
¶¶/ ;
]
¶¶; <
==
¶¶= ?
Checker
¶¶@ G
.
¶¶G H
	freeSpace
¶¶H Q
&&
¶¶R T
	rowNumber
¶¶U ^
-
¶¶_ `
previousRow
¶¶a l
==
¶¶m o
$num
¶¶p q
&&
¶¶r t
columnNumber¶¶u Å
-¶¶Ç É
previousColumn¶¶Ñ í
==¶¶ì ï
-¶¶ñ ó
$num¶¶ó ò
)¶¶ò ô
{
ßß 
if
®® 
(
®® 
boardMatrix
®® '
[
®®' (
	rowNumber
®®( 1
-
®®2 3
$num
®®4 5
,
®®5 6
columnNumber
®®7 C
+
®®D E
$num
®®F G
]
®®G H
==
®®I K
Checker
®®L S
.
®®S T
player1Checker
®®T b
||
®®c e
boardMatrix
®®f q
[
®®q r
	rowNumber
®®r {
-
®®| }
$num
®®~ 
,®® Ä
columnNumber®®Å ç
+®®é è
$num®®ê ë
]®®ë í
==®®ì ï
Checker®®ñ ù
.®®ù û
player1King®®û ©
)®®© ™
{
©© 
return
™™ "
true
™™# '
;
™™' (
}
´´ 
else
¨¨ 
{
≠≠ 
return
ÆÆ "
false
ÆÆ# (
;
ÆÆ( )
}
ØØ 
}
±± 
else
≤≤ 
{
≥≥ 
if
¥¥ 
(
¥¥ 
boardMatrix
¥¥ '
[
¥¥' (
	rowNumber
¥¥( 1
,
¥¥1 2
columnNumber
¥¥3 ?
]
¥¥? @
==
¥¥A C
Checker
¥¥D K
.
¥¥K L
	freeSpace
¥¥L U
&&
¥¥V X
	rowNumber
¥¥Y b
-
¥¥c d
previousRow
¥¥e p
==
¥¥q s
-
¥¥t u
$num
¥¥u v
&&
¥¥w y
columnNumber¥¥z Ü
-¥¥á à
previousColumn¥¥â ó
==¥¥ò ö
$num¥¥õ ú
)¥¥ú ù
{
µµ 
if
∂∂ 
(
∂∂  
boardMatrix
∂∂  +
[
∂∂+ ,
	rowNumber
∂∂, 5
+
∂∂6 7
$num
∂∂8 9
,
∂∂9 :
columnNumber
∂∂; G
-
∂∂H I
$num
∂∂J K
]
∂∂K L
==
∂∂M O
Checker
∂∂P W
.
∂∂W X
player1Checker
∂∂X f
||
∂∂g i
boardMatrix
∂∂j u
[
∂∂u v
	rowNumber
∂∂v 
+∂∂Ä Å
$num∂∂Ç É
,∂∂É Ñ
columnNumber∂∂Ö ë
-∂∂í ì
$num∂∂î ï
]∂∂ï ñ
==∂∂ó ô
Checker∂∂ö °
.∂∂° ¢
player1King∂∂¢ ≠
)∂∂≠ Æ
{
∑∑ 
return
∏∏  &
true
∏∏' +
;
∏∏+ ,
}
ππ 
else
∫∫  
{
ªª 
return
ºº  &
false
ºº' ,
;
ºº, -
}
ΩΩ 
}
øø 
else
¿¿ 
{
¡¡ 
if
¬¬ 
(
¬¬  
boardMatrix
¬¬  +
[
¬¬+ ,
	rowNumber
¬¬, 5
,
¬¬5 6
columnNumber
¬¬7 C
]
¬¬C D
==
¬¬E G
Checker
¬¬H O
.
¬¬O P
	freeSpace
¬¬P Y
&&
¬¬Z \
	rowNumber
¬¬] f
-
¬¬g h
previousRow
¬¬i t
==
¬¬u w
-
¬¬x y
$num
¬¬y z
&&
¬¬{ }
columnNumber¬¬~ ä
-¬¬ã å
previousColumn¬¬ç õ
==¬¬ú û
-¬¬ü †
$num¬¬† °
)¬¬° ¢
{
√√ 
if
ƒƒ  "
(
ƒƒ# $
boardMatrix
ƒƒ$ /
[
ƒƒ/ 0
	rowNumber
ƒƒ0 9
+
ƒƒ: ;
$num
ƒƒ< =
,
ƒƒ= >
columnNumber
ƒƒ? K
+
ƒƒL M
$num
ƒƒN O
]
ƒƒO P
==
ƒƒQ S
Checker
ƒƒT [
.
ƒƒ[ \
player1Checker
ƒƒ\ j
||
ƒƒk m
boardMatrix
ƒƒn y
[
ƒƒy z
	rowNumberƒƒz É
+ƒƒÑ Ö
$numƒƒÜ á
,ƒƒá à
columnNumberƒƒâ ï
+ƒƒñ ó
$numƒƒò ô
]ƒƒô ö
==ƒƒõ ù
Checkerƒƒû •
.ƒƒ• ¶
player1Kingƒƒ¶ ±
)ƒƒ± ≤
{
≈≈  !
return
∆∆$ *
true
∆∆+ /
;
∆∆/ 0
}
««  !
else
»»  $
{
……  !
return
  $ *
false
  + 0
;
  0 1
}
ÀÀ  !
}
ÃÃ 
else
ÕÕ  
{
ŒŒ 
return
œœ  &
false
œœ' ,
;
œœ, -
}
–– 
}
—— 
}
““ 
}
”” 
}
‘‘ 
}
÷÷ 	
private
ÿÿ 
void
ÿÿ 
EndTurn
ÿÿ 
(
ÿÿ 
)
ÿÿ 
{
ŸŸ 	
if
⁄⁄ 
(
⁄⁄ !
player2CheckerCount
⁄⁄ #
==
⁄⁄$ &
$num
⁄⁄' (
||
⁄⁄) +!
player1CheckerCount
⁄⁄, ?
==
⁄⁄@ B
$num
⁄⁄C D
)
⁄⁄D E
{
€€ 
GameMatchManager
‹‹  
.
‹‹  !
EndPlayerGame
‹‹! .
(
‹‹. /
actualMatch
‹‹/ :
.
‹‹: ;
matchActiveNumber
‹‹; L
,
‹‹L M
localPlayerNumber
‹‹N _
,
‹‹_ `!
player2CheckerCount
‹‹a t
,
‹‹t u"
player1CheckerCount‹‹v â
)‹‹â ä
;‹‹ä ã

FinishGame
›› 
(
›› !
player2CheckerCount
›› .
,
››. /!
player1CheckerCount
››0 C
)
››C D
;
››D E
}
ﬁﬁ 
else
ﬂﬂ 
{
‡‡ 
foreach
·· 
(
·· 
Button
·· 
blackSquare
··  +
in
··, .

buttonList
··/ 9
)
··9 :
{
‚‚ 
	IsEnabled
„„ 
=
„„ 
false
„„  %
;
„„% &
}
‰‰ 
IsKingChecker
ÊÊ 
(
ÊÊ 
)
ÊÊ 
;
ÊÊ  $
checkPlayerSecondClick
ËË &
=
ËË' (
!
ËË) *$
checkPlayerSecondClick
ËË* @
;
ËË@ A
if
ÍÍ 
(
ÍÍ 
player1Turn
ÍÍ 
)
ÍÍ  
{
ÎÎ 
current_player
ÏÏ "
.
ÏÏ" #
Text
ÏÏ# '
=
ÏÏ( )
$str
ÏÏ* 9
;
ÏÏ9 :
GameMatchManager
ÌÌ $
.
ÌÌ$ %
Player1TurnResult
ÌÌ% 6
(
ÌÌ6 7
boardMatrix
ÌÌ7 B
,
ÌÌB C
actualMatch
ÌÌD O
.
ÌÌO P
matchActiveNumber
ÌÌP a
,
ÌÌa b!
player2CheckerCount
ÌÌc v
,
ÌÌv w"
player1CheckerCountÌÌx ã
)ÌÌã å
;ÌÌå ç
}
ÓÓ 
else
ÔÔ 
{
 
current_player
ÚÚ "
.
ÚÚ" #
Text
ÚÚ# '
=
ÚÚ( )
$str
ÚÚ* 9
;
ÚÚ9 :
GameMatchManager
ÛÛ $
.
ÛÛ$ %
Player2TurnResult
ÛÛ% 6
(
ÛÛ6 7
boardMatrix
ÛÛ7 B
,
ÛÛB C
actualMatch
ÛÛD O
.
ÛÛO P
matchActiveNumber
ÛÛP a
,
ÛÛa b!
player2CheckerCount
ÛÛc v
,
ÛÛv w"
player1CheckerCountÛÛx ã
)ÛÛã å
;ÛÛå ç
}
ÙÙ 
player1Turn
ıı 
=
ıı 
!
ıı 
player1Turn
ıı *
;
ıı* +
}
ˆˆ 
}
˜˜ 	
public
˘˘ 
void
˘˘ !
EndSecondPlayerTurn
˘˘ '
(
˘˘' (
)
˘˘( )
{
˙˙ 	
if
˚˚ 
(
˚˚ 
player1Turn
˚˚ 
)
˚˚ 
{
¸¸ 
foreach
˝˝ 
(
˝˝ 
Button
˝˝ 
blackSquare
˝˝  +
in
˝˝, .

buttonList
˝˝/ 9
)
˝˝9 :
{
˛˛ 
	IsEnabled
ˇˇ 
=
ˇˇ 
true
ˇˇ  $
;
ˇˇ$ %
}
ÄÄ 
player1Turn
ÅÅ 
=
ÅÅ 
!
ÅÅ 
player1Turn
ÅÅ *
;
ÅÅ* +
current_player
ÇÇ 
.
ÇÇ 
Text
ÇÇ #
=
ÇÇ$ %
$str
ÇÇ& 5
;
ÇÇ5 6
}
ÉÉ 
else
ÑÑ 
{
ÖÖ 
foreach
ÜÜ 
(
ÜÜ 
Button
ÜÜ 
blackSquare
ÜÜ  +
in
ÜÜ, .

buttonList
ÜÜ/ 9
)
ÜÜ9 :
{
áá 
	IsEnabled
àà 
=
àà 
true
àà  $
;
àà$ %
}
ââ 
player1Turn
ää 
=
ää 
true
ää "
;
ää" #
current_player
ãã 
.
ãã 
Text
ãã #
=
ãã$ %
$str
ãã& 5
;
ãã5 6
}
åå 
}
èè 	
private
ëë 
void
ëë 
InvalidClick
ëë !
(
ëë! "
)
ëë" #
{
íí 	$
checkPlayerSecondClick
ìì "
=
ìì# $
false
ìì% *
;
ìì* + 
DismissButtonClick
îî 
(
îî 
previousButton
îî -
)
îî- .
;
îî. /
}
ïï 	
public
óó 
void
óó 

FinishGame
óó 
(
óó 
int
óó "
playerTwoCheckers
óó# 4
,
óó4 5
int
óó6 9
playerOneCheckers
óó: K
)
óóK L
{
òò 	
if
ôô 
(
ôô 
playerOneCheckers
ôô %
==
ôô& (
$num
ôô) *
)
ôô* +
{
öö 
MessageBoxResult
õõ $
result
õõ% +
=
õõ, -

MessageBox
õõ. 8
.
õõ8 9
Show
õõ9 =
(
õõ= >
$str
õõ> P
,
õõP Q
$str
õõR ]
)
õõ] ^
;
õõ^ _
}
ùù 
else
ûû 
{
üü 
MessageBoxResult
°° $
result
°°% +
=
°°, -

MessageBox
°°. 8
.
°°8 9
Show
°°9 =
(
°°= >
$str
°°> P
,
°°P Q
$str
°°R ]
)
°°] ^
;
°°^ _
}
¢¢ 
Menu
§§ 
menu
§§ 
=
§§ 
new
§§ 
Menu
§§  $
(
§§$ %
localPlayer
§§% 0
)
§§0 1
;
§§1 2
menu
•• 
.
•• 
Show
•• 
(
•• 
)
•• 
;
•• 
Game
¶¶ 
game
¶¶ 
=
¶¶ 
App
¶¶ 
.
¶¶  
Current
¶¶  '
.
¶¶' (
Windows
¶¶( /
.
¶¶/ 0
OfType
¶¶0 6
<
¶¶6 7
Game
¶¶7 ;
>
¶¶; <
(
¶¶< =
)
¶¶= >
.
¶¶> ?
FirstOrDefault
¶¶? M
(
¶¶M N
)
¶¶N O
;
¶¶O P
game
ßß 
.
ßß 
Close
ßß 
(
ßß 
)
ßß 
;
ßß 
}
®® 	
public
™™ 
void
™™ !
UpdateCheckersCount
™™ '
(
™™' (
int
™™( +
playerTwoCheckers
™™, =
,
™™= >
int
™™? B
playerOneCheckers
™™C T
)
™™T U
{
´´ 	
this
¨¨ 
.
¨¨ !
player2CheckerCount
¨¨ $
=
¨¨% &
playerTwoCheckers
¨¨' 8
;
¨¨8 9
this
≠≠ 
.
≠≠ !
player1CheckerCount
≠≠ $
=
≠≠% &
playerOneCheckers
≠≠' 8
;
≠≠8 9
}
ØØ 	
public
±± 
void
±± 
UpdateMatchNumber
±± %
(
±±% &
int
±±& )
newActiveNumber
±±* 9
)
±±9 :
{
≤≤ 	
actualMatch
≥≥ 
.
≥≥ 
matchActiveNumber
≥≥ )
=
≥≥* +
newActiveNumber
≥≥, ;
;
≥≥; <
}
¥¥ 	
}
µµ 
}∂∂ ˘
`D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\LogIn.xaml.cs
	namespace 	
CheckersCliente
 
{ 
public 

partial 
class 
LogIn 
:  
NavigationWindow! 1
{ 
public 
LogIn 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
}!! 
}"" ïE
mD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\Managers\JugadorManager.cs
	namespace 	
CheckersCliente
 
{ 
public 

class 
JugadorManager 
{ 
public 
static 
void 
Login  
(  !
Jugador! (
jugador) 0
)0 1
{ 	
InstanceContext 
instanceContext +
=, -
new. 1
InstanceContext2 A
(A B
newB E!
PlayerCallbackHandlerF [
([ \
)\ ]
)] ^
;^ _
PlayerManagerClient 
server  &
=' (
new) ,
PlayerManagerClient- @
(@ A
instanceContextA P
)P Q
;Q R
try 
{ 
server 
. 
Login 
( 
jugador $
)$ %
;% &
} 
catch 
( %
EndpointNotFoundException ,
), -
{ 

MessageBox 
. 
Show 
(  
$str  a
)a b
;b c
} 
} 	
public   
static   
void   
SaveNewPlayer   (
(  ( )
Jugador  ) 0
jugador  1 8
)  8 9
{!! 	
InstanceContext"" 
instanceContext"" +
="", -
new"". 1
InstanceContext""2 A
(""A B
new""B E!
PlayerCallbackHandler""F [
(""[ \
)""\ ]
)""] ^
;""^ _
PlayerManagerClient## 
server##  &
=##' (
new##) ,
PlayerManagerClient##- @
(##@ A
instanceContext##A P
)##P Q
;##Q R
try$$ 
{%% 
server&& 
.&& 

SavePlayer&& !
(&&! "
jugador&&" )
)&&) *
;&&* +
}'' 
catch(( 
((( %
EndpointNotFoundException(( ,
)((, -
{)) 

MessageBox** 
.** 
Show** 
(**  
$str**  a
)**a b
;**b c
}++ 
},, 	
public.. 
static.. 
void.. 
VerifyPlayer.. '
(..' (
Jugador..( /
jugador..0 7
)..7 8
{// 	
InstanceContext00 
instanceContext00 +
=00, -
new00. 1
InstanceContext002 A
(00A B
new00B E!
PlayerCallbackHandler00F [
(00[ \
)00\ ]
)00] ^
;00^ _
PlayerManagerClient11 
server11  &
=11' (
new11) ,
PlayerManagerClient11- @
(11@ A
instanceContext11A P
)11P Q
;11Q R
try33 
{44 
server55 
.55 
VerifyPlayer55 #
(55# $
jugador55$ +
)55+ ,
;55, -
}66 
catch77 
(77 %
EndpointNotFoundException77 ,
)77, -
{88 

MessageBox99 
.99 
Show99 
(99  
$str99  a
)99a b
;99b c
}:: 
};; 	
public== 
static== 
void== 
ResendEmail== &
(==& '
Jugador==' .
player==/ 5
)==5 6
{>> 	
InstanceContext?? 
instanceContext?? +
=??, -
new??. 1
InstanceContext??2 A
(??A B
new??B E!
PlayerCallbackHandler??F [
(??[ \
)??\ ]
)??] ^
;??^ _
PlayerManagerClient@@ 
server@@  &
=@@' (
new@@) ,
PlayerManagerClient@@- @
(@@@ A
instanceContext@@A P
)@@P Q
;@@Q R
tryBB 
{CC 
serverDD 
.DD 
SendMailDD 
(DD  
playerDD  &
)DD& '
;DD' (
}EE 
catchFF 
(FF %
EndpointNotFoundExceptionFF ,
)FF, -
{GG 

MessageBoxHH 
.HH 
ShowHH 
(HH  
$strHH  a
)HHa b
;HHb c
}II 
}JJ 	
publicLL 
staticLL 
voidLL 
ObtainMailPasswordLL -
(LL- .
stringLL. 4
playerNicknameLL5 C
)LLC D
{MM 	
InstanceContextNN 
instanceContextNN +
=NN, -
newNN. 1
InstanceContextNN2 A
(NNA B
newNNB E!
PlayerCallbackHandlerNNF [
(NN[ \
)NN\ ]
)NN] ^
;NN^ _
PlayerManagerClientOO 
serverOO  &
=OO' (
newOO) ,
PlayerManagerClientOO- @
(OO@ A
instanceContextOOA P
)OOP Q
;OOQ R
tryQQ 
{RR 
serverSS 
.SS 
PasswordForgotMailSS )
(SS) *
playerNicknameSS* 8
)SS8 9
;SS9 :
}TT 
catchUU 
(UU %
EndpointNotFoundExceptionUU ,
)UU, -
{VV 

MessageBoxWW 
.WW 
ShowWW 
(WW  
$strWW  a
)WWa b
;WWb c
}XX 
}YY 	
public[[ 
static[[ 
void[[ 
	VerifyPin[[ $
([[$ %
string[[% +
playerNickname[[, :
,[[: ;
string[[< B
	playerPin[[C L
)[[L M
{\\ 	
InstanceContext]] 
instanceContext]] +
=]], -
new]]. 1
InstanceContext]]2 A
(]]A B
new]]B E!
PlayerCallbackHandler]]F [
(]][ \
)]]\ ]
)]]] ^
;]]^ _
PlayerManagerClient^^ 
server^^  &
=^^' (
new^^) ,
PlayerManagerClient^^- @
(^^@ A
instanceContext^^A P
)^^P Q
;^^Q R
try`` 
{aa 
serverbb 
.bb 
	VerifyPinbb  
(bb  !
playerNicknamebb! /
,bb/ 0
	playerPinbb0 9
)bb9 :
;bb: ;
}cc 
catchdd 
(dd %
EndpointNotFoundExceptiondd ,
)dd, -
{ee 

MessageBoxff 
.ff 
Showff 
(ff  
$strff  a
)ffa b
;ffb c
}gg 
}hh 	
publicjj 
staticjj 
voidjj 
ChangePasswordjj )
(jj) *
Jugadorjj* 1
playerjj2 8
)jj8 9
{kk 	
InstanceContextll 
instanceContextll +
=ll, -
newll. 1
InstanceContextll2 A
(llA B
newllB E!
PlayerCallbackHandlerllF [
(ll[ \
)ll\ ]
)ll] ^
;ll^ _
PlayerManagerClientmm 
servermm  &
=mm' (
newmm) ,
PlayerManagerClientmm- @
(mm@ A
instanceContextmmA P
)mmP Q
;mmQ R
tryoo 
{pp 
serverqq 
.qq 
ChangePasswordqq %
(qq% &
playerqq& ,
.qq, -
Apodoqq- 2
,qq2 3
playerqq4 :
.qq: ;
Contraseniaqq; F
)qqF G
;qqG H
}rr 
catchss 
(ss %
EndpointNotFoundExceptionss ,
)ss, -
{tt 

MessageBoxuu 
.uu 
Showuu 
(uu  
$struu  a
)uua b
;uub c
}vv 
}ww 	
publicyy 
staticyy 
voidyy 
GetActualPlayeryy *
(yy* +
Jugadoryy+ 2
actualPlayeryy3 ?
)yy? @
{zz 	
InstanceContext{{ 
instanceContext{{ +
={{, -
new{{. 1
InstanceContext{{2 A
({{A B
new{{B E!
PlayerCallbackHandler{{F [
({{[ \
){{\ ]
){{] ^
;{{^ _
PlayerManagerClient|| 
server||  &
=||' (
new||) ,
PlayerManagerClient||- @
(||@ A
instanceContext||A P
)||P Q
;||Q R
try~~ 
{ 
server
ÄÄ 
.
ÄÄ 
GetActualPlayer
ÄÄ &
(
ÄÄ& '
actualPlayer
ÄÄ' 3
)
ÄÄ3 4
;
ÄÄ4 5
}
ÅÅ 
catch
ÇÇ 
(
ÇÇ '
EndpointNotFoundException
ÇÇ ,
)
ÇÇ, -
{
ÉÉ 

MessageBox
ÑÑ 
.
ÑÑ 
Show
ÑÑ 
(
ÑÑ  
$str
ÑÑ  a
)
ÑÑa b
;
ÑÑb c
}
ÖÖ 
}
ÜÜ 	
}
áá 
}àà É
jD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\Managers\ChatManager.cs
	namespace

 	
CheckersCliente


 
.

 
Managers

 "
{ 
public 

class 
ChatManager 
{ 
private 
static 
readonly 
InstanceContext  /
instanceContext0 ?
=@ A
newB E
InstanceContextF U
(U V
newV Y
ChatCallbackHandlerZ m
(m n
)n o
)o p
;p q
private 
static 
readonly 
ChatManagerClient  1
server2 8
=9 :
new; >
ChatManagerClient? P
(P Q
instanceContextQ `
)` a
;a b
public 
static 
void 
SendMessage &
(& '
string' -
destination. 9
,9 :
string; A
messageB I
)I J
{ 	
server 
. 
SendText 
( 
destination '
,' (
message) 0
)0 1
;1 2
} 	
public 
static 
void 
AddMessageCallback -
(- .
). /
{ 	
server 
. 
GetChatCallback "
(" #
)# $
;$ %
} 	
} 
} ºI
oD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\Managers\GameMatchManager.cs
	namespace 	
CheckersCliente
 
. 
Managers "
{ 
public 

class 
GameMatchManager !
{ 
public 
Checker 
[ 
] 
[ 
] !
checkersUpdatedMatrix 0
;0 1
public 
static 
void 
EnterMatchmaking +
(+ ,
Jugador, 3
player4 :
,: ;
CheckersGameMode< L
gameModeM U
)U V
{ 	
try 
{ 
InstanceContext 
instanceContext  /
=0 1
new2 5
InstanceContext6 E
(E F
newF I+
GameMatchManagerCallbackHandlerJ i
(i j
)j k
)k l
;l m"
GameMatchManagerClient &
server' -
=. /
new0 3"
GameMatchManagerClient4 J
(J K
instanceContextK Z
)Z [
;[ \
server 
. 
CreateMatch "
(" #
player# )
,) *
gameMode+ 3
)3 4
;4 5
} 
catch 
( %
EndpointNotFoundException ,
), -
{ 

MessageBox 
. 
Show 
(  
$str  a
)a b
;b c
} 
} 	
public   
static   
void   
LeaveMatchmaking   +
(  + ,
Match  , 1
game  2 6
,  6 7
Jugador  8 ?
player  @ F
)  F G
{!! 	
try"" 
{## 
}$$ 
catch%% 
(%% %
EndpointNotFoundException%% ,
)%%, -
{&& 

MessageBox'' 
.'' 
Show'' 
(''  
$str''  a
)''a b
;''b c
}(( 
})) 	
public++ 
static++ 
void++ 
Player1TurnResult++ ,
(++, -
Checker++- 4
[++5 6
,++6 7
]++7 8
updateBoardMatrix++8 I
,++I J
int++K N
matchNumber++O Z
,++Z [
int++\ _
playerTwoCheckers++` q
,++q r
int++s v
playerOneCheckers	++w à
)
++à â
{,, 	
Checker-- 
[-- 
]-- 
[-- 
]-- !
checkersUpdatedMatrix-- -
=--. /
new--0 3
Checker--4 ;
[--; <
updateBoardMatrix--< M
.--M N
	GetLength--N W
(--W X
$num--X Y
)--Y Z
]--Z [
[--[ \
]--\ ]
;--] ^
int.. 
	rowNumber.. 
=.. 
$num.. 
;.. 
int// 
columnNumber// 
=// 
$num//  
;//  !
for11 
(11 
	rowNumber11 
=11 
$num11 
;11 
	rowNumber11  )
<11* +
$num11, -
;11- .
	rowNumber11/ 8
++118 :
)11: ;
{22 !
checkersUpdatedMatrix33 %
[33% &
	rowNumber33& /
]33/ 0
=331 2
new333 6
Checker337 >
[33> ?
updateBoardMatrix33? P
.33P Q
	GetLength33Q Z
(33Z [
$num33[ \
)33\ ]
]33] ^
;33^ _
for44 
(44 
columnNumber44 !
=44" #
$num44$ %
;44% &
columnNumber44' 3
<444 5
$num446 7
;447 8
columnNumber449 E
++44E G
)44G H
{55 !
checkersUpdatedMatrix77 )
[77) *
	rowNumber77* 3
]773 4
[774 5
columnNumber775 A
]77A B
=77C D
updateBoardMatrix77E V
[77V W
	rowNumber77W `
,77` a
columnNumber77b n
]77n o
;77o p
}88 
}99 
try:: 
{;; 
InstanceContext<< 
instanceContext<<  /
=<<0 1
new<<2 5
InstanceContext<<6 E
(<<E F
new<<F I+
GameMatchManagerCallbackHandler<<J i
(<<i j
)<<j k
)<<k l
;<<l m"
GameMatchManagerClient== &
server==' -
===. /
new==0 3"
GameMatchManagerClient==4 J
(==J K
instanceContext==K Z
)==Z [
;==[ \
server>> 
.>> 
Player1Turn>> "
(>>" #!
checkersUpdatedMatrix>># 8
,>>8 9
matchNumber>>: E
,>>E F
playerTwoCheckers>>G X
,>>X Y
playerOneCheckers>>Z k
)>>k l
;>>l m
}?? 
catch@@ 
(@@ %
EndpointNotFoundException@@ ,
)@@, -
{AA 

MessageBoxBB 
.BB 
ShowBB 
(BB  
$strBB  a
)BBa b
;BBb c
}CC 
}EE 	
publicGG 
staticGG 
voidGG 
Player2TurnResultGG ,
(GG, -
CheckerGG- 4
[GG4 5
,GG5 6
]GG6 7
updateBoardMatrixGG8 I
,GGI J
intGGK N
matchNumberGGO Z
,GGZ [
intGG[ ^
playerTwoCheckersGG_ p
,GGp q
intGGr u
playerOneCheckers	GGv á
)
GGá à
{HH 	
tryJJ 
{KK 
InstanceContextLL 
instanceContextLL  /
=LL0 1
newLL2 5
InstanceContextLL6 E
(LLE F
newLLF I+
GameMatchManagerCallbackHandlerLLJ i
(LLi j
)LLj k
)LLk l
;LLl m"
GameMatchManagerClientMM &
serverMM' -
=MM. /
newMM0 3"
GameMatchManagerClientMM4 J
(MMJ K
instanceContextMMK Z
)MMZ [
;MM[ \
CheckerNN 
[NN 
]NN 
[NN 
]NN !
checkersUpdatedMatrixNN 1
=NN2 3
newNN4 7
CheckerNN8 ?
[NN? @
updateBoardMatrixNN@ Q
.NNQ R
	GetLengthNNR [
(NN[ \
$numNN\ ]
)NN] ^
]NN^ _
[NN_ `
]NN` a
;NNa b
intOO 
	rowNumberOO 
;OO 
intPP 
columnNumberPP  
;PP  !
forRR 
(RR 
	rowNumberRR 
=RR  
$numRR! "
;RR" #
	rowNumberRR$ -
<RR. /
$numRR0 1
;RR1 2
	rowNumberRR3 <
++RR< >
)RR> ?
{SS !
checkersUpdatedMatrixTT )
[TT) *
	rowNumberTT* 3
]TT3 4
=TT5 6
newTT7 :
CheckerTT; B
[TTB C
updateBoardMatrixTTC T
.TTT U
	GetLengthTTU ^
(TT^ _
$numTT_ `
)TT` a
]TTa b
;TTb c
forUU 
(UU 
columnNumberUU %
=UU& '
$numUU( )
;UU) *
columnNumberUU+ 7
<UU8 9
$numUU: ;
;UU; <
columnNumberUU= I
++UUI K
)UUK L
{VV !
checkersUpdatedMatrixXX -
[XX- .
	rowNumberXX. 7
]XX7 8
[XX8 9
columnNumberXX9 E
]XXE F
=XXG H
updateBoardMatrixXXI Z
[XXZ [
	rowNumberXX[ d
,XXd e
columnNumberXXf r
]XXr s
;XXs t
}YY 
}ZZ 
server[[ 
.[[ 
Player2Turn[[ "
([[" #!
checkersUpdatedMatrix[[# 8
,[[8 9
matchNumber[[: E
,[[E F
playerTwoCheckers[[G X
,[[X Y
playerOneCheckers[[Z k
)[[k l
;[[l m
}\\ 
catch]] 
(]] %
EndpointNotFoundException]] ,
)]], -
{^^ 

MessageBox__ 
.__ 
Show__ 
(__  
$str__  a
)__a b
;__b c
}`` 
}bb 	
publicdd 
staticdd 
voiddd 
EndPlayerGamedd (
(dd( )
intdd) ,
matchNumberdd- 8
,dd8 9
intdd: =
localPlayerdd> I
,ddI J
intddK N
playerTwoCheckersddO `
,dd` a
intddb e
playerOneCheckersddf w
)ddw x
{ee 	
InstanceContextff 
instanceContextff +
=ff, -
newff. 1
InstanceContextff2 A
(ffA B
newffB E+
GameMatchManagerCallbackHandlerffF e
(ffe f
)fff g
)ffg h
;ffh i"
GameMatchManagerClientgg "
servergg# )
=gg* +
newgg, /"
GameMatchManagerClientgg0 F
(ggF G
instanceContextggG V
)ggV W
;ggW X
serverhh 
.hh 
FinishPlayerGamehh #
(hh# $
matchNumberhh$ /
,hh/ 0
localPlayerhh1 <
,hh< =
playerTwoCheckershh> O
,hhO P
playerOneCheckershhQ b
)hhb c
;hhc d
}ii 	
}jj 
}kk ü
mD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\Managers\RankingManager.cs
	namespace

 	
CheckersCliente


 
.

 
Managers

 "
{ 
public 

class 
RankingManager 
{ 
private 
static 
readonly 
InstanceContext  /
instanceContext0 ?
=@ A
newB E
InstanceContextF U
(U V
newV Y"
RankingCallbackHandlerZ p
(p q
)q r
)r s
;s t
private 
static 
readonly  
RankingManagerClient  4
server5 ;
=< =
new> A 
RankingManagerClientB V
(V W
instanceContextW f
)f g
;g h
public 
static 
void &
AddRankingPetitionCallback 5
(5 6
)6 7
{ 	
try 
{ 
server 
. 
GetRankingData %
(% &
)& '
;' (
} 
catch 
( %
EndpointNotFoundException ,
), -
{ 

MessageBox 
. 
Show 
(  
$str  a
)a b
;b c
} 
} 	
} 
} â
_D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\Menu.xaml.cs
	namespace 	
CheckersCliente
 
{ 
public 

partial 
class 
Menu 
: 
NavigationWindow  0
{ 
public   
Menu   
(   
Jugador   
player   "
)  " #
{!! 	
InitializeComponent"" 
(""  
)""  !
;""! "
lookLanguage## 
(## 
player## 
.##  

IdLenguaje##  *
)##* +
;##+ ,
NavigationService$$ 
.$$ 
Navigate$$ &
($$& '
new$$' *
PrincipalMenu$$+ 8
($$8 9
player$$9 ?
)$$? @
)$$@ A
;$$A B
}&& 	
public(( 
string(( 

LangSwitch((  
{((! "
get((# &
;((& '
private((( /
set((0 3
;((3 4
}((5 6
=((7 8
null((9 =
;((= >
private** 
void** 
lookLanguage** !
(**! "
int**" %

idLanguage**& 0
)**0 1
{++ 	
switch,, 
(,, 

idLanguage,, 
),, 
{-- 
case.. 
$num.. 
:.. 
Thread// 
.// 
CurrentThread// (
.//( )
CurrentUICulture//) 9
=//: ;
new//< ?
CultureInfo//@ K
(//K L
$str//L P
)//P Q
;//Q R
break00 
;00 
case11 
$num11 
:11 
Thread22 
.22 
CurrentThread22 (
.22( )
CurrentUICulture22) 9
=22: ;
new22< ?
CultureInfo22@ K
(22K L
$str22L S
)22S T
;22T U
break33 
;33 
case44 
$num44 
:44 
Thread55 
.55 
CurrentThread55 (
.55( )
CurrentUICulture55) 9
=55: ;
new55< ?
CultureInfo55@ K
(55K L
$str55L P
)55P Q
;55Q R
break66 
;66 
}77 
}88 	
}99 
}:: µ
mD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\GamePages\GameChat.xaml.cs
	namespace 	
CheckersCliente
 
. 
	MenuPages #
{ 
public 

partial 
class 
GameChat !
:" #
Page$ (
{ 
private  
ObservableCollection $
<$ %
string% +
>+ ,
messageList- 8
=9 :
new; > 
ObservableCollection? S
<S T
stringT Z
>Z [
([ \
)\ ]
;] ^
public 
GameChat 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
messages 
. 
ItemsSource  
=! "
messageList# .
;. /
} 	
private 
void 
SendMessage  
(  !
object! '
sender( .
,. /
RoutedEventArgs0 ?
e@ A
)A B
{ 	
Game 

gameWindow 
= 
App !
.! "
Current" )
.) *
Windows* 1
.1 2
OfType2 8
<8 9
Game9 =
>= >
(> ?
)? @
.@ A
FirstOrDefaultA O
(O P
)P Q
;Q R
messageList!! 
.!! 
Add!! 
(!! 
$str!! "
+!!# $
message!!% ,
.!!, -
Text!!- 1
)!!1 2
;!!2 3
}"" 	
public$$ 
void$$ 
AddMessageToChat$$ $
($$$ %
string$$% +
fuente$$, 2
,$$2 3
string$$4 :
mensaje$$; B
)$$B C
{%% 	
messageList&& 
.&& 
Add&& 
(&& 
fuente&& "
+&&# $
$str&&% )
+&&* +
mensaje&&, 3
)&&3 4
;&&4 5
}'' 	
private)) 
void)) 
RegresarAMenu)) "
())" #
object))# )
sender))* 0
,))0 1
RoutedEventArgs))2 A
e))B C
)))C D
{** 	
},, 	
}-- 
}.. ¯$
rD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\MenuPages\PrincipalMenu.xaml.cs
	namespace 	
CheckersCliente
 
. 
	MenuPages #
{ 
public 

partial 
class 
PrincipalMenu &
:' (
Page) -
{ 
Jugador 
actualPlayer 
; 
public 
PrincipalMenu 
( 
Jugador $
player% +
)+ ,
{ 	
InitializeComponent 
(  
)  !
;! "
DataContext 
= 
player  
;  !
this   
.   
actualPlayer   
=   
player    &
;  & '
}!! 	
private## 
void## 
UserConfiguration## &
(##& '
object##' -
sender##. 4
,##4 5
RoutedEventArgs##6 E
e##F G
)##G H
{$$ 	
JugadorManager%% 
.%% 
GetActualPlayer%% *
(%%* +
DataContext%%+ 6
as%%7 9
Jugador%%: A
)%%A B
;%%B C
}&& 	
private(( 
void(( 
DisplayRanking(( #
(((# $
object(($ *
sender((+ 1
,((1 2
RoutedEventArgs((3 B
e((C D
)((D E
{)) 	
RankingManager** 
.** &
AddRankingPetitionCallback** 5
(**5 6
)**6 7
;**7 8
}++ 	
private,, 
void,, 
	ShowRules,, 
(,, 
object,, %
sender,,& ,
,,,, -
RoutedEventArgs,,. =
e,,> ?
),,? @
{-- 	
NavigationService.. 
... 
Navigate.. &
(..& '
new..' *
	RulesPage..+ 4
(..4 5
)..5 6
)..6 7
;..7 8
}// 	
private11 
void11 
ChooseGameMode11 #
(11# $
object11$ *
sender11+ 1
,111 2
RoutedEventArgs113 B
e11C D
)11D E
{22 	
NavigationService33 
.33 
Navigate33 &
(33& '
new33' *
GameMode33+ 3
(333 4
actualPlayer334 @
)33@ A
)33A B
;33B C
}44 	
private66 
void66 
LanguageSelect66 #
(66# $
object66$ *
sender66+ 1
,661 2
RoutedEventArgs663 B
e66C D
)66D E
{77 	
(88 
DataContext88 
as88 
Jugador88 #
)88# $
.88$ %

IdLenguaje88% /
=880 1
LanguageBox882 =
.88= >
SelectedIndex88> K
;88K L
switch99 
(99 
LanguageBox99 
.99  
SelectedIndex99  -
)99- .
{:: 
case;; 
$num;; 
:;; 
Thread<< 
.<< 
CurrentThread<< (
.<<( )
CurrentUICulture<<) 9
=<<: ;
new<<< ?
CultureInfo<<@ K
(<<K L
$str<<L P
)<<P Q
;<<Q R
break== 
;== 
case>> 
$num>> 
:>> 
Thread?? 
.?? 
CurrentThread?? (
.??( )
CurrentUICulture??) 9
=??: ;
new??< ?
CultureInfo??@ K
(??K L
$str??L S
)??S T
;??T U
break@@ 
;@@ 
caseAA 
$numAA 
:AA 
ThreadBB 
.BB 
CurrentThreadBB (
.BB( )
CurrentUICultureBB) 9
=BB: ;
newBB< ?
CultureInfoBB@ K
(BBK L
$strBBL P
)BBP Q
;BBQ R
breakCC 
;CC 
}DD 
MenuEE 
menuEE 
=EE 
newEE 
MenuEE  
(EE  !
DataContextEE! ,
asEE- /
JugadorEE0 7
)EE7 8
;EE8 9
menuFF 
.FF 
ShowFF 
(FF 
)FF 
;FF 
MenuGG 

actualMenuGG 
=GG 
AppGG !
.GG! "
CurrentGG" )
.GG) *
WindowsGG* 1
.GG1 2
OfTypeGG2 8
<GG8 9
MenuGG9 =
>GG= >
(GG> ?
)GG? @
.GG@ A
FirstOrDefaultGGA O
(GGO P
)GGP Q
;GGQ R

actualMenuHH 
.HH 
CloseHH 
(HH 
)HH 
;HH 
}II 	
}KK 
}LL Â

pD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\MenuPages\RankingList.xaml.cs
	namespace

 	
CheckersCliente


 
.

 
	MenuPages

 #
{ 
public 

partial 
class 
RankingList $
:% &
Page' +
{ 
private 
List 
< 
Ranking 
> 
rankingList )
;) *
public 
RankingList 
( 
List 
<  
Ranking  '
>' (
rankings) 1
)1 2
{ 	
InitializeComponent 
(  
)  !
;! "
rankingList 
= 
rankings "
;" #
tableOfRankings 
. 
ItemsSource '
=( )
rankingList* 5
;5 6
} 	
private 
void 
Return 
( 
object "
sender# )
,) *
System+ 1
.1 2
Windows2 9
.9 :
RoutedEventArgs: I
eJ K
)K L
{ 	
NavigationService 
. 
GoBack $
($ %
)% &
;& '
} 	
}   
}!! Ô
vD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\MenuPages\UserConfiguration.xaml.cs
	namespace 	
CheckersCliente
 
. 
	MenuPages #
{ 
public 

partial 
class 
UserConfiguration *
:+ ,
Page- 1
{ 
public 
UserConfiguration  
(  !
Jugador! (
actualPlayer) 5
)5 6
{ 	
InitializeComponent 
(  
)  !
;! "
DataContext 
= 
actualPlayer &
;& '
switch!! 
(!! 
actualPlayer!!  
.!!  !

IdLenguaje!!! +
)!!+ ,
{"" 
case## 
$num## 
:## 
LanguageTextBlock$$ %
.$$% &
Text$$& *
=$$+ ,
$str$$- 6
;$$6 7
break%% 
;%% 
case&& 
$num&& 
:&& 
LanguageTextBlock'' %
.''% &
Text''& *
=''+ ,
$str''- 6
;''6 7
break(( 
;(( 
case)) 
$num)) 
:)) 
LanguageTextBlock** %
.**% &
Text**& *
=**+ ,
$str**- 7
;**7 8
break++ 
;++ 
},, 
}-- 	
private.. 
void.. 
CancelClick..  
(..  !
object..! '
sender..( .
,... /
RoutedEventArgs..0 ?
e..@ A
)..A B
{// 	
NavigationService00 
.00 
GoBack00 $
(00$ %
)00% &
;00& '
}11 	
}22 
}33 ¥
mD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\Properties\AssemblyInfo.cs
[

 
assembly

 	
:

	 

AssemblyTitle

 
(

 
$str

 *
)

* +
]

+ ,
[ 
assembly 	
:	 

AssemblyDescription 
( 
$str !
)! "
]" #
[ 
assembly 	
:	 
!
AssemblyConfiguration  
(  !
$str! #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str ,
), -
]- .
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
["" 
assembly"" 	
:""	 

	ThemeInfo"" 
("" &
ResourceDictionaryLocation## 
.## 
None## #
,### $&
ResourceDictionaryLocation&& 
.&& 
SourceAssembly&& -
))) 
])) 
[66 
assembly66 	
:66	 

AssemblyVersion66 
(66 
$str66 $
)66$ %
]66% &
[77 
assembly77 	
:77	 

AssemblyFileVersion77 
(77 
$str77 (
)77( )
]77) *