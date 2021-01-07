�
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
} �
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
Password	--} �
)
--� �
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
MINIMUN_LENGHT	:: �
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
}FF �5
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
}dd �
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
}PP �
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
}44 �G
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
�� 
languageNumber
�� !
;
��! "
}
�� 	
private
�� 
void
�� 
CancelRegister
�� #
(
��# $
object
��$ *
sender
��+ 1
,
��1 2
RoutedEventArgs
��3 B
e
��C D
)
��D E
{
�� 	
NavigationService
�� 
.
�� 
GoBack
�� $
(
��$ %
)
��% &
;
��& '
}
�� 	
}
�� 
}�� �6
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
}dd �
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
}!! �
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
}>> �
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
} �&
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
}MM �
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
} �k
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
�� 
(
�� 
emailResult
�� 
==
��  "

MailResult
��# -
.
��- .
UnknownPlayer
��. ;
)
��; <
{
�� !
DialogWindowManager
�� '
.
��' (
ShowErrorWindow
��( 7
(
��7 8
$str
��8 K
)
��K L
;
��L M
}
�� 
else
�� 
{
�� !
DialogWindowManager
�� '
.
��' (
ShowErrorWindow
��( 7
(
��7 8
$str��8 �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
GetPinResult
��  
(
��  !
	PinResult
��! *
	pinResult
��+ 4
,
��4 5
string
��6 <
playerNickname
��= K
)
��K L
{
�� 	
if
�� 
(
�� 
	pinResult
�� 
==
�� 
	PinResult
�� %
.
��% &
VerifiedPin
��& 1
)
��1 2
{
�� 
LogIn
�� 
login
�� 
=
�� 
App
�� !
.
��! "
Current
��" )
.
��) *
Windows
��* 1
.
��1 2
OfType
��2 8
<
��8 9
LogIn
��9 >
>
��> ?
(
��? @
)
��@ A
.
��A B
FirstOrDefault
��B P
(
��P Q
)
��Q R
;
��R S
login
�� 
.
�� 
NavigationService
�� '
.
��' (
Navigate
��( 0
(
��0 1
new
��1 4
ChangePassword
��5 C
(
��C D
playerNickname
��D R
)
��R S
)
��S T
;
��T U
}
�� 
else
�� 
{
�� !
DialogWindowManager
�� #
.
��# $
ShowErrorWindow
��$ 3
(
��3 4
$str
��4 T
)
��T U
;
��U V
}
�� 
}
�� 	
public
�� 
void
�� %
GetPasswordChangeResult
�� +
(
��+ ,"
PasswordChangeResult
��, @"
passwordChangeResult
��A U
)
��U V
{
�� 	
if
�� 
(
�� "
passwordChangeResult
�� $
==
��% '"
PasswordChangeResult
��( <
.
��< =
ChangedPassword
��= L
)
��L M
{
�� !
DialogWindowManager
�� #
.
��# $
ShowSuccessWindow
��$ 5
(
��5 6
$str
��6 b
)
��b c
;
��c d
LogIn
�� 
login
�� 
=
�� 
App
�� !
.
��! "
Current
��" )
.
��) *
Windows
��* 1
.
��1 2
OfType
��2 8
<
��8 9
LogIn
��9 >
>
��> ?
(
��? @
)
��@ A
.
��A B
FirstOrDefault
��B P
(
��P Q
)
��Q R
;
��R S
login
�� 
.
�� 
NavigationService
�� '
.
��' (
Navigate
��( 0
(
��0 1
new
��1 4
	LogInPage
��5 >
(
��> ?
)
��? @
)
��@ A
;
��A B
}
�� 
else
�� 
{
�� !
DialogWindowManager
�� #
.
��# $
ShowErrorWindow
��$ 3
(
��3 4
$str��4 �
)��� �
;��� �
}
�� 
}
�� 	
public
�� 
void
�� 
SendActualPlayer
�� $
(
��$ % 
DataObtainedResult
��% 7 
dataObtainedResult
��8 J
,
��J K
Jugador
��L S
actualPlayer
��T `
)
��` a
{
�� 	
if
�� 
(
��  
dataObtainedResult
�� "
==
��# % 
DataObtainedResult
��& 8
.
��8 9
DataObtained
��9 E
)
��E F
{
�� 
Menu
�� 
menu
�� 
=
�� 
App
�� 
.
��  
Current
��  '
.
��' (
Windows
��( /
.
��/ 0
OfType
��0 6
<
��6 7
Menu
��7 ;
>
��; <
(
��< =
)
��= >
.
��> ?
FirstOrDefault
��? M
(
��M N
)
��N O
;
��O P
menu
�� 
.
�� 
NavigationService
�� &
.
��& '
Navigate
��' /
(
��/ 0
new
��0 3
UserConfiguration
��4 E
(
��E F
actualPlayer
��F R
)
��R S
)
��S T
;
��T U
}
�� 
else
�� 
{
�� !
DialogWindowManager
�� #
.
��# $
ShowErrorWindow
��$ 3
(
��3 4
$str
��4 }
)
��} ~
;
��~ 
}
�� 
}
�� 	
}
�� 
}�� �
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
} �1
�D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\CallbackHandlers\GameMatchManagerCallbackHandler.cs
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
}JJ �
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
}'' ԧ
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
{{� �
columnNumber
{{� �
-
{{� �
previousColumn
{{� �
==
{{� �
-
{{� �
$num
{{� �
)
{{� �
)
{{� �
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
	rowNumber	}}z �
+
}}� �
$num
}}� �
,
}}� �
columnNumber
}}� �
+
}}� �
$num
}}� �
]
}}� �
==
}}� �
Checker
}}� �
.
}}� �
player2King
}}� �
)
}}� �
{~~  !
player2CheckerCount$ 7
--7 9
;9 :
boardMatrix
��$ /
[
��/ 0
	rowNumber
��0 9
+
��: ;
$num
��< =
,
��= >
columnNumber
��? K
+
��L M
$num
��N O
]
��O P
=
��Q R
Checker
��S Z
.
��Z [
	freeSpace
��[ d
;
��d e
if
��$ &
(
��' (
IsKingChecker
��( 5
(
��5 6
)
��6 7
)
��7 8
{
��$ % 
DismissButtonClick
��( :
(
��: ;
previousButton
��; I
)
��I J
;
��J K
EndTurn
��( /
(
��/ 0
)
��0 1
;
��1 2
}
��$ %
else
��$ (
{
��$ %
boardMatrix
��( 3
[
��3 4
	rowNumber
��4 =
,
��= >
columnNumber
��? K
]
��K L
=
��M N
Checker
��O V
.
��V W
player1Checker
��W e
;
��e f
boardMatrix
��( 3
[
��3 4
previousRow
��4 ?
,
��? @
previousColumn
��A O
]
��O P
=
��Q R
Checker
��S Z
.
��Z [
	freeSpace
��[ d
;
��d e 
DismissButtonClick
��( :
(
��: ;
previousButton
��; I
)
��I J
;
��J K'
UpdateCheckersGuiPosition
��( A
(
��A B
boardMatrix
��B M
)
��M N
;
��N O
if
��( *
(
��+ ,"
Player1MoreJumpCheck
��, @
(
��@ A
)
��A B
)
��B C
{
��( )
previousButton
��, :
=
��; <
button
��= C
;
��C D!
RemarkClickedButton
��, ?
(
��? @
button
��@ F
)
��F G
;
��G H
}
��( )
else
��( ,
{
��( ) 
DismissButtonClick
��, >
(
��> ?
previousButton
��? M
)
��M N
;
��N O
EndTurn
��, 3
(
��3 4
)
��4 5
;
��5 6
}
��( )
}
��$ %
}
��  !
}
�� 
else
��  
{
�� 
if
��  "
(
��# $
boardMatrix
��$ /
[
��/ 0
	rowNumber
��0 9
,
��9 :
columnNumber
��; G
]
��G H
==
��I K
Checker
��L S
.
��S T
	freeSpace
��T ]
&&
��^ `
(
��a b
	rowNumber
��b k
-
��l m
previousRow
��n y
==
��z |
-
��} ~
$num
��~ 
)�� �
&&��� �
(��� �
columnNumber��� �
-��� �
previousColumn��� �
==��� �
$num��� �
)��� �
)��� �
{
��  !
if
��$ &
(
��' (
boardMatrix
��( 3
[
��3 4
	rowNumber
��4 =
+
��> ?
$num
��@ A
,
��A B
columnNumber
��C O
-
��P Q
$num
��R S
]
��S T
==
��U W
Checker
��X _
.
��_ `
player2Checker
��` n
||
��o q
boardMatrix
��r }
[
��} ~
	rowNumber��~ �
+��� �
$num��� �
,��� �
columnNumber��� �
-��� �
$num��� �
]��� �
==��� �
Checker��� �
.��� �
player2King��� �
)��� �
{
��$ %!
player2CheckerCount
��( ;
--
��; =
;
��= >
boardMatrix
��( 3
[
��3 4
	rowNumber
��4 =
+
��> ?
$num
��@ A
,
��A B
columnNumber
��C O
-
��P Q
$num
��R S
]
��S T
=
��U V
Checker
��W ^
.
��^ _
	freeSpace
��_ h
;
��h i
if
��( *
(
��+ ,
IsKingChecker
��, 9
(
��9 :
)
��: ;
)
��; <
{
��( ) 
DismissButtonClick
��, >
(
��> ?
previousButton
��? M
)
��M N
;
��N O
EndTurn
��, 3
(
��3 4
)
��4 5
;
��5 6
}
��( )
else
��( ,
{
��( )
boardMatrix
��, 7
[
��7 8
	rowNumber
��8 A
,
��A B
columnNumber
��C O
]
��O P
=
��Q R
Checker
��S Z
.
��Z [
player1Checker
��[ i
;
��i j
boardMatrix
��, 7
[
��7 8
previousRow
��8 C
,
��C D
previousColumn
��E S
]
��S T
=
��U V
Checker
��W ^
.
��^ _
	freeSpace
��_ h
;
��h i 
DismissButtonClick
��, >
(
��> ?
previousButton
��? M
)
��M N
;
��N O'
UpdateCheckersGuiPosition
��, E
(
��E F
boardMatrix
��F Q
)
��Q R
;
��R S
if
��, .
(
��/ 0"
Player1MoreJumpCheck
��0 D
(
��D E
)
��E F
)
��F G
{
��, -
previousButton
��0 >
=
��? @
button
��A G
;
��G H!
RemarkClickedButton
��0 C
(
��C D
button
��D J
)
��J K
;
��K L
}
��, -
else
��, 0
{
��, - 
DismissButtonClick
��0 B
(
��B C
previousButton
��C Q
)
��Q R
;
��R S
EndTurn
��0 7
(
��7 8
)
��8 9
;
��9 :
}
��, -
}
��( )
}
��$ %
}
��  !
else
��  $
{
��  !
InvalidClick
��$ 0
(
��0 1
)
��1 2
;
��2 3
}
��  !
}
�� 
}
�� 
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
KingMove
�� $
(
��$ %
)
��% &
)
��& '
{
�� 
button
�� "
.
��" #
Content
��# *
=
��+ ,
$str
��- 0
;
��0 1
button
�� "
.
��" #
FontSize
��# +
=
��, -
$num
��. 0
;
��0 1
button
�� "
.
��" #

Foreground
��# -
=
��. /
player1Color
��0 <
;
��< =
previousButton
�� *
.
��* +
Content
��+ 2
=
��3 4
$str
��5 7
;
��7 8 
DismissButtonClick
�� .
(
��. /
previousButton
��/ =
)
��= >
;
��> ?
EndTurn
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
else
�� 
{
�� 
if
�� 
(
��  
ValidateKingJump
��  0
(
��0 1
)
��1 2
)
��2 3
{
�� !
player2CheckerCount
��  3
--
��3 5
;
��5 6
int
��  #
	jumpedRow
��$ -
=
��. /
(
��0 1
int
��1 4
)
��4 5
(
��5 6
	rowNumber
��6 ?
+
��@ A
(
��B C
(
��C D
	rowNumber
��D M
-
��N O
previousRow
��P [
)
��[ \
*
��] ^
-
��_ `
$num
��` b
)
��b c
)
��c d
;
��d e
int
��  #
jumpedColumn
��$ 0
=
��1 2
(
��3 4
int
��4 7
)
��7 8
(
��8 9
columnNumber
��9 E
+
��F G
(
��H I
(
��I J
columnNumber
��J V
-
��W X
previousColumn
��Y g
)
��g h
*
��i j
-
��k l
$num
��l n
)
��n o
)
��o p
;
��p q
boardMatrix
��  +
[
��+ ,
	rowNumber
��, 5
,
��5 6
columnNumber
��7 C
]
��C D
=
��E F
Checker
��G N
.
��N O
player1King
��O Z
;
��Z [
boardMatrix
��  +
[
��+ ,
	jumpedRow
��, 5
,
��5 6
jumpedColumn
��7 C
]
��C D
=
��E F
Checker
��G N
.
��N O
	freeSpace
��O X
;
��X Y
boardMatrix
��  +
[
��+ ,
previousRow
��, 7
,
��7 8
previousColumn
��9 G
]
��G H
=
��I J
Checker
��K R
.
��R S
	freeSpace
��S \
;
��\ ] 
DismissButtonClick
��  2
(
��2 3
previousButton
��3 A
)
��A B
;
��B C'
UpdateCheckersGuiPosition
��  9
(
��9 :
boardMatrix
��: E
)
��E F
;
��F G
if
��  "
(
��# $#
KingMoreJumpAvaliable
��$ 9
(
��9 :
)
��: ;
)
��; <
{
��  !
previousButton
��$ 2
=
��3 4
button
��5 ;
;
��; <!
RemarkClickedButton
��$ 7
(
��7 8
button
��8 >
)
��> ?
;
��? @
}
��  !
else
��  $
{
��  ! 
DismissButtonClick
��$ 6
(
��6 7
previousButton
��7 E
)
��E F
;
��F G
EndTurn
��$ +
(
��+ ,
)
��, -
;
��- .
}
��  !
}
�� 
else
��  
{
�� 
InvalidClick
��  ,
(
��, -
)
��- .
;
��. /
}
�� 
}
�� 
}
�� 
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
boardMatrix
�� #
[
��# $
	rowNumber
��$ -
,
��- .
columnNumber
��/ ;
]
��; <
==
��= ?
Checker
��@ G
.
��G H
player1Checker
��H V
||
��W Y
boardMatrix
��Z e
[
��e f
	rowNumber
��f o
,
��o p
columnNumber
��q }
]
��} ~
==�� �
Checker��� �
.��� �
player1King��� �
)��� �
{
�� 
previousButton
�� &
=
��' (
button
��) /
;
��/ 0!
RemarkClickedButton
�� +
(
��+ ,
button
��, 2
)
��2 3
;
��3 4$
checkPlayerSecondClick
�� .
=
��/ 0
true
��1 5
;
��5 6
}
�� 
}
�� 
}
�� 
else
�� 
{
�� 
if
�� 
(
�� $
checkPlayerSecondClick
�� *
)
��* +
{
�� 
previousRow
�� 
=
��  !
Grid
��" &
.
��& '
GetRow
��' -
(
��- .
previousButton
��. <
)
��< =
;
��= >
previousColumn
�� "
=
��# $
Grid
��% )
.
��) *
	GetColumn
��* 3
(
��3 4
previousButton
��4 B
)
��B C
;
��C D
if
�� 
(
�� 
boardMatrix
�� #
[
��# $
previousRow
��$ /
,
��/ 0
previousColumn
��1 ?
]
��? @
==
��A C
Checker
��D K
.
��K L
player2Checker
��L Z
)
��Z [
{
�� 
if
�� 
(
�� 
boardMatrix
�� '
[
��' (
	rowNumber
��( 1
,
��1 2
columnNumber
��3 ?
]
��? @
==
��A C
Checker
��D K
.
��K L
	freeSpace
��L U
&&
��V X
(
��Y Z
	rowNumber
��Z c
-
��d e
previousRow
��f q
==
��r t
$num
��u v
)
��v w
&&
��x z
(
��{ |
columnNumber��| �
-��� �
previousColumn��� �
==��� �
-��� �
$num��� �
||��� �
columnNumber��� �
-��� �
previousColumn��� �
==��� �
$num��� �
)��� �
)��� �
{
�� 
if
�� 
(
��  
!
��  !
IsKingChecker
��! .
(
��. /
)
��/ 0
)
��0 1
{
�� 
boardMatrix
��  +
[
��+ ,
	rowNumber
��, 5
,
��5 6
columnNumber
��7 C
]
��C D
=
��E F
Checker
��G N
.
��N O
player2Checker
��O ]
;
��] ^
boardMatrix
��  +
[
��+ ,
previousRow
��, 7
,
��7 8
previousColumn
��9 G
]
��G H
=
��I J
Checker
��K R
.
��R S
	freeSpace
��S \
;
��\ ]
button
��  &
.
��& '
Content
��' .
=
��/ 0
$str
��1 4
;
��4 5
button
��  &
.
��& '

Foreground
��' 1
=
��2 3
player2Color
��4 @
;
��@ A
button
��  &
.
��& '
FontSize
��' /
=
��0 1
$num
��2 4
;
��4 5
previousButton
��  .
.
��. /
Content
��/ 6
=
��7 8
$str
��9 ;
;
��; < 
DismissButtonClick
��  2
(
��2 3
previousButton
��3 A
)
��A B
;
��B C
}
��  
DismissButtonClick
�� .
(
��. /
previousButton
��/ =
)
��= >
;
��> ?
EndTurn
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
else
�� 
{
�� 
if
�� 
(
��  
boardMatrix
��  +
[
��+ ,
	rowNumber
��, 5
,
��5 6
columnNumber
��7 C
]
��C D
==
��E G
Checker
��H O
.
��O P
	freeSpace
��P Y
&&
��Z \
(
��] ^
	rowNumber
��^ g
-
��h i
previousRow
��j u
==
��v x
$num
��y z
)
��z {
&&
��| ~
columnNumber�� �
-��� �
previousColumn��� �
==��� �
-��� �
$num��� �
)��� �
{
�� 
if
��  "
(
��# $
boardMatrix
��$ /
[
��/ 0
	rowNumber
��0 9
-
��: ;
$num
��< =
,
��= >
columnNumber
��? K
+
��L M
$num
��N O
]
��O P
==
��Q S
Checker
��T [
.
��[ \
player1Checker
��\ j
||
��k m
boardMatrix
��n y
[
��y z
	rowNumber��z �
-��� �
$num��� �
,��� �
columnNumber��� �
+��� �
$num��� �
]��� �
==��� �
Checker��� �
.��� �
player1King��� �
)��� �
{
��  !!
player1CheckerCount
��$ 7
--
��7 9
;
��9 :
boardMatrix
��$ /
[
��/ 0
	rowNumber
��0 9
-
��: ;
$num
��< =
,
��= >
columnNumber
��? K
+
��L M
$num
��N O
]
��O P
=
��Q R
Checker
��S Z
.
��Z [
	freeSpace
��[ d
;
��d e
if
��$ &
(
��' (
IsKingChecker
��( 5
(
��5 6
)
��6 7
)
��7 8
{
��$ % 
DismissButtonClick
��( :
(
��: ;
previousButton
��; I
)
��I J
;
��J K
EndTurn
��( /
(
��/ 0
)
��0 1
;
��1 2
}
��$ %
else
��$ (
{
��$ %
boardMatrix
��( 3
[
��3 4
	rowNumber
��4 =
,
��= >
columnNumber
��? K
]
��K L
=
��M N
Checker
��O V
.
��V W
player2Checker
��W e
;
��e f
boardMatrix
��( 3
[
��3 4
previousRow
��4 ?
,
��? @
previousColumn
��A O
]
��O P
=
��Q R
Checker
��S Z
.
��Z [
	freeSpace
��[ d
;
��d e 
DismissButtonClick
��( :
(
��: ;
previousButton
��; I
)
��I J
;
��J K'
UpdateCheckersGuiPosition
��( A
(
��A B
boardMatrix
��B M
)
��M N
;
��N O
if
��( *
(
��+ ,"
Player2MoreJumpCheck
��, @
(
��@ A
)
��A B
)
��B C
{
��( )!
RemarkClickedButton
��, ?
(
��? @
button
��@ F
)
��F G
;
��G H
previousButton
��, :
=
��; <
button
��= C
;
��C D
}
��( )
else
��( ,
{
��( ) 
DismissButtonClick
��, >
(
��> ?
previousButton
��? M
)
��M N
;
��N O
EndTurn
��, 3
(
��3 4
)
��4 5
;
��5 6
}
��( )
}
��$ %
}
��  !
}
�� 
else
��  
{
�� 
if
��  "
(
��# $
boardMatrix
��$ /
[
��/ 0
	rowNumber
��0 9
,
��9 :
columnNumber
��; G
]
��G H
==
��I K
Checker
��L S
.
��S T
	freeSpace
��T ]
&&
��^ `
(
��a b
	rowNumber
��b k
-
��l m
previousRow
��n y
==
��z |
$num
��} ~
)
��~ 
&&��� �
columnNumber��� �
-��� �
previousColumn��� �
==��� �
$num��� �
)��� �
{
��  !!
player1CheckerCount
��$ 7
--
��7 9
;
��9 :
boardMatrix
��$ /
[
��/ 0
	rowNumber
��0 9
-
��: ;
$num
��< =
,
��= >
columnNumber
��? K
-
��L M
$num
��N O
]
��O P
=
��Q R
Checker
��S Z
.
��Z [
	freeSpace
��[ d
;
��d e
if
��$ &
(
��' (
IsKingChecker
��( 5
(
��5 6
)
��6 7
)
��7 8
{
��$ % 
DismissButtonClick
��( :
(
��: ;
previousButton
��; I
)
��I J
;
��J K
EndTurn
��( /
(
��/ 0
)
��0 1
;
��1 2
}
��$ %
else
��$ (
{
��$ %
boardMatrix
��( 3
[
��3 4
	rowNumber
��4 =
,
��= >
columnNumber
��? K
]
��K L
=
��M N
Checker
��O V
.
��V W
player2Checker
��W e
;
��e f
boardMatrix
��( 3
[
��3 4
previousRow
��4 ?
,
��? @
previousColumn
��A O
]
��O P
=
��Q R
Checker
��S Z
.
��Z [
	freeSpace
��[ d
;
��d e 
DismissButtonClick
��( :
(
��: ;
previousButton
��; I
)
��I J
;
��J K'
UpdateCheckersGuiPosition
��( A
(
��A B
boardMatrix
��B M
)
��M N
;
��N O
if
��( *
(
��+ ,"
Player2MoreJumpCheck
��, @
(
��@ A
)
��A B
)
��B C
{
��( )!
RemarkClickedButton
��, ?
(
��? @
button
��@ F
)
��F G
;
��G H
previousButton
��, :
=
��; <
button
��= C
;
��C D
}
��( )
else
��( ,
{
��( ) 
DismissButtonClick
��, >
(
��> ?
previousButton
��? M
)
��M N
;
��N O
EndTurn
��, 3
(
��3 4
)
��4 5
;
��5 6
}
��( )
}
��$ %
}
��  !
else
��  $
{
��  !
InvalidClick
��$ 0
(
��0 1
)
��1 2
;
��2 3
}
��  !
}
�� 
}
�� 
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
KingMove
�� $
(
��$ %
)
��% &
)
��& '
{
�� 
button
�� "
.
��" #
Content
��# *
=
��+ ,
$str
��- 0
;
��0 1
button
�� "
.
��" #
FontSize
��# +
=
��, -
$num
��. 0
;
��0 1
button
�� "
.
��" #

Foreground
��# -
=
��. /
player2Color
��0 <
;
��< =
previousButton
�� *
.
��* +
Content
��+ 2
=
��3 4
$str
��5 7
;
��7 8 
DismissButtonClick
�� .
(
��. /
previousButton
��/ =
)
��= >
;
��> ?
EndTurn
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
else
�� 
{
�� 
if
�� 
(
��  
ValidateKingJump
��  0
(
��0 1
)
��1 2
)
��2 3
{
�� !
player1CheckerCount
��  3
--
��3 5
;
��5 6
int
��  #
	jumpedRow
��$ -
=
��. /
(
��0 1
int
��1 4
)
��4 5
(
��5 6
	rowNumber
��6 ?
+
��@ A
(
��B C
(
��C D
	rowNumber
��D M
-
��N O
previousRow
��P [
)
��[ \
*
��] ^
-
��_ `
$num
��` b
)
��b c
)
��c d
;
��d e
int
��  #
	jumpedCol
��$ -
=
��. /
(
��0 1
int
��1 4
)
��4 5
(
��5 6
columnNumber
��6 B
+
��C D
(
��E F
(
��F G
columnNumber
��G S
-
��T U
previousColumn
��V d
)
��d e
*
��f g
-
��h i
$num
��i k
)
��k l
)
��l m
;
��m n
boardMatrix
��  +
[
��+ ,
	rowNumber
��, 5
,
��5 6
columnNumber
��7 C
]
��C D
=
��E F
Checker
��G N
.
��N O
player2King
��O Z
;
��Z [
boardMatrix
��  +
[
��+ ,
	jumpedRow
��, 5
,
��5 6
	jumpedCol
��7 @
]
��@ A
=
��B C
Checker
��D K
.
��K L
	freeSpace
��L U
;
��U V
boardMatrix
��  +
[
��+ ,
previousRow
��, 7
,
��7 8
previousColumn
��9 G
]
��G H
=
��I J
Checker
��K R
.
��R S
	freeSpace
��S \
;
��\ ] 
DismissButtonClick
��  2
(
��2 3
previousButton
��3 A
)
��A B
;
��B C'
UpdateCheckersGuiPosition
��  9
(
��9 :
boardMatrix
��: E
)
��E F
;
��F G
if
��  "
(
��# $#
KingMoreJumpAvaliable
��$ 9
(
��9 :
)
��: ;
)
��; <
{
��  !
previousButton
��$ 2
=
��3 4
button
��5 ;
;
��; <!
RemarkClickedButton
��$ 7
(
��7 8
button
��8 >
)
��> ?
;
��? @
}
��  !
else
��  $
{
��  ! 
DismissButtonClick
��$ 6
(
��6 7
previousButton
��7 E
)
��E F
;
��F G
EndTurn
��$ +
(
��+ ,
)
��, -
;
��- .
}
��  !
}
�� 
else
��  
{
�� 
InvalidClick
��  ,
(
��, -
)
��- .
;
��. /
}
�� 
}
�� 
}
�� 
}
�� 
else
�� 
{
�� 
current_player
�� "
.
��" #
Text
��# '
=
��( )
$str
��* 9
;
��9 :
if
�� 
(
�� 
boardMatrix
�� #
[
��# $
	rowNumber
��$ -
,
��- .
columnNumber
��/ ;
]
��; <
==
��= ?
Checker
��@ G
.
��G H
player2Checker
��H V
||
��W Y
boardMatrix
��Z e
[
��e f
	rowNumber
��f o
,
��o p
columnNumber
��q }
]
��} ~
==�� �
Checker��� �
.��� �
player2King��� �
)��� �
{
�� 
previousButton
�� &
=
��' (
button
��) /
;
��/ 0$
checkPlayerSecondClick
�� .
=
��/ 0
true
��1 5
;
��5 6!
RemarkClickedButton
�� +
(
��+ ,
button
��, 2
)
��2 3
;
��3 4
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
GenerateGame
�� !
(
��! "
)
��" #
{
�� 	

buttonList
�� 
=
�� 
Board
�� 
.
�� 
Children
�� '
.
��' (
Cast
��( ,
<
��, -
Button
��- 3
>
��3 4
(
��4 5
)
��5 6
.
��6 7
ToList
��7 =
(
��= >
)
��> ?
;
��? @
boardMatrix
�� 
=
�� 
new
�� 
Checker
�� %
[
��% &
$num
��& '
,
��' (
$num
��) *
]
��* +
;
��+ ,
int
�� 
	travelRow
�� 
;
�� 
for
�� 
(
�� 
	travelRow
�� 
=
�� 
$num
�� 
;
�� 
	travelRow
��  )
<
��* +
$num
��, -
;
��- .
	travelRow
��/ 8
++
��8 :
)
��: ;
{
�� 
if
�� 
(
�� 
	travelRow
�� 
==
��  
$num
��! "
||
��# %
	travelRow
��& /
==
��0 2
$num
��3 4
||
��5 7
	travelRow
��8 A
==
��B D
$num
��E F
)
��F G
{
�� 
int
�� 
travelColumns
�� %
;
��% &
for
�� 
(
�� 
travelColumns
�� &
=
��' (
$num
��) *
;
��* +
travelColumns
��, 9
<
��: ;
$num
��< =
;
��= >
travelColumns
��? L
+=
��M O
$num
��P Q
)
��Q R
{
�� 
if
�� 
(
�� 
	travelRow
�� %
==
��& (
$num
��) *
||
��+ -
	travelRow
��. 7
==
��8 :
$num
��; <
)
��< =
{
�� 
boardMatrix
�� '
[
��' (
	travelRow
��( 1
,
��1 2
travelColumns
��3 @
]
��@ A
=
��B C
Checker
��D K
.
��K L
player2Checker
��L Z
;
��Z [
}
�� 
else
�� 
{
�� 
boardMatrix
�� '
[
��' (
	travelRow
��( 1
,
��1 2
travelColumns
��3 @
]
��@ A
=
��B C
Checker
��D K
.
��K L
player1Checker
��L Z
;
��Z [
}
�� 
}
�� 
}
�� 
if
�� 
(
�� 
	travelRow
�� 
==
��  
$num
��! "
||
��# %
	travelRow
��& /
==
��0 2
$num
��3 4
||
��5 7
	travelRow
��8 A
==
��B D
$num
��E F
)
��F G
{
�� 
int
�� 
travelColumns
�� %
;
��% &
for
�� 
(
�� 
travelColumns
�� &
=
��' (
$num
��) *
;
��* +
travelColumns
��, 9
<
��: ;
$num
��< =
;
��= >
travelColumns
��? L
+=
��M O
$num
��P Q
)
��Q R
{
�� 
if
�� 
(
�� 
	travelRow
�� %
==
��& (
$num
��) *
||
��+ -
	travelRow
��. 7
==
��8 :
$num
��; <
)
��< =
{
�� 
boardMatrix
�� '
[
��' (
	travelRow
��( 1
,
��1 2
travelColumns
��3 @
]
��@ A
=
��B C
Checker
��D K
.
��K L
player1Checker
��L Z
;
��Z [
}
�� 
else
�� 
{
�� 
boardMatrix
�� '
[
��' (
	travelRow
��( 1
,
��1 2
travelColumns
��3 @
]
��@ A
=
��B C
Checker
��D K
.
��K L
player2Checker
��L Z
;
��Z [
}
�� 
}
�� 
}
�� 
}
�� 
player1Turn
�� 
=
�� 
true
�� 
;
�� $
checkPlayerSecondClick
�� "
=
��# $
false
��% *
;
��* +
	rowNumber
�� 
=
�� 
-
�� 
$num
�� 
;
�� 
columnNumber
�� 
=
�� 
$num
�� 
;
�� 
previousRow
�� 
=
�� 
$num
�� 
;
�� 
previousColumn
�� 
=
�� 
$num
�� 
;
�� !
player1CheckerCount
�� 
=
��  !
$num
��" $
;
��$ %!
player2CheckerCount
�� 
=
��  !
$num
��" $
;
��$ %
int
�� 
counter
�� 
=
�� 
$num
�� 
;
�� 

buttonList
�� 
.
�� 
ForEach
�� 
(
�� 
button
�� %
=>
��& (
{
�� 
if
�� 
(
�� 
counter
�� 
<
�� 
$num
��  
)
��  !
{
�� 
button
�� 
.
�� 
Content
�� "
=
��# $
$str
��% (
;
��( )
button
�� 
.
�� 
FontSize
�� #
=
��$ %
$num
��& (
;
��( )
button
�� 
.
�� 

Foreground
�� %
=
��& '
player2Color
��( 4
;
��4 5
counter
�� 
++
�� 
;
�� 
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
counter
�� 
>=
��  "
$num
��# %
&&
��& (
counter
��) 0
<
��1 2
$num
��3 5
)
��5 6
{
�� 
button
�� 
.
�� 
Content
�� &
=
��' (
$str
��) ,
;
��, -
button
�� 
.
�� 
FontSize
�� '
=
��( )
$num
��* ,
;
��, -
button
�� 
.
�� 

Foreground
�� )
=
��* +
player1Color
��, 8
;
��8 9
counter
�� 
++
�� !
;
��! "
}
�� 
else
�� 
{
�� 
button
�� 
.
�� 
Content
�� &
=
��' (
string
��) /
.
��/ 0
Empty
��0 5
;
��5 6
counter
�� 
++
�� !
;
��! "
}
�� 
}
�� 
}
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� !
RemarkClickedButton
�� (
(
��( )
Button
��) /
buttonSelected
��0 >
)
��> ?
{
�� 	
buttonSelected
�� 
.
�� 
BorderThickness
�� *
=
��+ ,
new
��- 0
	Thickness
��1 :
(
��: ;
$num
��; <
,
��< =
$num
��> ?
,
��? @
$num
��A B
,
��B C
$num
��D E
)
��E F
;
��F G
buttonSelected
�� 
.
�� 
BorderBrush
�� &
=
��' (
Brushes
��) 0
.
��0 1
Snow
��1 5
;
��5 6
}
�� 	
private
�� 
void
��  
DismissButtonClick
�� '
(
��' (
Button
��( .
buttonSelected
��/ =
)
��= >
{
�� 	
buttonSelected
�� 
.
�� 
BorderThickness
�� *
=
��+ ,
new
��- 0
	Thickness
��1 :
(
��: ;
$num
��; <
,
��< =
$num
��> ?
,
��? @
$num
��A B
,
��B C
$num
��D E
)
��E F
;
��F G
buttonSelected
�� 
.
�� 
BorderBrush
�� &
=
��' (
Brushes
��) 0
.
��0 1
	SlateGray
��1 :
;
��: ;
}
�� 	
public
�� 
void
�� '
UpdateCheckersGuiPosition
�� -
(
��- .
Checker
��. 5
[
��6 7
,
��7 8
]
��8 9
boardMatrixUpdate
��9 J
)
��J K
{
�� 	
boardMatrix
�� 
=
�� 
boardMatrixUpdate
�� +
;
��+ ,

buttonList
�� 
.
�� 
ForEach
�� 
(
�� 
button
�� %
=>
��& (
{
��) *
int
�� 
row
�� 
=
�� 
Grid
�� 
.
�� 
GetRow
�� %
(
��% &
button
��& ,
)
��, -
;
��- .
int
�� 
col
�� 
=
�� 
Grid
�� 
.
�� 
	GetColumn
�� (
(
��( )
button
��) /
)
��/ 0
;
��0 1
if
�� 
(
�� 
boardMatrixUpdate
�� %
[
��% &
row
��& )
,
��) *
col
��+ .
]
��. /
==
��0 2
Checker
��3 :
.
��: ;
player1Checker
��; I
)
��I J
{
�� 
button
�� 
.
�� 
Content
�� "
=
��# $
$str
��% (
;
��( )
button
�� 
.
�� 
FontSize
�� #
=
��$ %
$num
��& (
;
��( )
button
�� 
.
�� 

Foreground
�� %
=
��& '
player1Color
��( 4
;
��4 5
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
boardMatrixUpdate
�� )
[
��) *
row
��* -
,
��- .
col
��/ 2
]
��2 3
==
��4 6
Checker
��7 >
.
��> ?
player1King
��? J
)
��J K
{
�� 
button
�� 
.
�� 
Content
�� &
=
��' (
$str
��) ,
;
��, -
button
�� 
.
�� 
FontSize
�� '
=
��( )
$num
��* ,
;
��, -
button
�� 
.
�� 

Foreground
�� )
=
��* +
player1Color
��, 8
;
��8 9
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
boardMatrixUpdate
�� -
[
��- .
row
��. 1
,
��1 2
col
��3 6
]
��6 7
==
��8 :
Checker
��; B
.
��B C
player2Checker
��C Q
)
��Q R
{
�� 
button
�� "
.
��" #
Content
��# *
=
��+ ,
$str
��- 0
;
��0 1
button
�� "
.
��" #
FontSize
��# +
=
��, -
$num
��. 0
;
��0 1
button
�� "
.
��" #

Foreground
��# -
=
��. /
player2Color
��0 <
;
��< =
}
�� 
else
�� 
{
�� 
if
�� 
(
��  
boardMatrixUpdate
��  1
[
��1 2
row
��2 5
,
��5 6
col
��7 :
]
��: ;
==
��< >
Checker
��? F
.
��F G
player2King
��G R
)
��R S
{
�� 
button
��  &
.
��& '
Content
��' .
=
��/ 0
$str
��1 4
;
��4 5
button
��  &
.
��& '
FontSize
��' /
=
��0 1
$num
��2 4
;
��4 5
button
��  &
.
��& '

Foreground
��' 1
=
��2 3
player2Color
��4 @
;
��@ A
}
�� 
else
��  
{
�� 
button
��  &
.
��& '
Content
��' .
=
��/ 0
$str
��1 3
;
��3 4
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
bool
�� "
Player1MoreJumpCheck
�� )
(
��) *
)
��* +
{
�� 	
if
�� 
(
�� 
	rowNumber
�� 
-
�� 
$num
�� 
>=
��  
$num
��! "
&&
��# %
columnNumber
��& 2
-
��3 4
$num
��5 6
>=
��7 9
$num
��: ;
&&
��< >
boardMatrix
��? J
[
��J K
	rowNumber
��K T
-
��U V
$num
��W X
,
��X Y
columnNumber
��Z f
-
��g h
$num
��i j
]
��j k
==
��l n
Checker
��o v
.
��v w
	freeSpace��w �
&&��� �
(
�� 
boardMatrix
�� 
[
�� 
	rowNumber
�� &
-
��' (
$num
��) *
,
��* +
columnNumber
��, 8
-
��9 :
$num
��; <
]
��< =
==
��> @
Checker
��A H
.
��H I
player2Checker
��I W
||
��X Z
boardMatrix
��[ f
[
��f g
	rowNumber
��g p
-
��q r
$num
��s t
,
��t u
columnNumber��v �
-��� �
$num��� �
]��� �
==��� �
Checker��� �
.��� �
player2King��� �
)��� �
)��� �
{
�� 
return
�� 
true
�� 
;
�� 
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
	rowNumber
�� 
-
�� 
$num
��  !
>=
��" $
$num
��% &
&&
��' )
columnNumber
��* 6
+
��7 8
$num
��9 :
<=
��; =
$num
��> ?
&&
��@ B
boardMatrix
��C N
[
��N O
	rowNumber
��O X
-
��Y Z
$num
��[ \
,
��\ ]
columnNumber
��^ j
+
��k l
$num
��m n
]
��n o
==
��p r
Checker
��s z
.
��z {
	freeSpace��{ �
&&��� �
(
�� 
boardMatrix
��  
[
��  !
	rowNumber
��! *
-
��+ ,
$num
��- .
,
��. /
columnNumber
��0 <
+
��= >
$num
��? @
]
��@ A
==
��B D
Checker
��E L
.
��L M
player2Checker
��M [
||
��\ ^
boardMatrix
��_ j
[
��j k
	rowNumber
��k t
-
��u v
$num
��w x
,
��x y
columnNumber��z �
+��� �
$num��� �
]��� �
==��� �
Checker��� �
.��� �
player2King��� �
)��� �
)��� �
{
�� 
return
�� 
true
�� 
;
��  
}
�� 
else
�� 
{
�� 
return
�� 
false
��  
;
��  !
}
�� 
}
�� 
}
�� 	
private
�� 
bool
�� "
Player2MoreJumpCheck
�� )
(
��) *
)
��* +
{
�� 	
if
�� 
(
�� 
	rowNumber
�� 
+
�� 
$num
�� 
<=
��  
$num
��! "
&&
��# %
columnNumber
��& 2
+
��3 4
$num
��5 6
<=
��7 9
$num
��: ;
&&
��< >
boardMatrix
��? J
[
��J K
	rowNumber
��K T
+
��U V
$num
��W X
,
��X Y
columnNumber
��Z f
+
��g h
$num
��i j
]
��j k
==
��l n
Checker
��o v
.
��v w
	freeSpace��w �
&&��� �
(
�� 
boardMatrix
�� 
[
�� 
	rowNumber
�� &
+
��' (
$num
��) *
,
��* +
columnNumber
��, 8
+
��9 :
$num
��; <
]
��< =
==
��> @
Checker
��A H
.
��H I
player1Checker
��I W
||
��X Z
boardMatrix
��[ f
[
��f g
	rowNumber
��g p
+
��q r
$num
��s t
,
��t u
columnNumber��v �
+��� �
$num��� �
]��� �
==��� �
Checker��� �
.��� �
player1King��� �
)��� �
)��� �
{
�� 
return
�� 
true
�� 
;
�� 
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
	rowNumber
�� 
+
�� 
$num
��  !
<=
��" $
$num
��% &
&&
��' )
columnNumber
��* 6
-
��7 8
$num
��9 :
>=
��; =
$num
��> ?
&&
��@ B
boardMatrix
��C N
[
��N O
	rowNumber
��O X
+
��Y Z
$num
��[ \
,
��\ ]
columnNumber
��^ j
-
��k l
$num
��m n
]
��n o
==
��p r
Checker
��s z
.
��z {
	freeSpace��{ �
&&��� �
(
�� 
boardMatrix
�� 
[
�� 
	rowNumber
�� &
+
��' (
$num
��) *
,
��* +
columnNumber
��, 8
-
��9 :
$num
��; <
]
��< =
==
��> @
Checker
��A H
.
��H I
player1Checker
��I W
||
��X Z
boardMatrix
��[ f
[
��f g
	rowNumber
��g p
+
��q r
$num
��s t
,
��t u
columnNumber��v �
-��� �
$num��� �
]��� �
==��� �
Checker��� �
.��� �
player1King��� �
)��� �
)��� �
{
�� 
return
�� 
true
�� 
;
��  
}
�� 
else
�� 
{
�� 
return
�� 
false
��  
;
��  !
}
�� 
}
�� 
}
�� 	
private
�� 
bool
�� #
KingMoreJumpAvaliable
�� *
(
��* +
)
��+ ,
{
�� 	
if
�� 
(
�� 
player1Turn
�� 
)
�� 
{
�� 
if
�� 
(
�� 
	rowNumber
�� 
-
�� 
$num
��  !
>=
��" $
$num
��% &
&&
��' )
columnNumber
��* 6
-
��7 8
$num
��9 :
>=
��; =
$num
��> ?
&&
��@ B
boardMatrix
��C N
[
��N O
	rowNumber
��O X
-
��Y Z
$num
��[ \
,
��\ ]
columnNumber
��^ j
-
��k l
$num
��m n
]
��n o
==
��p r
Checker
��s z
.
��z {
	freeSpace��{ �
&&��� �
(
�� 
boardMatrix
��  
[
��  !
	rowNumber
��! *
-
��+ ,
$num
��- .
,
��. /
columnNumber
��0 <
-
��= >
$num
��? @
]
��@ A
==
��B D
Checker
��E L
.
��L M
player2Checker
��M [
||
��\ ^
boardMatrix
��_ j
[
��j k
	rowNumber
��k t
-
��u v
$num
��w x
,
��x y
columnNumber��z �
-��� �
$num��� �
]��� �
==��� �
Checker��� �
.��� �
player2King��� �
)��� �
)��� �
{
�� 
return
�� 
true
�� 
;
��  
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
	rowNumber
�� !
-
��" #
$num
��$ %
>=
��& (
$num
��) *
&&
��+ -
columnNumber
��. :
+
��; <
$num
��= >
<=
��? A
$num
��B C
&&
��D F
boardMatrix
��G R
[
��R S
	rowNumber
��S \
-
��] ^
$num
��_ `
,
��` a
columnNumber
��b n
+
��o p
$num
��q r
]
��r s
==
��t v
Checker
��w ~
.
��~ 
	freeSpace�� �
&&��� �
(
�� 
boardMatrix
�� $
[
��$ %
	rowNumber
��% .
-
��/ 0
$num
��1 2
,
��2 3
columnNumber
��4 @
+
��A B
$num
��C D
]
��D E
==
��F H
Checker
��I P
.
��P Q
player2Checker
��Q _
||
��` b
boardMatrix
��c n
[
��n o
	rowNumber
��o x
-
��y z
$num
��{ |
,
��| }
columnNumber��~ �
+��� �
$num��� �
]��� �
==��� �
Checker��� �
.��� �
player2King��� �
)��� �
)��� �
{
�� 
return
�� 
true
�� #
;
��# $
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
	rowNumber
�� %
+
��& '
$num
��( )
<=
��* ,
$num
��- .
&&
��/ 1
columnNumber
��2 >
-
��? @
$num
��A B
>=
��C E
$num
��F G
&&
��H J
boardMatrix
��K V
[
��V W
	rowNumber
��W `
+
��a b
$num
��c d
,
��d e
columnNumber
��f r
-
��s t
$num
��u v
]
��v w
==
��x z
Checker��{ �
.��� �
	freeSpace��� �
&&��� �
(
�� 
boardMatrix
�� (
[
��( )
	rowNumber
��) 2
+
��3 4
$num
��5 6
,
��6 7
columnNumber
��8 D
-
��E F
$num
��G H
]
��H I
==
��J L
Checker
��M T
.
��T U
player2Checker
��U c
||
��d f
boardMatrix
��g r
[
��r s
	rowNumber
��s |
+
��} ~
$num�� �
,��� �
columnNumber��� �
-��� �
$num��� �
]��� �
==��� �
Checker��� �
.��� �
player2King��� �
)��� �
)��� �
{
�� 
return
�� "
true
��# '
;
��' (
}
�� 
else
�� 
{
�� 
if
�� 
(
��  
	rowNumber
��  )
+
��* +
$num
��, -
<=
��. 0
$num
��1 2
&&
��3 5
columnNumber
��6 B
+
��C D
$num
��E F
<=
��G I
$num
��J K
&&
��L N
boardMatrix
��O Z
[
��Z [
	rowNumber
��[ d
+
��e f
$num
��g h
,
��h i
columnNumber
��j v
+
��w x
$num
��y z
]
��z {
==
��| ~
Checker�� �
.��� �
	freeSpace��� �
&&��� �
(
��  !
boardMatrix
��! ,
[
��, -
	rowNumber
��- 6
+
��7 8
$num
��9 :
,
��: ;
columnNumber
��< H
+
��I J
$num
��K L
]
��L M
==
��N P
Checker
��Q X
.
��X Y
player2Checker
��Y g
||
��h j
boardMatrix
��k v
[
��v w
	rowNumber��w �
+��� �
$num��� �
,��� �
columnNumber��� �
+��� �
$num��� �
]��� �
==��� �
Checker��� �
.��� �
player2King��� �
)��� �
)��� �
{
�� 
return
��  &
true
��' +
;
��+ ,
}
�� 
else
��  
{
�� 
return
��  &
false
��' ,
;
��, -
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
	rowNumber
�� 
-
�� 
$num
��  !
>=
��" $
$num
��% &
&&
��' )
columnNumber
��* 6
-
��7 8
$num
��9 :
>=
��; =
$num
��> ?
&&
��@ B
boardMatrix
��C N
[
��N O
	rowNumber
��O X
-
��Y Z
$num
��[ \
,
��\ ]
columnNumber
��^ j
-
��k l
$num
��m n
]
��n o
==
��p r
Checker
��s z
.
��z {
	freeSpace��{ �
&&��� �
(
�� 
boardMatrix
��  
[
��  !
	rowNumber
��! *
-
��+ ,
$num
��- .
,
��. /
columnNumber
��0 <
-
��= >
$num
��? @
]
��@ A
==
��B D
Checker
��E L
.
��L M
player1Checker
��M [
||
��\ ^
boardMatrix
��_ j
[
��j k
	rowNumber
��k t
-
��u v
$num
��w x
,
��x y
columnNumber��z �
-��� �
$num��� �
]��� �
==��� �
Checker��� �
.��� �
player1King��� �
)��� �
)��� �
{
�� 
return
�� 
true
�� 
;
��  
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
	rowNumber
�� !
-
��" #
$num
��$ %
>=
��& (
$num
��) *
&&
��+ -
columnNumber
��. :
+
��; <
$num
��= >
<=
��? A
$num
��B C
&&
��D F
boardMatrix
��G R
[
��R S
	rowNumber
��S \
-
��] ^
$num
��_ `
,
��` a
columnNumber
��b n
+
��o p
$num
��q r
]
��r s
==
��t v
Checker
��w ~
.
��~ 
	freeSpace�� �
&&��� �
(
�� 
boardMatrix
�� $
[
��$ %
	rowNumber
��% .
-
��/ 0
$num
��1 2
,
��2 3
columnNumber
��4 @
+
��A B
$num
��C D
]
��D E
==
��F H
Checker
��I P
.
��P Q
player1Checker
��Q _
||
��` b
boardMatrix
��c n
[
��n o
	rowNumber
��o x
-
��y z
$num
��{ |
,
��| }
columnNumber��~ �
+��� �
$num��� �
]��� �
==��� �
Checker��� �
.��� �
player1King��� �
)��� �
)��� �
{
�� 
return
�� 
true
�� #
;
��# $
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
	rowNumber
�� %
-
��& '
$num
��( )
>=
��* ,
$num
��- .
&&
��/ 1
columnNumber
��2 >
-
��? @
$num
��A B
>=
��C E
$num
��F G
&&
��H J
boardMatrix
��K V
[
��V W
	rowNumber
��W `
+
��a b
$num
��c d
,
��d e
columnNumber
��f r
-
��s t
$num
��u v
]
��v w
==
��x z
Checker��{ �
.��� �
	freeSpace��� �
&&��� �
(
�� 
boardMatrix
�� (
[
��( )
	rowNumber
��) 2
+
��3 4
$num
��5 6
,
��6 7
columnNumber
��8 D
-
��E F
$num
��G H
]
��H I
==
��J L
Checker
��M T
.
��T U
player1Checker
��U c
||
��d f
boardMatrix
��g r
[
��r s
	rowNumber
��s |
+
��} ~
$num�� �
,��� �
columnNumber��� �
-��� �
$num��� �
]��� �
==��� �
Checker��� �
.��� �
player1King��� �
)��� �
)��� �
{
�� 
return
�� "
true
��# '
;
��' (
}
�� 
else
�� 
{
�� 
if
�� 
(
��  
	rowNumber
��  )
-
��* +
$num
��, -
>=
��. 0
$num
��1 2
&&
��3 5
columnNumber
��6 B
+
��C D
$num
��E F
<=
��G I
$num
��J K
&&
��L N
boardMatrix
��O Z
[
��Z [
	rowNumber
��[ d
+
��e f
$num
��g h
,
��h i
columnNumber
��j v
+
��w x
$num
��y z
]
��z {
==
��| ~
Checker�� �
.��� �
	freeSpace��� �
&&��� �
(
��  !
boardMatrix
��! ,
[
��, -
	rowNumber
��- 6
+
��7 8
$num
��9 :
,
��: ;
columnNumber
��< H
+
��I J
$num
��K L
]
��L M
==
��N P
Checker
��Q X
.
��X Y
player1Checker
��Y g
||
��h j
boardMatrix
��k v
[
��v w
	rowNumber��w �
+��� �
$num��� �
,��� �
columnNumber��� �
+��� �
$num��� �
]��� �
==��� �
Checker��� �
.��� �
player1King��� �
)��� �
)��� �
{
�� 
return
��  &
true
��' +
;
��+ ,
}
�� 
else
��  
{
�� 
return
��  &
false
��' ,
;
��, -
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
bool
�� 
IsKingChecker
�� "
(
��" #
)
��# $
{
�� 	
if
�� 
(
�� 
	rowNumber
�� 
==
�� 
$num
�� 
&&
�� !
boardMatrix
��" -
[
��- .
previousRow
��. 9
,
��9 :
previousColumn
��; I
]
��I J
==
��K M
Checker
��N U
.
��U V
player1Checker
��V d
)
��d e
{
�� 
boardMatrix
�� 
[
�� 
	rowNumber
�� %
,
��% &
columnNumber
��' 3
]
��3 4
=
��5 6
Checker
��7 >
.
��> ?
player1King
��? J
;
��J K
boardMatrix
�� 
[
�� 
previousRow
�� '
,
��' (
previousColumn
��) 7
]
��7 8
=
��9 :
Checker
��; B
.
��B C
	freeSpace
��C L
;
��L M'
UpdateCheckersGuiPosition
�� )
(
��) *
boardMatrix
��* 5
)
��5 6
;
��6 7
return
�� 
true
�� 
;
�� 
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
	rowNumber
�� 
==
��  
$num
��! "
&&
��# %
boardMatrix
��& 1
[
��1 2
previousRow
��2 =
,
��= >
previousColumn
��? M
]
��M N
==
��O Q
Checker
��R Y
.
��Y Z
player2Checker
��Z h
)
��h i
{
�� 
boardMatrix
�� 
[
��  
	rowNumber
��  )
,
��) *
columnNumber
��+ 7
]
��7 8
=
��9 :
Checker
��; B
.
��B C
player2King
��C N
;
��N O
boardMatrix
�� 
[
��  
previousRow
��  +
,
��+ ,
previousColumn
��- ;
]
��; <
=
��= >
Checker
��? F
.
��F G
	freeSpace
��G P
;
��P Q'
UpdateCheckersGuiPosition
�� -
(
��- .
boardMatrix
��. 9
)
��9 :
;
��: ;
return
�� 
true
�� 
;
��  
}
�� 
else
�� 
{
�� 
return
�� 
false
��  
;
��  !
}
�� 
}
�� 
}
�� 	
private
�� 
bool
�� 
KingMove
�� 
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
boardMatrix
�� 
[
�� 
	rowNumber
�� %
,
��% &
columnNumber
��' 3
]
��3 4
==
��5 7
Checker
��8 ?
.
��? @
	freeSpace
��@ I
&&
��J L
(
��M N
	rowNumber
��N W
-
��X Y
previousRow
��Z e
==
��f h
$num
��i j
||
��k m
	rowNumber
��n w
-
��x y
previousRow��z �
==��� �
-��� �
$num��� �
)��� �
&&
�� 
(
�� 
columnNumber
��  
-
��! "
previousColumn
��# 1
==
��2 4
$num
��5 6
||
��7 9
columnNumber
��: F
-
��G H
previousColumn
��I W
==
��X Z
-
��[ \
$num
��\ ]
)
��] ^
)
��^ _
{
�� 
boardMatrix
�� 
[
�� 
	rowNumber
�� %
,
��% &
columnNumber
��' 3
]
��3 4
=
��5 6
boardMatrix
��7 B
[
��B C
previousRow
��C N
,
��N O
previousColumn
��P ^
]
��^ _
;
��_ `
boardMatrix
�� 
[
�� 
previousRow
�� '
,
��' (
previousColumn
��) 7
]
��7 8
=
��9 :
Checker
��; B
.
��B C
	freeSpace
��C L
;
��L M
return
�� 
true
�� 
;
�� 
}
�� 
else
�� 
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
bool
�� 
ValidateKingJump
�� %
(
��% &
)
��& '
{
�� 	
if
�� 
(
�� 
player1Turn
�� 
)
�� 
{
�� 
if
�� 
(
�� 
boardMatrix
�� 
[
��  
	rowNumber
��  )
,
��) *
columnNumber
��+ 7
]
��7 8
==
��9 ;
Checker
��< C
.
��C D
	freeSpace
��D M
&&
��N P
	rowNumber
��Q Z
-
��[ \
previousRow
��] h
==
��i k
$num
��l m
&&
��n p
columnNumber
��q }
-
��~ 
previousColumn��� �
==��� �
$num��� �
)��� �
{
�� 
if
�� 
(
�� 
boardMatrix
�� #
[
��# $
	rowNumber
��$ -
-
��. /
$num
��0 1
,
��1 2
columnNumber
��3 ?
-
��@ A
$num
��B C
]
��C D
==
��E G
Checker
��H O
.
��O P
player2Checker
��P ^
||
��_ a
boardMatrix
��b m
[
��m n
	rowNumber
��n w
-
��x y
$num
��z {
,
��{ |
columnNumber��} �
-��� �
$num��� �
]��� �
==��� �
Checker��� �
.��� �
player2King��� �
)��� �
{
�� 
return
�� 
true
�� #
;
��# $
}
�� 
else
�� 
{
�� 
return
�� 
false
�� $
;
��$ %
}
�� 
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
boardMatrix
�� #
[
��# $
	rowNumber
��$ -
,
��- .
columnNumber
��/ ;
]
��; <
==
��= ?
Checker
��@ G
.
��G H
	freeSpace
��H Q
&&
��R T
	rowNumber
��U ^
-
��_ `
previousRow
��a l
==
��m o
$num
��p q
&&
��r t
columnNumber��u �
-��� �
previousColumn��� �
==��� �
-��� �
$num��� �
)��� �
{
�� 
if
�� 
(
�� 
boardMatrix
�� '
[
��' (
	rowNumber
��( 1
-
��2 3
$num
��4 5
,
��5 6
columnNumber
��7 C
+
��D E
$num
��F G
]
��G H
==
��I K
Checker
��L S
.
��S T
player2Checker
��T b
||
��c e
boardMatrix
��f q
[
��q r
	rowNumber
��r {
-
��| }
$num
��~ 
,�� �
columnNumber��� �
+��� �
$num��� �
]��� �
==��� �
Checker��� �
.��� �
player2King��� �
)��� �
{
�� 
return
�� "
true
��# '
;
��' (
}
�� 
else
�� 
{
�� 
return
�� "
false
��# (
;
��( )
}
�� 
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
boardMatrix
�� '
[
��' (
	rowNumber
��( 1
,
��1 2
columnNumber
��3 ?
]
��? @
==
��A C
Checker
��D K
.
��K L
	freeSpace
��L U
&&
��V X
	rowNumber
��Y b
-
��c d
previousRow
��e p
==
��q s
-
��t u
$num
��u v
&&
��w y
columnNumber��z �
-��� �
previousColumn��� �
==��� �
$num��� �
)��� �
{
�� 
if
�� 
(
��  
boardMatrix
��  +
[
��+ ,
	rowNumber
��, 5
+
��6 7
$num
��8 9
,
��9 :
columnNumber
��; G
-
��H I
$num
��J K
]
��K L
==
��M O
Checker
��P W
.
��W X
player2Checker
��X f
||
��g i
boardMatrix
��j u
[
��u v
	rowNumber
��v 
+��� �
$num��� �
,��� �
columnNumber��� �
-��� �
$num��� �
]��� �
==��� �
Checker��� �
.��� �
player2King��� �
)��� �
{
�� 
return
��  &
true
��' +
;
��+ ,
}
�� 
else
��  
{
�� 
return
��  &
false
��' ,
;
��, -
}
�� 
}
�� 
else
�� 
{
�� 
if
�� 
(
��  
boardMatrix
��  +
[
��+ ,
	rowNumber
��, 5
,
��5 6
columnNumber
��7 C
]
��C D
==
��E G
Checker
��H O
.
��O P
	freeSpace
��P Y
&&
��Z \
	rowNumber
��] f
-
��g h
previousRow
��i t
==
��u w
-
��x y
$num
��y z
&&
��{ }
columnNumber��~ �
-��� �
previousColumn��� �
==��� �
-��� �
$num��� �
)��� �
{
�� 
if
��  "
(
��# $
boardMatrix
��$ /
[
��/ 0
	rowNumber
��0 9
+
��: ;
$num
��< =
,
��= >
columnNumber
��? K
+
��L M
$num
��N O
]
��O P
==
��Q S
Checker
��T [
.
��[ \
player2Checker
��\ j
||
��k m
boardMatrix
��n y
[
��y z
	rowNumber��z �
+��� �
$num��� �
,��� �
columnNumber��� �
+��� �
$num��� �
]��� �
==��� �
Checker��� �
.��� �
player2Checker��� �
)��� �
{
��  !
return
��$ *
true
��+ /
;
��/ 0
}
��  !
else
��  $
{
��  !
return
��$ *
false
��+ 0
;
��0 1
}
��  !
}
�� 
else
��  
{
�� 
return
��  &
false
��' ,
;
��, -
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
boardMatrix
�� 
[
��  
	rowNumber
��  )
,
��) *
columnNumber
��+ 7
]
��7 8
==
��9 ;
Checker
��< C
.
��C D
	freeSpace
��D M
&&
��N P
	rowNumber
��Q Z
-
��[ \
previousRow
��] h
==
��i k
$num
��l m
&&
��n p
columnNumber
��q }
-
��~ 
previousColumn��� �
==��� �
$num��� �
)��� �
{
�� 
if
�� 
(
�� 
boardMatrix
�� #
[
��# $
	rowNumber
��$ -
-
��. /
$num
��0 1
,
��1 2
columnNumber
��3 ?
-
��@ A
$num
��B C
]
��C D
==
��E G
Checker
��H O
.
��O P
player1Checker
��P ^
||
��_ a
boardMatrix
��b m
[
��m n
	rowNumber
��n w
-
��x y
$num
��z {
,
��{ |
columnNumber��} �
-��� �
$num��� �
]��� �
==��� �
Checker��� �
.��� �
player1King��� �
)��� �
{
�� 
return
�� 
true
�� #
;
��# $
}
�� 
else
�� 
{
�� 
return
�� 
false
�� $
;
��$ %
}
�� 
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
boardMatrix
�� #
[
��# $
	rowNumber
��$ -
,
��- .
columnNumber
��/ ;
]
��; <
==
��= ?
Checker
��@ G
.
��G H
	freeSpace
��H Q
&&
��R T
	rowNumber
��U ^
-
��_ `
previousRow
��a l
==
��m o
$num
��p q
&&
��r t
columnNumber��u �
-��� �
previousColumn��� �
==��� �
-��� �
$num��� �
)��� �
{
�� 
if
�� 
(
�� 
boardMatrix
�� '
[
��' (
	rowNumber
��( 1
-
��2 3
$num
��4 5
,
��5 6
columnNumber
��7 C
+
��D E
$num
��F G
]
��G H
==
��I K
Checker
��L S
.
��S T
player1Checker
��T b
||
��c e
boardMatrix
��f q
[
��q r
	rowNumber
��r {
-
��| }
$num
��~ 
,�� �
columnNumber��� �
+��� �
$num��� �
]��� �
==��� �
Checker��� �
.��� �
player1King��� �
)��� �
{
�� 
return
�� "
true
��# '
;
��' (
}
�� 
else
�� 
{
�� 
return
�� "
false
��# (
;
��( )
}
�� 
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
boardMatrix
�� '
[
��' (
	rowNumber
��( 1
,
��1 2
columnNumber
��3 ?
]
��? @
==
��A C
Checker
��D K
.
��K L
	freeSpace
��L U
&&
��V X
	rowNumber
��Y b
-
��c d
previousRow
��e p
==
��q s
-
��t u
$num
��u v
&&
��w y
columnNumber��z �
-��� �
previousColumn��� �
==��� �
$num��� �
)��� �
{
�� 
if
�� 
(
��  
boardMatrix
��  +
[
��+ ,
	rowNumber
��, 5
+
��6 7
$num
��8 9
,
��9 :
columnNumber
��; G
-
��H I
$num
��J K
]
��K L
==
��M O
Checker
��P W
.
��W X
player1Checker
��X f
||
��g i
boardMatrix
��j u
[
��u v
	rowNumber
��v 
+��� �
$num��� �
,��� �
columnNumber��� �
-��� �
$num��� �
]��� �
==��� �
Checker��� �
.��� �
player1King��� �
)��� �
{
�� 
return
��  &
true
��' +
;
��+ ,
}
�� 
else
��  
{
�� 
return
��  &
false
��' ,
;
��, -
}
�� 
}
�� 
else
�� 
{
�� 
if
�� 
(
��  
boardMatrix
��  +
[
��+ ,
	rowNumber
��, 5
,
��5 6
columnNumber
��7 C
]
��C D
==
��E G
Checker
��H O
.
��O P
	freeSpace
��P Y
&&
��Z \
	rowNumber
��] f
-
��g h
previousRow
��i t
==
��u w
-
��x y
$num
��y z
&&
��{ }
columnNumber��~ �
-��� �
previousColumn��� �
==��� �
-��� �
$num��� �
)��� �
{
�� 
if
��  "
(
��# $
boardMatrix
��$ /
[
��/ 0
	rowNumber
��0 9
+
��: ;
$num
��< =
,
��= >
columnNumber
��? K
+
��L M
$num
��N O
]
��O P
==
��Q S
Checker
��T [
.
��[ \
player1Checker
��\ j
||
��k m
boardMatrix
��n y
[
��y z
	rowNumber��z �
+��� �
$num��� �
,��� �
columnNumber��� �
+��� �
$num��� �
]��� �
==��� �
Checker��� �
.��� �
player1King��� �
)��� �
{
��  !
return
��$ *
true
��+ /
;
��/ 0
}
��  !
else
��  $
{
��  !
return
��$ *
false
��+ 0
;
��0 1
}
��  !
}
�� 
else
��  
{
�� 
return
��  &
false
��' ,
;
��, -
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
EndTurn
�� 
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� !
player2CheckerCount
�� #
==
��$ &
$num
��' (
||
��) +!
player1CheckerCount
��, ?
==
��@ B
$num
��C D
)
��D E
{
�� 
GameMatchManager
��  
.
��  !
EndPlayerGame
��! .
(
��. /
actualMatch
��/ :
.
��: ;
matchActiveNumber
��; L
,
��L M
localPlayerNumber
��N _
,
��_ `!
player2CheckerCount
��a t
,
��t u"
player1CheckerCount��v �
)��� �
;��� �

FinishGame
�� 
(
�� !
player2CheckerCount
�� .
,
��. /!
player1CheckerCount
��0 C
)
��C D
;
��D E
}
�� 
else
�� 
{
�� 
foreach
�� 
(
�� 
Button
�� 
blackSquare
��  +
in
��, .

buttonList
��/ 9
)
��9 :
{
�� 
	IsEnabled
�� 
=
�� 
false
��  %
;
��% &
}
�� 
IsKingChecker
�� 
(
�� 
)
�� 
;
��  $
checkPlayerSecondClick
�� &
=
��' (
!
��) *$
checkPlayerSecondClick
��* @
;
��@ A
if
�� 
(
�� 
player1Turn
�� 
)
��  
{
�� 
current_player
�� "
.
��" #
Text
��# '
=
��( )
$str
��* 9
;
��9 :
GameMatchManager
�� $
.
��$ %
Player1TurnResult
��% 6
(
��6 7
boardMatrix
��7 B
,
��B C
actualMatch
��D O
.
��O P
matchActiveNumber
��P a
,
��a b!
player2CheckerCount
��c v
,
��v w"
player1CheckerCount��x �
)��� �
;��� �
}
�� 
else
�� 
{
�� 
current_player
�� "
.
��" #
Text
��# '
=
��( )
$str
��* 9
;
��9 :
GameMatchManager
�� $
.
��$ %
Player2TurnResult
��% 6
(
��6 7
boardMatrix
��7 B
,
��B C
actualMatch
��D O
.
��O P
matchActiveNumber
��P a
,
��a b!
player2CheckerCount
��c v
,
��v w"
player1CheckerCount��x �
)��� �
;��� �
}
�� 
player1Turn
�� 
=
�� 
!
�� 
player1Turn
�� *
;
��* +
}
�� 
}
�� 	
public
�� 
void
�� !
EndSecondPlayerTurn
�� '
(
��' (
)
��( )
{
�� 	
if
�� 
(
�� 
player1Turn
�� 
)
�� 
{
�� 
foreach
�� 
(
�� 
Button
�� 
blackSquare
��  +
in
��, .

buttonList
��/ 9
)
��9 :
{
�� 
	IsEnabled
�� 
=
�� 
true
��  $
;
��$ %
}
�� 
player1Turn
�� 
=
�� 
!
�� 
player1Turn
�� *
;
��* +
current_player
�� 
.
�� 
Text
�� #
=
��$ %
$str
��& 5
;
��5 6
}
�� 
else
�� 
{
�� 
foreach
�� 
(
�� 
Button
�� 
blackSquare
��  +
in
��, .

buttonList
��/ 9
)
��9 :
{
�� 
	IsEnabled
�� 
=
�� 
true
��  $
;
��$ %
}
�� 
player1Turn
�� 
=
�� 
true
�� "
;
��" #
current_player
�� 
.
�� 
Text
�� #
=
��$ %
$str
��& 5
;
��5 6
}
�� 
}
�� 	
private
�� 
void
�� 
InvalidClick
�� !
(
��! "
)
��" #
{
�� 	$
checkPlayerSecondClick
�� "
=
��# $
false
��% *
;
��* + 
DismissButtonClick
�� 
(
�� 
previousButton
�� -
)
��- .
;
��. /
}
�� 	
public
�� 
void
�� 

FinishGame
�� 
(
�� 
int
�� "
playerTwoCheckers
��# 4
,
��4 5
int
��6 9
playerOneCheckers
��: K
)
��K L
{
�� 	
if
�� 
(
�� 
playerOneCheckers
�� %
==
��& (
$num
��) *
)
��* +
{
�� 
MessageBoxResult
�� $
result
��% +
=
��, -

MessageBox
��. 8
.
��8 9
Show
��9 =
(
��= >
$str
��> P
,
��P Q
$str
��R ]
)
��] ^
;
��^ _
}
�� 
else
�� 
{
�� 
MessageBoxResult
�� $
result
��% +
=
��, -

MessageBox
��. 8
.
��8 9
Show
��9 =
(
��= >
$str
��> P
,
��P Q
$str
��R ]
)
��] ^
;
��^ _
}
�� 
Menu
�� 
menu
�� 
=
�� 
new
�� 
Menu
��  $
(
��$ %
localPlayer
��% 0
)
��0 1
;
��1 2
menu
�� 
.
�� 
Show
�� 
(
�� 
)
�� 
;
�� 
Game
�� 
game
�� 
=
�� 
App
�� 
.
��  
Current
��  '
.
��' (
Windows
��( /
.
��/ 0
OfType
��0 6
<
��6 7
Game
��7 ;
>
��; <
(
��< =
)
��= >
.
��> ?
FirstOrDefault
��? M
(
��M N
)
��N O
;
��O P
game
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
void
�� !
UpdateCheckersCount
�� '
(
��' (
int
��( +
playerTwoCheckers
��, =
,
��= >
int
��? B
playerOneCheckers
��C T
)
��T U
{
�� 	
this
�� 
.
�� !
player2CheckerCount
�� $
=
��% &
playerTwoCheckers
��' 8
;
��8 9
this
�� 
.
�� !
player1CheckerCount
�� $
=
��% &
playerOneCheckers
��' 8
;
��8 9
}
�� 	
public
�� 
void
�� 
UpdateMatchNumber
�� %
(
��% &
int
��& )
newActiveNumber
��* 9
)
��9 :
{
�� 	
actualMatch
�� 
.
�� 
matchActiveNumber
�� )
=
��* +
newActiveNumber
��, ;
;
��; <
}
�� 	
}
�� 
}�� �
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
}"" �E
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
�� 
.
�� 
GetActualPlayer
�� &
(
��& '
actualPlayer
��' 3
)
��3 4
;
��4 5
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
)
��, -
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$str
��  a
)
��a b
;
��b c
}
�� 
}
�� 	
}
�� 
}�� �
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
} �I
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
playerOneCheckers	++w �
)
++� �
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
playerOneCheckers	GGv �
)
GG� �
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
}kk �
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
} �
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
}:: �
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
}.. �$
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
}LL �

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
}!! �
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
}33 �
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