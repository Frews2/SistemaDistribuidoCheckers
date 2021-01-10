ë
dD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\AdminPage.xaml.cs
	namespace 	
CheckersCliente
 
{ 
public 

partial 
class 
	AdminPage "
:# $
NavigationWindow% 5
{ 
public 
	AdminPage 
( 
Jugador  
admin! &
)& '
{ 	
InitializeComponent 
(  
)  !
;! "
LookLanguage 
( 
admin 
. 

IdLenguaje )
)) *
;* +
NavigationService 
. 
Navigate &
(& '
new' *
	AdminMenu+ 4
(4 5
admin5 :
): ;
); <
;< =
} 	
public 
string 

LangSwitch  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
=7 8
null9 =
;= >
private 
void 
LookLanguage !
(! "
int" %

idLanguage& 0
)0 1
{ 	
switch   
(   

idLanguage   
)   
{!! 
case"" 
$num"" 
:"" 
Thread## 
.## 
CurrentThread## (
.##( )
CurrentUICulture##) 9
=##: ;
new##< ?
CultureInfo##@ K
(##K L
$str##L P
)##P Q
;##Q R
break$$ 
;$$ 
case%% 
$num%% 
:%% 
Thread&& 
.&& 
CurrentThread&& (
.&&( )
CurrentUICulture&&) 9
=&&: ;
new&&< ?
CultureInfo&&@ K
(&&K L
$str&&L S
)&&S T
;&&T U
break'' 
;'' 
case(( 
$num(( 
:(( 
Thread)) 
.)) 
CurrentThread)) (
.))( )
CurrentUICulture))) 9
=)): ;
new))< ?
CultureInfo))@ K
())K L
$str))L P
)))P Q
;))Q R
break** 
;** 
}++ 
},, 	
}// 
}00 ë
oD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\AdminPages\AdminMenu.xaml.cs
	namespace		 	
CheckersCliente		
 
.		 

AdminPages		 $
{

 
public 

partial 
class 
	AdminMenu "
:# $
Page% )
{ 
public 
	AdminMenu 
( 
Jugador  
admin! &
)& '
{ 	
InitializeComponent 
(  
)  !
;! "
DataContext 
= 
admin 
;  
} 	
private 
void 
DisplayReports #
(# $
object$ *
sender+ 1
,1 2
RoutedEventArgs3 B
eC D
)D E
{ 	

BanManager 
. 
GetReportedList &
(& '
)' (
;( )
} 	
private 
void 
	CloseMenu 
( 
object %
sender& ,
,, -
RoutedEventArgs. =
e> ?
)? @
{ 	
	AdminPage 

actualMenu  
=! "
App# &
.& '
Current' .
.. /
Windows/ 6
.6 7
OfType7 =
<= >
	AdminPage> G
>G H
(H I
)I J
.J K
FirstOrDefaultK Y
(Y Z
)Z [
;[ \

actualMenu 
. 
Close 
( 
) 
; 
} 	
private!! 
void!! 
LanguageSelect!! #
(!!# $
object!!$ *
sender!!+ 1
,!!1 2
RoutedEventArgs!!3 B
e!!C D
)!!D E
{"" 	
(## 
DataContext## 
as## 
Jugador## #
)### $
.##$ %

IdLenguaje##% /
=##0 1
LanguageBox##2 =
.##= >
SelectedIndex##> K
;##K L
switch$$ 
($$ 
LanguageBox$$ 
.$$  
SelectedIndex$$  -
)$$- .
{%% 
case&& 
$num&& 
:&& 
Thread'' 
.'' 
CurrentThread'' (
.''( )
CurrentUICulture'') 9
='': ;
new''< ?
CultureInfo''@ K
(''K L
$str''L P
)''P Q
;''Q R
break(( 
;(( 
case)) 
$num)) 
:)) 
Thread** 
.** 
CurrentThread** (
.**( )
CurrentUICulture**) 9
=**: ;
new**< ?
CultureInfo**@ K
(**K L
$str**L S
)**S T
;**T U
break++ 
;++ 
case,, 
$num,, 
:,, 
Thread-- 
.-- 
CurrentThread-- (
.--( )
CurrentUICulture--) 9
=--: ;
new--< ?
CultureInfo--@ K
(--K L
$str--L P
)--P Q
;--Q R
break.. 
;.. 
}// 
	AdminPage00 
menu00 
=00 
new00  
	AdminPage00! *
(00* +
DataContext00+ 6
as007 9
Jugador00: A
)00A B
;00B C
menu11 
.11 
Show11 
(11 
)11 
;11 
	AdminPage22 

actualMenu22  
=22! "
App22# &
.22& '
Current22' .
.22. /
Windows22/ 6
.226 7
OfType227 =
<22= >
	AdminPage22> G
>22G H
(22H I
)22I J
.22J K
FirstOrDefault22K Y
(22Y Z
)22Z [
;22[ \

actualMenu33 
.33 
Close33 
(33 
)33 
;33 
}44 	
}55 
}66 Ì
pD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\AdminPages\ReportList.xaml.cs
	namespace 	
CheckersCliente
 
. 

AdminPages $
{ 
public 

partial 
class 

ReportList #
:$ %
Page& *
{ 
private 
List 
< 
Reporte 
> 

reportList (
;( )
private 
Reporte 
selectedReport &
;& '
private 
Jugador 
bannedPlayer $
;$ %
public 

ReportList 
( 
List 
< 
Reporte &
>& '
reports( /
)/ 0
{ 	
InitializeComponent 
(  
)  !
;! "

reportList 
= 
reports  
;  !
tableOfReports 
. 
ItemsSource &
=' (

reportList) 3
;3 4
} 	
private 
void 
	BanPlayer 
( 
object %
sender& ,
,, -
RoutedEventArgs. =
e> ?
)? @
{ 	
selectedReport   
=   
(   
Reporte   %
)  % &
tableOfReports  & 4
.  4 5
SelectedItem  5 A
;  A B
bannedPlayer!! 
=!! 
selectedReport!! )
.!!) *
	Reportado!!* 3
;!!3 4

BanManager"" 
."" 
	BanPlayer""  
(""  !
bannedPlayer""! -
.""- .
Apodo"". 3
)""3 4
;""4 5
}## 	
private%% 
void%% 
Exit%% 
(%% 
object%%  
sender%%! '
,%%' (
RoutedEventArgs%%) 8
e%%9 :
)%%: ;
{&& 	
NavigationService'' 
.'' 
GoBack'' $
(''$ %
)''% &
;''& '
}(( 	
})) 
}** ˆ
yD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\CallbackHandlers\BanCallbackHandler.cs
	namespace 	
CheckersCliente
 
. 
CallbackHandlers *
{ 
class 	
BanCallbackHandler
 
: 
IBanManagerCallback 2
{ 
public 
void 
GetBanResult  
(  !
	BanResult! *
result+ 1
)1 2
{ 	
if 
( 
result 
== 
	BanResult #
.# $
PLAYER_BANNED$ 1
)1 2
{ 

MessageBox 
. 
Show 
(  
	Resources  )
.) *
PlayerBannedMessage* =
)= >
;> ?
} 
else 
if 
( 
result 
== 
	BanResult (
.( )!
PLAYER_ALREADY_BANNED) >
)> ?
{ 

MessageBox 
. 
Show 
(  
	Resources  )
.) *+
PlayerAlreadyBannedErrorMessage* I
)I J
;J K
} 
else 
if 
( 
result 
== 
	BanResult (
.( )
ERROR_BANNING) 6
)6 7
{ 

MessageBox 
. 
Show 
(  
	Resources  )
.) *#
UnableToBanErrorMessage* A
)A B
;B C
} 
else 
{ 

MessageBox   
.   
Show   
(    
	Resources    )
.  ) *
NoConnectionMessage  * =
)  = >
;  > ?
}!! 
}"" 	
public$$ 
void$$ $
GetReportDataQueryResult$$ ,
($$, -
AdminReportResult$$- >
result$$? E
)$$E F
{%% 	
if&& 
(&& 
result&& 
==&& 
AdminReportResult&& +
.&&+ ,
REPORT_EXISTS&&, 9
)&&9 :
{'' 

MessageBox(( 
.(( 
Show(( 
(((  
	Resources((  )
.(() *
LoadMessage((* 5
)((5 6
;((6 7
})) 
else** 
if** 
(** 
result** 
==** 
AdminReportResult** 0
.**0 1
NO_REPORTS_EXIST**1 A
)**A B
{++ 

MessageBox,, 
.,, 
Show,, 
(,,  
	Resources,,  )
.,,) *
NoInfoMessage,,* 7
),,7 8
;,,8 9
}-- 
else.. 
{// 

MessageBox00 
.00 
Show00 
(00  
	Resources00  )
.00) *
NoConnectionMessage00* =
)00= >
;00> ?
}11 
}22 	
public44 
void44 
ReceiveReportData44 %
(44% &
Reporte44& -
[44- .
]44. /

reportList440 :
)44: ;
{55 	
List66 
<66 
Reporte66 
>66 
reports66 !
=66" #

reportList66$ .
.66. /
ToList66/ 5
(665 6
)666 7
;667 8
	AdminPage77 
menu77 
=77 
App77  
.77  !
Current77! (
.77( )
Windows77) 0
.770 1
OfType771 7
<777 8
	AdminPage778 A
>77A B
(77B C
)77C D
.77D E
FirstOrDefault77E S
(77S T
)77T U
;77U V
menu88 
.88 
Navigate88 
(88 
new88 

ReportList88 (
(88( )
reports88) 0
)880 1
)881 2
;882 3
}99 	
}:: 
};; î(
tD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\LogInPages\ChangePassword.xaml.cs
	namespace 	
CheckersCliente
 
. 

LogInPages $
{ 
public 

partial 
class 
ChangePassword '
:( )
Page* .
{ 
public 
const 
int 
MINIMUN_LENGHT '
=( )
$num* +
;+ ,
private 
readonly 
string 

playerNick  *
;* +
public 
ChangePassword 
( 
string $
playerNickname% 3
)3 4
{ 	
InitializeComponent 
(  
)  !
;! "

playerNick 
= 
playerNickname '
;' (
} 	
private 
void  
ChangePlayerPassword )
() *
object* 0
sender1 7
,7 8
RoutedEventArgs9 H
eI J
)J K
{ 	
RegisterButton 
. 
	IsEnabled $
=% &
false' ,
;, -
JugadorManager 
. 
ChangePassword )
() *
new* -
Jugador. 5
{ 
Apodo 
= 

playerNick "
," #
Contrasenia 
= 
PasswordTextBox -
.- .
Password. 6
} 
) 
; 
} 	
private!! 
void!! 
EnableChangeButton!! '
(!!' (
object!!( .
sender!!/ 5
,!!5 6
RoutedEventArgs!!7 F
e!!G H
)!!H I
{"" 	
if## 
(## 
PasswordTextBox## 
.##  
Password##  (
.##( )
Length##) /
<##0 1
MINIMUN_LENGHT##2 @
||##A C
!##D E#
PasswordVerificacionBox##E \
.##\ ]
Password##] e
.##e f
Equals##f l
(##l m
PasswordTextBox##m |
.##| }
Password	##} Ö
)
##Ö Ü
||$$ 
String$$ 
.$$ 
IsNullOrWhiteSpace$$ ,
($$, -
PasswordTextBox$$- <
.$$< =
Password$$= E
)$$E F
)$$F G
{%% 
RegisterButton&& 
.&& 
	IsEnabled&& (
=&&) *
false&&+ 0
;&&0 1
	ErroBlock'' 
.'' 

Visibility'' $
=''% &

Visibility''' 1
.''1 2
Visible''2 9
;''9 :
}(( 
else)) 
{** 
RegisterButton++ 
.++ 
	IsEnabled++ (
=++) *
true+++ /
;++/ 0
	ErroBlock,, 
.,, 

Visibility,, $
=,,% &

Visibility,,' 1
.,,1 2
Hidden,,2 8
;,,8 9
}-- 
}.. 	
private00 
void00 
VerifyPassword00 #
(00# $
Object00$ *
sender00+ 1
,001 2
RoutedEventArgs003 B
e00C D
)00D E
{11 	
if22 
(22 #
PasswordVerificacionBox22 '
.22' (
Password22( 0
.220 1
Equals221 7
(227 8
PasswordTextBox228 G
.22G H
Password22H P
)22P Q
&&22R T#
PasswordVerificacionBox22U l
.22l m
Password22m u
.22u v
Length22v |
>22} ~
MINIMUN_LENGHT	22 ç
&&33 
!33 
String33 
.33 
IsNullOrWhiteSpace33 -
(33- .#
PasswordVerificacionBox33. E
.33E F
Password33F N
)33N O
)33O P
{44 
RegisterButton55 
.55 
	IsEnabled55 (
=55) *
true55+ /
;55/ 0
}66 
else77 
{88 
RegisterButton99 
.99 
	IsEnabled99 (
=99) *
false99+ 0
;990 1
}:: 
}<< 	
private>> 
void>> 
CancelClick>>  
(>>  !
object>>! '
sender>>( .
,>>. /
RoutedEventArgs>>0 ?
e>>@ A
)>>A B
{?? 	
LogIn@@ 
login@@ 
=@@ 
App@@ 
.@@ 
Current@@ %
.@@% &
Windows@@& -
.@@- .
OfType@@. 4
<@@4 5
LogIn@@5 :
>@@: ;
(@@; <
)@@< =
.@@= >
FirstOrDefault@@> L
(@@L M
)@@M N
;@@N O
loginAA 
.AA 
EnableNavigationAA "
(AA" #
)AA# $
;AA$ %
loginBB 
.BB 
NavigationServiceBB #
.BB# $
NavigateBB$ ,
(BB, -
newBB- 0
	LogInPageBB1 :
(BB: ;
)BB; <
)BB< =
;BB= >
}CC 	
}DD 
}EE œ6
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
; 
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

clockTimer 
= 
new 
DispatcherTimer ,
(, -
)- .
;. /

clockTimer 
. 
Interval 
=  !
new" %
TimeSpan& .
(. /
$num/ 0
,0 1
$num2 3
,3 4
$num5 6
)6 7
;7 8

clockTimer 
. 
Tick 
+= 
	TimerTick (
;( )

clockTimer 
. 
Start 
( 
) 
; 
} 	
void   
	TimerTick   
(   
object   
sender   $
,  $ %
	EventArgs  & /
e  0 1
)  1 2
{!! 	
if"" 
("" 
timeSeconds"" 
>"" 
$num"" 
)""  
{## 
timeSeconds$$ 
--$$ 
;$$ 
CountdownNumber%% 
.%%  
Text%%  $
=%%% &
string%%' -
.%%- .
Format%%. 4
(%%4 5
$str%%5 >
,%%> ?
timeSeconds%%@ K
/%%K L
$num%%L N
,%%N O
timeSeconds%%O Z
%%%Z [
$num%%[ ]
)%%] ^
;%%^ _
}&& 
else'' 
{(( 

clockTimer)) 
.)) 
Stop)) 
())  
)))  !
;))! "
CountdownNumber** 
.**  

Visibility**  *
=**+ ,

Visibility**- 7
.**7 8
Hidden**8 >
;**> ?
CountdownText++ 
.++ 

Visibility++ (
=++) *

Visibility+++ 5
.++5 6
Hidden++6 <
;++< =
ResendButton,, 
.,, 
	IsEnabled,, &
=,,' (
true,,) -
;,,- .
}-- 
}.. 	
private00 
void00 
VerifyAccount00 "
(00" #
object00# )
sender00* 0
,000 1
RoutedEventArgs002 A
e00B C
)00C D
{11 	
VerifyButton22 
.22 
	IsEnabled22 "
=22# $
false22% *
;22* +
JugadorManager33 
.33 
VerifyPlayer33 '
(33' (
new33( +
Jugador33, 3
{44 
Apodo55 
=55 

pagePlayer55 "
.55" #
Apodo55# (
,55( )
PinConfirmacion66 
=66  !
PINbox66" (
.66( )
Text66) -
}77 
)77 
;77 
}88 	
private:: 
void:: 

ReSendMail:: 
(::  
object::  &
sender::' -
,::- .
RoutedEventArgs::/ >
e::? @
)::@ A
{;; 	
JugadorManager== 
.== 
ResendEmail== &
(==& '

pagePlayer==' 1
)==1 2
;==2 3
timeSeconds>> 
=>> 
$num>> 
;>> 

clockTimer?? 
.?? 
Start?? 
(?? 
)?? 
;?? 
CountdownNumber@@ 
.@@ 

Visibility@@ &
=@@' (

Visibility@@) 3
.@@3 4
Visible@@4 ;
;@@; <
CountdownTextAA 
.AA 

VisibilityAA $
=AA% &

VisibilityAA' 1
.AA1 2
VisibleAA2 9
;AA9 :
ResendButtonBB 
.BB 
	IsEnabledBB "
=BB# $
falseBB% *
;BB* +
}DD 	
privateFF 
voidFF 
CancelClickFF  
(FF  !
objectFF! '
senderFF( .
,FF. /
RoutedEventArgsFF0 ?
eFF@ A
)FFA B
{GG 	
LogInHH 
loginHH 
=HH 
AppHH 
.HH 
CurrentHH %
.HH% &
WindowsHH& -
.HH- .
OfTypeHH. 4
<HH4 5
LogInHH5 :
>HH: ;
(HH; <
)HH< =
.HH= >
FirstOrDefaultHH> L
(HHL M
)HHM N
;HHN O
loginII 
.II 
EnableNavigationII "
(II" #
)II# $
;II$ %
loginJJ 
.JJ 
NavigationServiceJJ #
.JJ# $
NavigateJJ$ ,
(JJ, -
newJJ- 0
	LogInPageJJ1 :
(JJ: ;
)JJ; <
)JJ< =
;JJ= >
}KK 	
privateMM 
voidMM "
PINboxPreviewTextInputMM +
(MM+ ,
objectMM, 2
senderMM3 9
,MM9 :$
TextCompositionEventArgsMM; S
eMMT U
)MMU V
{NN 	
ifOO 
(OO 
!OO 
ValidatorTextOO 
.OO 

AreNumbersOO )
(OO) *
eOO* +
.OO+ ,
TextOO, 0
)OO0 1
)OO1 2
{PP 
eQQ 
.QQ 
HandledQQ 
=QQ 
trueQQ  
;QQ  !
}SS 
elseTT 
{UU 
eVV 
.VV 
HandledVV 
=VV 
falseVV !
;VV! "
}WW 
}XX 	
privateZZ 
voidZZ 
PINboxTextChangedZZ &
(ZZ& '
objectZZ' -
senderZZ. 4
,ZZ4 5 
TextChangedEventArgsZZ6 J
eZZK L
)ZZL M
{[[ 	
if\\ 
(\\ 
PINbox\\ 
.\\ 
Text\\ 
.\\ 
Length\\ "
==\\# %
$num\\& '
&&\\( *
ValidatorText\\+ 8
.\\8 9

AreNumbers\\9 C
(\\C D
PINbox\\D J
.\\J K
Text\\K O
)\\O P
)\\P Q
{]] 
VerifyButton^^ 
.^^ 
	IsEnabled^^ &
=^^' (
true^^) -
;^^- .
}__ 
else`` 
{aa 
VerifyButtonbb 
.bb 
	IsEnabledbb &
=bb' (
falsebb) .
;bb. /
}cc 
}dd 	
}ff 
}gg ˇ4
oD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\LogInPages\LogInPage.xaml.cs
	namespace 	
CheckersCliente
 
. 

LogInPages $
{ 
public 

partial 
class 
	LogInPage "
:# $
Page% )
{ 
public 
	LogInPage 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 

LogInClick 
(  
object  &
sender' -
,- .
RoutedEventArgs/ >
e? @
)@ A
{ 	
LogInButton 
. 
	IsEnabled !
=" #
false$ )
;) *
JugadorManager   
.   
Login    
(    !
new  ! $
Jugador  % ,
{!! 
Apodo"" 
="" 
NicknameTextBox"" '
.""' (
Text""( ,
,"", -
Contrasenia## 
=## 
PasswordTextBox## -
.##- .
Password##. 6
}$$ 
)$$ 
;$$ 
}%% 	
private'' 
void'' 
EnableLoginButton'' &
(''& '
object''' -
sender''. 4
,''4 5
RoutedEventArgs''6 E
e''F G
)''G H
{(( 	
if)) 
()) 
PasswordTextBox)) 
.))  
SecurePassword))  .
.)). /
Length))/ 5
<))6 7
$num))8 9
||)): <
NicknameTextBox))= L
.))L M
Text))M Q
.))Q R
Length))R X
<))Y Z
$num))[ \
||** 
!** 
ChekWhiteSpaces** #
(**# $
)**$ %
)**% &
{++ 
LogInButton,, 
.,, 
	IsEnabled,, %
=,,& '
false,,( -
;,,- .
}-- 
else.. 
{// 
LogInButton00 
.00 
	IsEnabled00 %
=00& '
true00( ,
;00, -
}11 
}22 	
private44 
bool44 
ChekWhiteSpaces44 $
(44$ %
)44% &
{55 	
if66 
(66 
String66 
.66 
IsNullOrWhiteSpace66 )
(66) *
PasswordTextBox66* 9
.669 :
Password66: B
)66B C
||66D F
String66G M
.66M N
IsNullOrWhiteSpace66N `
(66` a
NicknameTextBox66a p
.66p q
Text66q u
)66u v
)66v w
{77 
return88 
false88 
;88 
}99 
else:: 
{;; 
return<< 
true<< 
;<< 
}== 
}>> 	
private@@ 
void@@ 
GetPassword@@  
(@@  !
object@@! '
sender@@( .
,@@. / 
MouseButtonEventArgs@@0 D
e@@E F
)@@F G
{AA 	
LogInBB 
loginBB 
=BB 
AppBB 
.BB 
CurrentBB %
.BB% &
WindowsBB& -
.BB- .
OfTypeBB. 4
<BB4 5
LogInBB5 :
>BB: ;
(BB; <
)BB< =
.BB= >
FirstOrDefaultBB> L
(BBL M
)BBM N
;BBN O
loginCC 
.CC 
EnableNavigationCC "
(CC" #
)CC# $
;CC$ %
NavigationServiceDD 
.DD 
NavigateDD &
(DD& '
newDD' *!
ObtainPasswordPinMailDD+ @
(DD@ A
)DDA B
)DDB C
;DDC D
}EE 	
privateGG 
voidGG 
RegisterAccountGG $
(GG$ %
objectGG% +
senderGG, 2
,GG2 3 
MouseButtonEventArgsGG4 H
eGGI J
)GGJ K
{HH 	
LogInII 
loginII 
=II 
AppII 
.II 
CurrentII %
.II% &
WindowsII& -
.II- .
OfTypeII. 4
<II4 5
LogInII5 :
>II: ;
(II; <
)II< =
.II= >
FirstOrDefaultII> L
(IIL M
)IIM N
;IIN O
loginJJ 
.JJ 
EnableNavigationJJ "
(JJ" #
)JJ# $
;JJ$ %
NavigationServiceKK 
.KK 
NavigateKK &
(KK& '
newKK' *
RegisterAccountKK+ :
(KK: ;
)KK; <
)KK< =
;KK= >
}LL 	
privateNN 
voidNN 
LanguageSelectNN #
(NN# $
objectNN$ *
senderNN+ 1
,NN1 2
RoutedEventArgsNN3 B
eNNC D
)NND E
{OO 	
switchPP 
(PP 
LanguageBoxPP 
.PP  
SelectedIndexPP  -
)PP- .
{QQ 
caseRR 
$numRR 
:RR 
ThreadSS 
.SS 
CurrentThreadSS (
.SS( )
CurrentUICultureSS) 9
=SS: ;
newSS< ?
CultureInfoSS@ K
(SSK L
$strSSL P
)SSP Q
;SSQ R
breakTT 
;TT 
caseUU 
$numUU 
:UU 
ThreadVV 
.VV 
CurrentThreadVV (
.VV( )
CurrentUICultureVV) 9
=VV: ;
newVV< ?
CultureInfoVV@ K
(VVK L
$strVVL S
)VVS T
;VVT U
breakWW 
;WW 
caseXX 
$numXX 
:XX 
ThreadYY 
.YY 
CurrentThreadYY (
.YY( )
CurrentUICultureYY) 9
=YY: ;
newYY< ?
CultureInfoYY@ K
(YYK L
$strYYL P
)YYP Q
;YYQ R
breakZZ 
;ZZ 
}[[ 
LogIn\\ 
logIn\\ 
=\\ 
new\\ 
LogIn\\ #
(\\# $
)\\$ %
;\\% &
logIn]] 
.]] 
EnableNavigation]] "
(]]" #
)]]# $
;]]$ %
logIn^^ 
.^^ 
Show^^ 
(^^ 
)^^ 
;^^ 
LogIn__ 
actualLogin__ 
=__ 
App__  #
.__# $
Current__$ +
.__+ ,
Windows__, 3
.__3 4
OfType__4 :
<__: ;
LogIn__; @
>__@ A
(__A B
)__B C
.__C D
FirstOrDefault__D R
(__R S
)__S T
;__T U
actualLogin`` 
.`` 
Close`` 
(`` 
)`` 
;``  
}aa 	
}bb 
}cc ˙
{D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\LogInPages\ObtainPasswordPinMail.xaml.cs
	namespace 	
CheckersCliente
 
. 

LogInPages $
{ 
public

 

partial

 
class

 !
ObtainPasswordPinMail

 .
:

/ 0
Page

1 5
{ 
public 
const 
int 
MINIMUN_LENGHT '
=( )
$num* +
;+ ,
private 
string 
playerNickname %
;% &
public !
ObtainPasswordPinMail $
($ %
)% &
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
SendMail 
( 
object $
sender% +
,+ ,
RoutedEventArgs- <
e= >
)> ?
{ 	

SendButton 
. 
	IsEnabled  
=! "
false# (
;( )
playerNickname 
= 
Nicknamebox (
.( )
Text) -
;- .
JugadorManager 
. 
ObtainMailPassword -
(- .
playerNickname. <
)< =
;= >
} 	
private 
void 
CheckNickname "
(" #
object# )
sender* 0
,0 1
RoutedEventArgs2 A
eB C
)C D
{ 	
if 
( 
Nicknamebox 
. 
Text  
.  !
Length! '
<( )
MINIMUN_LENGHT* 8
||9 ;
String< B
.B C
IsNullOrWhiteSpaceC U
(U V
NicknameboxV a
.a b
Textb f
)f g
)g h
{ 

SendButton   
.   
	IsEnabled   $
=  % &
false  ' ,
;  , -
}!! 
else"" 
{## 

SendButton$$ 
.$$ 
	IsEnabled$$ $
=$$% &
true$$' +
;$$+ ,
}%% 
}&& 	
private(( 
void(( 
CancelClick((  
(((  !
object((! '
sender((( .
,((. /
RoutedEventArgs((0 ?
e((@ A
)((A B
{)) 	
LogIn** 
login** 
=** 
App** 
.** 
Current** %
.**% &
Windows**& -
.**- .
OfType**. 4
<**4 5
LogIn**5 :
>**: ;
(**; <
)**< =
.**= >
FirstOrDefault**> L
(**L M
)**M N
;**N O
login++ 
.++ 
EnableNavigation++ "
(++" #
)++# $
;++$ %
NavigationService,, 
.,, 
GoBack,, $
(,,$ %
),,% &
;,,& '
}-- 	
}11 
}22 ˜Z
uD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\LogInPages\RegisterAccount.xaml.cs
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
class 
RegisterAccount (
:) *
Page+ /
{ 
public 
const 
int 
ENGLISH_NUMBER '
=( )
$num* +
;+ ,
public 
const 
int 
SPANISH_NUMBER '
=( )
$num* +
;+ ,
public 
const 
int 
ITALIANO_NUMBER (
=) *
$num+ ,
;, -
public 
const 
int 
MINIMUN_LENGHT '
=( )
$num* +
;+ ,
public 
const 
int 
MINIMUM_MAIL_LENGHT ,
=- .
$num/ 1
;1 2
public 
const 
int !
ANSWER_MINIMUM_LENGHT .
=/ 0
$num1 2
;2 3
public 
RegisterAccount 
( 
)  
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void  
EnableRegisterButton )
() *
object* 0
sender1 7
,7 8
RoutedEventArgs9 H
eI J
)J K
{ 	
if 
( 
NicknameTextBox 
.  
Text  $
.$ %
Length% +
<, -
MINIMUN_LENGHT. <
||= ?
EmailTextBox@ L
.L M
TextM Q
.Q R
LengthR X
<Y Z
MINIMUM_MAIL_LENGHT[ n
||   
PasswordTextBox   "
.  " #
Password  # +
.  + ,
Length  , 2
<  3 4
MINIMUN_LENGHT  5 C
||  D F
LanguageBox  G R
.  R S
SelectionBoxItem  S c
==  d f
null  g k
||!! 
QuestionTextBox!! "
.!!" #
Text!!# '
.!!' (
Length!!( .
<!!/ 0
MINIMUN_LENGHT!!1 ?
||!!@ B
AnswerTextBox!!C P
.!!P Q
Text!!Q U
.!!U V
Length!!V \
<!!] ^!
ANSWER_MINIMUM_LENGHT!!_ t
||"" 
!"" 
IsEmail"" 
("" 
)"" 
||""  
!""! "

IsQuestion""" ,
("", -
)""- .
||""/ 1
!""2 3
CheckWhiteSpaces""3 C
(""C D
)""D E
)""E F
{## 
RegisterButton$$ 
.$$ 
	IsEnabled$$ (
=$$) *
false$$+ 0
;$$0 1
LengthBlock%% 
.%% 

Visibility%% &
=%%' (

Visibility%%) 3
.%%3 4
Visible%%4 ;
;%%; <
}&& 
else'' 
{(( 
RegisterButton)) 
.)) 
	IsEnabled)) (
=))) *
true))+ /
;))/ 0
LengthBlock** 
.** 

Visibility** &
=**' (

Visibility**) 3
.**3 4
Hidden**4 :
;**: ;
}++ 
},, 	
private.. 
bool.. 
CheckWhiteSpaces.. %
(..% &
)..& '
{// 	
if00 
(00 
String00 
.00 
IsNullOrWhiteSpace00 )
(00) *
NicknameTextBox00* 9
.009 :
Text00: >
)00> ?
||00@ B
String00C I
.00I J
IsNullOrWhiteSpace00J \
(00\ ]
PasswordTextBox00] l
.00l m
Password00m u
)00u v
||11 
String11 
.11 
IsNullOrWhiteSpace11 ,
(11, -
AnswerTextBox11- :
.11: ;
Text11; ?
)11? @
||11A C
string11D J
.11J K
IsNullOrWhiteSpace11K ]
(11] ^
EmailTextBox11^ j
.11j k
Text11k o
)11o p
||22 
String22 
.22 
IsNullOrWhiteSpace22 ,
(22, -
QuestionTextBox22- <
.22< =
Text22= A
)22A B
)22B C
{33 
return44 
false44 
;44 
}55 
else66 
{77 
return88 
true88 
;88 
}99 
}:: 	
private<< 
bool<< 
IsEmail<< 
(<< 
)<< 
{== 	
if>> 
(>> 
ValidatorText>> 
.>> 
IsEmail>> %
(>>% &
EmailTextBox>>& 2
.>>2 3
Text>>3 7
)>>7 8
&&>>9 ;
EmailTextBox>>< H
.>>H I
Text>>I M
.>>M N
Length>>N T
>>>U V
MINIMUM_MAIL_LENGHT>>W j
&&?? 
!?? 
String?? 
.?? 
IsNullOrEmpty?? (
(??( )
EmailTextBox??) 5
.??5 6
Text??6 :
)??: ;
)??; <
{@@ 
returnAA 
trueAA 
;AA 
}BB 
elseCC 
{DD 
returnEE 
falseEE 
;EE 
}FF 
}GG 	
privateHH 
boolHH 

IsQuestionHH 
(HH  
)HH  !
{II 	
ifJJ 
(JJ 
ValidatorTextJJ 
.JJ 

IsQuestionJJ (
(JJ( )
QuestionTextBoxJJ) 8
.JJ8 9
TextJJ9 =
)JJ= >
&&JJ? A
QuestionTextBoxJJB Q
.JJQ R
TextJJR V
.JJV W
LengthJJW ]
>JJ^ _
MINIMUN_LENGHTJJ` n
&&KK 
!KK 
StringKK 
.KK 
IsNullOrEmptyKK (
(KK( )
QuestionTextBoxKK) 8
.KK8 9
TextKK9 =
)KK= >
)KK> ?
{LL 
returnMM 
trueMM 
;MM 
}NN 
elseOO 
{PP 
returnQQ 
falseQQ 
;QQ 
}RR 
}SS 	
privateVV 
voidVV 
RegisterUserVV !
(VV! "
objectVV" (
senderVV) /
,VV/ 0
RoutedEventArgsVV1 @
eVVA B
)VVB C
{WW 	
RegisterButtonXX 
.XX 
	IsEnabledXX $
=XX% &
falseXX' ,
;XX, -
varZZ 
randomGeneratorZZ 
=ZZ  !!
RandomNumberGeneratorZZ" 7
.ZZ7 8
CreateZZ8 >
(ZZ> ?
)ZZ? @
;ZZ@ A
byte[[ 
[[[ 
][[ 
data[[ 
=[[ 
new[[ 
byte[[ "
[[[" #
$num[[# $
][[$ %
;[[% &
randomGenerator\\ 
.\\ 
GetBytes\\ $
(\\$ %
data\\% )
)\\) *
;\\* +
int^^ 

dataNumber^^ 
=^^ 
Math^^ !
.^^! "
Abs^^" %
(^^% &
BitConverter^^& 2
.^^2 3
ToInt32^^3 :
(^^: ;
data^^; ?
,^^? @
$num^^A B
)^^B C
)^^C D
;^^D E
int__ 
numberOfDigits__ 
=__  
(__! "
int__" %
)__% &
Math__& *
.__* +
Floor__+ 0
(__0 1
Math__1 5
.__5 6
Log10__6 ;
(__; <

dataNumber__< F
)__F G
)__G H
;__H I
int`` 
	pinNumber`` 
=`` 
$num`` 
;`` 
ifbb 
(bb 
numberOfDigitsbb 
>=bb !
$numbb" #
)bb# $
{cc 
	pinNumberdd 
=dd 
(dd 
intdd  
)dd  !
Mathdd! %
.dd% &
Truncatedd& .
(dd. /
(dd/ 0

dataNumberdd0 :
/dd; <
Mathdd= A
.ddA B
PowddB E
(ddE F
$numddF H
,ddH I
numberOfDigitsddJ X
-ddY Z
$numdd[ \
)dd\ ]
)dd] ^
)dd^ _
;dd_ `
}ee 
intgg 
selectedLanguagegg  
=gg! "
CheckLanguagegg# 0
(gg0 1
)gg1 2
;gg2 3
JugadorManagerii 
.ii 
SaveNewPlayerii (
(ii( )
newii) ,
Jugadorii- 4
{jj 
Apodokk 
=kk 
NicknameTextBoxkk '
.kk' (
Textkk( ,
,kk, -
Contraseniall 
=ll 
PasswordTextBoxll -
.ll- .
Passwordll. 6
,ll6 7
CorreoElectronicomm !
=mm" #
EmailTextBoxmm$ 0
.mm0 1
Textmm1 5
,mm5 6
Statusnn 
=nn 
$strnn 
,nn !
RespuestaConfirmacionoo %
=oo& '
AnswerTextBoxoo( 5
.oo5 6
Textoo6 :
,oo: ; 
PreguntaRecuperacionpp $
=pp% &
QuestionTextBoxpp' 6
.pp6 7
Textpp7 ;
,pp; <
PinConfirmacionqq 
=qq  !
	pinNumberqq" +
.qq+ ,
ToStringqq, 4
(qq4 5
)qq5 6
,qq6 7

IdLenguajerr 
=rr 
selectedLanguagerr -
}ss 
)ss 
;ss 
}tt 	
privatevv 
intvv 
CheckLanguagevv !
(vv! "
)vv" #
{ww 	
intxx 
languageNumberxx 
;xx 
ifzz 
(zz 
LanguageBoxzz 
.zz 
SelectedIndexzz (
.zz( )
Equalszz) /
(zz/ 0
ENGLISH_NUMBERzz0 >
)zz> ?
)zz? @
{{{ 
languageNumber|| 
=||  
ENGLISH_NUMBER||! /
;||/ 0
}}} 
else~~ 
{ 
if
ÄÄ 
(
ÄÄ 
LanguageBox
ÄÄ 
.
ÄÄ 
SelectedIndex
ÄÄ ,
.
ÄÄ, -
Equals
ÄÄ- 3
(
ÄÄ3 4
SPANISH_NUMBER
ÄÄ4 B
)
ÄÄB C
)
ÄÄC D
{
ÅÅ 
languageNumber
ÇÇ "
=
ÇÇ# $
SPANISH_NUMBER
ÇÇ% 3
;
ÇÇ3 4
}
ÉÉ 
else
ÑÑ 
{
ÖÖ 
languageNumber
ÜÜ "
=
ÜÜ# $
ITALIANO_NUMBER
ÜÜ% 4
;
ÜÜ4 5
}
áá 
}
àà 
return
ää 
languageNumber
ää !
;
ää! "
}
ãã 	
private
çç 
void
çç 
CancelRegister
çç #
(
çç# $
object
çç$ *
sender
çç+ 1
,
çç1 2
RoutedEventArgs
çç3 B
e
ççC D
)
ççD E
{
éé 	
LogIn
èè 
login
èè 
=
èè 
App
èè 
.
èè 
Current
èè %
.
èè% &
Windows
èè& -
.
èè- .
OfType
èè. 4
<
èè4 5
LogIn
èè5 :
>
èè: ;
(
èè; <
)
èè< =
.
èè= >
FirstOrDefault
èè> L
(
èèL M
)
èèM N
;
èèN O
login
êê 
.
êê 
EnableNavigation
êê "
(
êê" #
)
êê# $
;
êê$ %
NavigationService
ëë 
.
ëë 
GoBack
ëë $
(
ëë$ %
)
ëë% &
;
ëë& '
}
íí 	
}
ìì 
}îî Ã;
{D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\LogInPages\VerificatePasswordPin.xaml.cs
	namespace		 	
CheckersCliente		
 
.		 

LogInPages		 $
{

 
public 

partial 
class !
VerificatePasswordPin .
:/ 0
Page1 5
{ 
public 
const 
int 
MINIMUN_LENGHT '
=( )
$num* +
;+ ,
private 
int 
timeSeconds 
=  !
$num" $
;$ %
DispatcherTimer 

clockTimer "
;" #
private 
string 
playerNickname %
;% &
public !
VerificatePasswordPin $
($ %
string% +
nickname, 4
,4 5
string6 <
securityQuestion= M
)M N
{ 	
playerNickname 
= 
nickname %
;% &

clockTimer 
= 
new 
DispatcherTimer ,
(, -
)- .
;. /

clockTimer 
. 
Interval 
=  !
new" %
TimeSpan& .
(. /
$num/ 0
,0 1
$num2 3
,3 4
$num5 6
)6 7
;7 8

clockTimer 
. 
Tick 
+= 
	TimerTick (
;( )

clockTimer 
. 
Start 
( 
) 
; 
InitializeComponent 
(  
)  !
;! "
QuestionBlock 
. 
Text 
=  
securityQuestion! 1
;1 2
} 	
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
$str$$5 >
,$$> ?
timeSeconds$$@ K
/$$L M
$num$$N P
,$$P Q
timeSeconds$$R ]
%$$^ _
$num$$` b
)$$b c
;$$c d
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
void// 

ReSendMail// 
(//  
object//  &
sender//' -
,//- .
RoutedEventArgs/// >
e//? @
)//@ A
{00 	
JugadorManager11 
.11 
ObtainMailPassword11 -
(11- .
playerNickname11. <
)11< =
;11= >
timeSeconds22 
=22 
$num22 
;22 

clockTimer33 
.33 
Start33 
(33 
)33 
;33 
CountdownNumber44 
.44 

Visibility44 &
=44' (

Visibility44) 3
.443 4
Visible444 ;
;44; <
CountdownText55 
.55 

Visibility55 $
=55% &

Visibility55' 1
.551 2
Visible552 9
;559 :
ResendButton66 
.66 
	IsEnabled66 "
=66# $
false66% *
;66* +
}77 	
private99 
void99 "
PINboxPreviewTextInput99 +
(99+ ,
object99, 2
sender993 9
,999 :$
TextCompositionEventArgs99; S
e99T U
)99U V
{:: 	
if;; 
(;; 
!;; 
ValidatorText;; 
.;; 

AreNumbers;; )
(;;) *
e;;* +
.;;+ ,
Text;;, 0
);;0 1
);;1 2
{<< 
e== 
.== 
Handled== 
=== 
true==  
;==  !
}?? 
else@@ 
{AA 
eBB 
.BB 
HandledBB 
=BB 
falseBB !
;BB! "
}CC 
}DD 	
privateFF 
voidFF 
PINboxTextChangedFF &
(FF& '
objectFF' -
senderFF. 4
,FF4 5 
TextChangedEventArgsFF6 J
eFFK L
)FFL M
{GG 	
ifHH 
(HH 
PINboxHH 
.HH 
TextHH 
.HH 
LengthHH "
==HH# %
$numHH& '
&&HH( *
ValidatorTextHH+ 8
.HH8 9

AreNumbersHH9 C
(HHC D
PINboxHHD J
.HHJ K
TextHHK O
)HHO P
&&HHQ S
!HHT U
StringHHU [
.HH[ \
IsNullOrWhiteSpaceHH\ n
(HHn o
PINboxHHo u
.HHu v
TextHHv z
)HHz {
&&II 
!II 
StringII 
.II 
IsNullOrWhiteSpaceII -
(II- .
AnswerTextBoxII. ;
.II; <
TextII< @
)II@ A
)IIA B
{JJ 
VerifyButtonKK 
.KK 
	IsEnabledKK &
=KK' (
trueKK) -
;KK- .
}LL 
elseMM 
{NN 
VerifyButtonOO 
.OO 
	IsEnabledOO &
=OO' (
falseOO) .
;OO. /
}PP 
}QQ 	
privateSS 
voidSS 
VerifyClickSS  
(SS  !
objectSS! '
senderSS( .
,SS. /
RoutedEventArgsSS0 ?
eSS@ A
)SSA B
{TT 	
VerifyButtonUU 
.UU 
	IsEnabledUU "
=UU# $
falseUU% *
;UU* +
JugadorManagerVV 
.VV 
	VerifyPinVV $
(VV$ %
playerNicknameVV% 3
,VV3 4
PINboxVV5 ;
.VV; <
TextVV< @
,VV@ A
AnswerTextBoxVVB O
.VVO P
TextVVP T
)VVT U
;VVU V
}WW 	
privateYY 
voidYY 
CancelClickYY  
(YY  !
objectYY! '
senderYY( .
,YY. /
RoutedEventArgsYY0 ?
eYY@ A
)YYA B
{ZZ 	
LogIn[[ 
login[[ 
=[[ 
App[[ 
.[[ 
Current[[ %
.[[% &
Windows[[& -
.[[- .
OfType[[. 4
<[[4 5
LogIn[[5 :
>[[: ;
([[; <
)[[< =
.[[= >
FirstOrDefault[[> L
([[L M
)[[M N
;[[N O
login\\ 
.\\ 
EnableNavigation\\ "
(\\" #
)\\# $
;\\$ %
login]] 
.]] 
NavigationService]] #
.]]# $
Navigate]]$ ,
(]], -
new]]- 0
	LogInPage]]1 :
(]]: ;
)]]; <
)]]< =
;]]= >
}^^ 	
}__ 
}`` †
iD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\Managers\BanManager.cs
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

static 
class 

BanManager "
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
BanCallbackHandlerZ l
(l m
)m n
)n o
;o p
private 
static 
readonly 
BanManagerClient  0
server1 7
=8 9
new: =
BanManagerClient> N
(N O
instanceContextO ^
)^ _
;_ `
public 
static 
void 
GetReportedList *
(* +
)+ ,
{ 	
try 
{ 
server 
. 
GetReportData $
($ %
)% &
;& '
} 
catch 
( %
EndpointNotFoundException ,
), -
{ 

MessageBox 
. 
Show 
(  

Properties  *
.* +
	Resources+ 4
.4 5
NoConnectionMessage5 H
)H I
;I J
} 
} 	
public 
static 
void 
	BanPlayer $
($ %
string% +

playerName, 6
)6 7
{ 	
try 
{   
server!! 
.!! 
	BanPlayer!!  
(!!  !

playerName!!! +
)!!+ ,
;!!, -
}"" 
catch## 
(## %
EndpointNotFoundException## ,
)##, -
{$$ 

MessageBox%% 
.%% 
Show%% 
(%%  

Properties%%  *
.%%* +
	Resources%%+ 4
.%%4 5
NoConnectionMessage%%5 H
)%%H I
;%%I J
}&& 
}'' 	
}(( 
})) ƒ

nD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\MenuPages\RulesPage.xaml.cs
	namespace 	
CheckersCliente
 
. 
	MenuPages #
{ 
public 

partial 
class 
	RulesPage "
:# $
Page% )
{ 
public 
	RulesPage 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
CancelClick  
(  !
object! '
sender( .
,. /
RoutedEventArgs0 ?
e@ A
)A B
{ 	
Menu 

actualMenu 
= 
App !
.! "
Current" )
.) *
Windows* 1
.1 2
OfType2 8
<8 9
Menu9 =
>= >
(> ?
)? @
.@ A
FirstOrDefaultA O
(O P
)P Q
;Q R

actualMenu 
. 
EnableNavigation '
(' (
)( )
;) *
NavigationService 
. 
GoBack $
($ %
)% &
;& '
} 	
} 
} ¯
mD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\MenuPages\GameMode.xaml.cs
	namespace 	
CheckersCliente
 
. 
	MenuPages #
{ 
public 

partial 
class 
GameMode !
:" #
Page$ (
{ 
private 
Jugador 
currentPlayer %
;% &
private 
CheckersGameMode  
selectedGameMode! 1
;1 2
public 
GameMode 
( 
Jugador 
player  &
)& '
{ 	
InitializeComponent 
(  
)  !
;! "
currentPlayer 
= 
player "
;" #
} 	
private 
void 
EnterClassicGame %
(% &
object& ,
sender- 3
,3 4
RoutedEventArgs5 D
eE F
)F G
{ 	
selectedGameMode 
= 
CheckersGameMode /
./ 0
ClassicCheckers0 ?
;? @
GameManager   
.   
EnterMatchmaking   (
(  ( )
currentPlayer  ) 6
,  6 7
selectedGameMode  8 H
)  H I
;  I J
}!! 	
private"" 
void"" 
EnterSuicideGame"" %
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
.$$/ 0
SuicidalCheckers$$0 @
;$$@ A
GameManager%% 
.%% 
EnterMatchmaking%% (
(%%( )
currentPlayer%%) 6
,%%6 7
selectedGameMode%%8 H
)%%H I
;%%I J
}&& 	
private'' 
void'' 
Return'' 
('' 
object'' "
sender''# )
,'') *
System''+ 1
.''1 2
Windows''2 9
.''9 :
RoutedEventArgs'': I
e''J K
)''K L
{(( 	
Menu)) 

actualMenu)) 
=)) 
App)) !
.))! "
Current))" )
.))) *
Windows))* 1
.))1 2
OfType))2 8
<))8 9
Menu))9 =
>))= >
())> ?
)))? @
.))@ A
FirstOrDefault))A O
())O P
)))P Q
;))Q R

actualMenu** 
.** 
EnableNavigation** '
(**' (
)**( )
;**) *
NavigationService++ 
.++ 
GoBack++ $
(++$ %
)++% &
;++& '
},, 	
}-- 
}.. Ø
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
} ﬂ$
qD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\Windows\DialogWindowManager.cs
	namespace 	
CheckersCliente
 
. 
Windows !
{		 
public

 

static

 
class

 
DialogWindowManager

 +
{ 
public 
static 
void 
ShowErrorWindow *
(* +
string+ 1
errorMessage2 >
)> ?
{ 	

MessageBox 
. 
Show 
( 
errorMessage (
,( )
$str* 1
,1 2
MessageBoxButton3 C
.C D
OKD F
,F G
MessageBoxImageH W
.W X
ErrorX ]
)] ^
;^ _
} 	
public 
static 
bool "
ShowConfirmationWindow 1
(1 2
string2 8
confirmMessage9 G
)G H
{ 	
bool 
confirmation 
= 
false  %
;% &
MessageBoxResult 

userAnswer '
=( )

MessageBox* 4
.4 5
Show5 9
(9 :
confirmMessage: H
,H I
$strJ X
,X Y
MessageBoxButton  
.  !
YesNo! &
,& '
MessageBoxImage( 7
.7 8
Question8 @
)@ A
;A B
if 
( 

userAnswer 
== 
MessageBoxResult .
.. /
Yes/ 2
)2 3
{ 
confirmation 
= 
true #
;# $
} 
return 
confirmation 
;  
} 	
public!! 
static!! 
void!! 
ShowSuccessWindow!! ,
(!!, -
string!!- 3
successMessage!!4 B
)!!B C
{"" 	

MessageBox## 
.## 
Show## 
(## 
successMessage## *
,##* +
$str##, 3
,##3 4
MessageBoxButton$$ (
.$$( )
OK$$) +
,$$+ ,
MessageBoxImage$$- <
.$$< =
Exclamation$$= H
)$$H I
;$$I J
}%% 	
public'' 
static'' 
void'' &
ShowEmptyFieldsErrorWindow'' 5
(''5 6
)''6 7
{(( 	

MessageBox)) 
.)) 
Show)) 
()) 
$str)) g
,))g h
$str))i p
,))p q
MessageBoxButton**  
.**  !
OK**! #
,**# $
MessageBoxImage**% 4
.**4 5
Error**5 :
)**: ;
;**; <
}++ 	
public-- 
static-- 
void-- &
ShowWrongFieldsErrorWindow-- 5
(--5 6
)--6 7
{.. 	

MessageBox// 
.// 
Show// 
(// 
$str// u
,//u v
$str00 
,00 
MessageBoxButton00 )
.00) *
OK00* ,
,00, -
MessageBoxImage00. =
.00= >
Error00> C
)00C D
;00D E
}11 	
public33 
static33 
void33 *
ShowNoEnoughProjectSpaceWindow33 9
(339 :
)33: ;
{44 	

MessageBox55 
.55 
Show55 
(55 
$str55 [
,55[ \
$str66 +
,66+ ,
MessageBoxButton66- =
.66= >
OK66> @
,66@ A
MessageBoxImage66B Q
.66Q R
Error66R W
)66W X
;66X Y
}77 	
public99 
static99 
void99 $
ShowEmptyListErrorWindow99 3
(993 4
)994 5
{:: 	

MessageBox;; 
.;; 
Show;; 
(;; 
$str;; I
,;;I J
$str<< 
,<< 
MessageBoxButton<< )
.<<) *
OK<<* ,
,<<, -
MessageBoxImage<<. =
.<<= >
Error<<> C
)<<C D
;<<D E
}== 	
public?? 
static?? 
void?? %
ShowConnectionErrorWindow?? 4
(??4 5
)??5 6
{@@ 	

MessageBoxAA 
.AA 
ShowAA 
(AA 
$strAA u
,AAu v
$strBB 
,BB 
MessageBoxButtonBB )
.BB) *
OKBB* ,
,BB, -
MessageBoxImageBB. =
.BB= >
ErrorBB> C
)BBC D
;BBD E
}CC 	
}EE 
}FF •'
oD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\Windows\ReportWindow.xaml.cs
	namespace 	
CheckersCliente
 
. 
Windows !
{ 
public

 

partial

 
class

 
ReportWindow

 %
:

& '
Window

( .
{ 
int !
playerReportingNumber !
;! "
int 
actualMatchNumber 
; 
private 
bool 
playerReported #
=$ %
false& +
;+ ,
public 
ReportWindow 
( 
int 
playerReporting  /
,/ 0
int0 3
matchNumber4 ?
)? @
{ 	
InitializeComponent 
(  
)  !
;! "!
playerReportingNumber !
=" #
playerReporting$ 3
;3 4
actualMatchNumber 
= 
matchNumber  +
;+ ,
} 	
private 
void 
ReportPlayer !
(! "
object" (
sender) /
,/ 0
RoutedEventArgs1 @
eA B
)B C
{ 	
GameManager 
. 
ReportPlayer $
($ %!
playerReportingNumber% :
,: ;
actualMatchNumber; L
,L M

reportTextN X
.X Y
TextY ]
)] ^
;^ _
} 	
private 
void 
CloseWindow  
(  !
object! '
sender( .
,. /
RoutedEventArgs0 ?
e@ A
)A B
{ 	
this 
. 
Close 
( 
) 
; 
}   	
private## 
void## 
EnableReportButton## '
(##' (
object##( .
sender##/ 5
,##5 6
RoutedEventArgs##7 F
e##G H
)##H I
{$$ 	
if%% 
(%% 
!%% 
string%% 
.%% 
IsNullOrWhiteSpace%% *
(%%* +

reportText%%+ 5
.%%5 6
Text%%6 :
)%%: ;
&&%%< >

reportText%%? I
.%%I J
Text%%J N
.%%N O
Length%%O U
>%%V W
$num%%X Z
)%%Z [
{&& 
reportButton'' 
.'' 
	IsEnabled'' &
=''' (
true'') -
;''- .
}(( 
})) 	
public++ 
void++ 
ReportedPlayer++ "
(++" #
)++# $
{,, 	
playerReported-- 
=-- 
true-- !
;--! "
this.. 
... 
Close.. 
(.. 
).. 
;.. 
}// 	
private11 
void11 
WindowClose11  
(11  !
object11! '
sender11( .
,11. /
System110 6
.116 7
ComponentModel117 E
.11E F
CancelEventArgs11F U
e11V W
)11W X
{22 	
if33 
(33 
playerReported33 
)33 
{44 
e55 
.55 
Cancel55 
=55 
false55  
;55  !
Game66 

gameWindow66 
=66  !
App66" %
.66% &
Current66& -
.66- .
Windows66. 5
.665 6
OfType666 <
<66< =
Game66= A
>66A B
(66B C
)66C D
.66D E
FirstOrDefault66E S
(66S T
)66T U
;66U V

gameWindow77 
.77 
CloseReportWindow77 ,
(77, -
)77- .
;77. /
}88 
else99 
{:: 
bool;; 
close;; 
=;; 
DialogWindowManager;; 0
.;;0 1"
ShowConfirmationWindow;;1 G
(;;G H

Properties;;H R
.;;R S
	Resources;;S \
.;;\ ]
CancelQuestion;;] k
);;k l
;;;l m
if<< 
(<< 
close<< 
)<< 
{== 
e>> 
.>> 
Cancel>> 
=>> 
false>> $
;>>$ %
Game?? 

gameWindow?? #
=??$ %
App??& )
.??) *
Current??* 1
.??1 2
Windows??2 9
.??9 :
OfType??: @
<??@ A
Game??A E
>??E F
(??F G
)??G H
.??H I
FirstOrDefault??I W
(??W X
)??X Y
;??Y Z

gameWindow@@ 
.@@ 
ReportWindowOpen@@ /
=@@0 1
false@@2 7
;@@7 8
}AA 
elseBB 
{CC 
eDD 
.DD 
CancelDD 
=DD 
trueDD #
;DD# $
}EE 
}FF 
}HH 	
}II 
}JJ ø
^D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\App.xaml.cs
	namespace 	
CheckersCliente
 
{ 
public 

partial 
class 
App 
: 
Application *
{		 
}

 
} ûò
|D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\CallbackHandlers\PlayerCallbackHandler.cs
	namespace 	
CheckersCliente
 
{ 
[ 
CallbackBehavior 
( 
ConcurrencyMode %
=& '
ConcurrencyMode( 7
.7 8
	Reentrant8 A
)A B
]B C
public 

class !
PlayerCallbackHandler &
:' ("
IPlayerManagerCallback) ?
{ 
public 
void 
GetAdminLoginResult '
(' (
LoginResult( 3
resultadoLogin4 B
,B C
JugadorD K
playerLogedL W
)W X
{ 	
if 
( 
resultadoLogin 
== !
LoginResult" -
.- .
EsAdmin. 5
)5 6
{ 
	AdminPage 
	adminPage #
=$ %
new& )
	AdminPage* 3
(3 4
playerLoged4 ?
)? @
;@ A
	adminPage 
. 
Show 
( 
)  
;  !
LogIn 
logIn 
= 
App !
.! "
Current" )
.) *
Windows* 1
.1 2
OfType2 8
<8 9
LogIn9 >
>> ?
(? @
)@ A
.A B
FirstOrDefaultB P
(P Q
)Q R
;R S
logIn 
. 
Close 
( 
) 
; 
}   
else!! 
{"" 
if## 
(## 
resultadoLogin## "
==### %
LoginResult##& 1
.##1 2
PasswordIncorrecto##2 D
)##D E
{$$ 
DialogWindowManager%% '
.%%' (
ShowErrorWindow%%( 7
(%%7 8
	Resources%%8 A
.%%A B$
IncorrectPasswordMessage%%B Z
)%%Z [
;%%[ \
}&& 
else'' 
{(( 
DialogWindowManager)) '
.))' (
ShowErrorWindow))( 7
())7 8
	Resources))8 A
.))A B
LoggedPlayer))B N
)))N O
;))O P
}** 
}++ 
}-- 	
public44 
void44  
GetPlayerLoginResult44 (
(44( )
LoginResult44) 4
resultadoLogin445 C
,44C D
Jugador44E L
playerLoged44M X
)44X Y
{55 	
if66 
(66 
resultadoLogin66 
==66 !
LoginResult66" -
.66- .#
ExisteJugadorVerificado66. E
)66E F
{77 
Menu88 
menu88 
=88 
new88 
Menu88  $
(88$ %
playerLoged88% 0
)880 1
;881 2
menu99 
.99 
Show99 
(99 
)99 
;99 
LogIn:: 
logIn:: 
=:: 
App:: !
.::! "
Current::" )
.::) *
Windows::* 1
.::1 2
OfType::2 8
<::8 9
LogIn::9 >
>::> ?
(::? @
)::@ A
.::A B
FirstOrDefault::B P
(::P Q
)::Q R
;::R S
logIn;; 
.;; 
Close;; 
(;; 
);; 
;;; 
}<< 
else== 
{>> 
if?? 
(?? 
resultadoLogin?? "
==??# %
LoginResult??& 1
.??1 2%
ExisteJugadorNoVerificado??2 K
)??K L
{@@ 
DialogWindowManagerAA '
.AA' (
ShowErrorWindowAA( 7
(AA7 8
	ResourcesAA8 A
.AAA B
NotVerifiedMessageAAB T
)AAT U
;AAU V
LogInBB 
loginBB 
=BB  !
AppBB" %
.BB% &
CurrentBB& -
.BB- .
WindowsBB. 5
.BB5 6
OfTypeBB6 <
<BB< =
LogInBB= B
>BBB C
(BBC D
)BBD E
.BBE F
FirstOrDefaultBBF T
(BBT U
)BBU V
;BBV W
loginCC 
.CC 
NavigationServiceCC +
.CC+ ,
NavigateCC, 4
(CC4 5
newCC5 8
FinalizeRegisterCC9 I
(CCI J
playerLogedCCJ U
)CCU V
)CCV W
;CCW X
}DD 
elseEE 
{FF 
LoginBanCheckGG !
(GG! "
resultadoLoginGG" 0
)GG0 1
;GG1 2
}HH 
}II 
}JJ 	
privateLL 
voidLL 
LoginBanCheckLL "
(LL" #
LoginResultLL# .
resultadoLoginLL/ =
)LL= >
{MM 	
ifNN 
(NN 
resultadoLoginNN 
==NN !
LoginResultNN" -
.NN- .
	EsBaneadoNN. 7
)NN7 8
{OO 
DialogWindowManagerPP #
.PP# $
ShowErrorWindowPP$ 3
(PP3 4
	ResourcesPP4 =
.PP= >
BannedLoginMessagePP> P
)PPP Q
;PPQ R
}QQ 
elseRR 
{SS 
ifTT 
(TT 
resultadoLoginTT "
==TT# %
LoginResultTT& 1
.TT1 2
NoExisteJugadorTT2 A
)TTA B
{UU 
DialogWindowManagerVV '
.VV' (
ShowErrorWindowVV( 7
(VV7 8
	ResourcesVV8 A
.VVA B$
DoesNotExistLoginMessageVVB Z
)VVZ [
;VV[ \
}WW 
elseXX 
{YY 
ifZZ 
(ZZ 
resultadoLoginZZ &
==ZZ' )
LoginResultZZ* 5
.ZZ5 6
LOGGED_PLAYERZZ6 C
)ZZC D
{[[ 
DialogWindowManager\\ +
.\\+ ,
ShowErrorWindow\\, ;
(\\; <
	Resources\\< E
.\\E F
LoggedPlayer\\F R
)\\R S
;\\S T
}]] 
else^^ 
{__ 
DialogWindowManager`` +
.``+ ,
ShowErrorWindow``, ;
(``; <
	Resources``< E
.``E F$
IncorrectPasswordMessage``F ^
)``^ _
;``_ `
}aa 
}bb 
}cc 
}dd 	
publickk 
voidkk 
GetSaveResultkk !
(kk! "

SaveResultkk" ,

saveResultkk- 7
,kk7 8
Jugadorkk9 @
	newPlayerkkA J
)kkJ K
{ll 	
ifmm 
(mm 

saveResultmm 
==mm 

SaveResultmm '
.mm' (
JugadorGuardadomm( 7
)mm7 8
{nn 
DialogWindowManageroo #
.oo# $
ShowSuccessWindowoo$ 5
(oo5 6
	Resourcesoo6 ?
.oo? @%
SuccessfulRegisterMessageoo@ Y
)ooY Z
;ooZ [
LogInpp 
loginpp 
=pp 
Apppp !
.pp! "
Currentpp" )
.pp) *
Windowspp* 1
.pp1 2
OfTypepp2 8
<pp8 9
LogInpp9 >
>pp> ?
(pp? @
)pp@ A
.ppA B
FirstOrDefaultppB P
(ppP Q
)ppQ R
;ppR S
loginqq 
.qq 
NavigationServiceqq '
.qq' (
Navigateqq( 0
(qq0 1
newqq1 4
FinalizeRegisterqq5 E
(qqE F
	newPlayerqqF O
)qqO P
)qqP Q
;qqQ R
}rr 
elsess 
{tt 
ifuu 
(uu 

saveResultuu 
==uu !

SaveResultuu" ,
.uu, -
NicknameExistenteuu- >
)uu> ?
{vv 
DialogWindowManagerww '
.ww' (
ShowErrorWindowww( 7
(ww7 8
	Resourcesww8 A
.wwA B$
DuplicateNicknameMessagewwB Z
)wwZ [
;ww[ \
}xx 
elseyy 
{zz 
if{{ 
({{ 

saveResult{{ "
=={{# %

SaveResult{{& 0
.{{0 1
CorreoExistente{{1 @
){{@ A
{|| 
DialogWindowManager}} +
.}}+ ,
ShowErrorWindow}}, ;
(}}; <
	Resources}}< E
.}}E F!
DuplicateEmailMessage}}F [
)}}[ \
;}}\ ]
}~~ 
else 
{
ÄÄ !
DialogWindowManager
ÅÅ +
.
ÅÅ+ ,
ShowErrorWindow
ÅÅ, ;
(
ÅÅ; <
	Resources
ÅÅ< E
.
ÅÅE F%
UnexplainedErrorMessage
ÅÅF ]
)
ÅÅ] ^
;
ÅÅ^ _
}
ÇÇ 
}
ÉÉ 
}
ÑÑ 
}
ÖÖ 	
public
áá 
void
áá 
GetVerifyResult
áá #
(
áá# $ 
VerificationResult
áá$ 6#
resultadoVerificacion
áá7 L
)
ááL M
{
àà 	
if
ââ 
(
ââ #
resultadoVerificacion
ââ $
==
ââ% ' 
VerificationResult
ââ( :
.
ââ: ;"
VerificacionExistosa
ââ; O
)
ââO P
{
ää !
DialogWindowManager
ãã #
.
ãã# $
ShowSuccessWindow
ãã$ 5
(
ãã5 6
	Resources
ãã6 ?
.
ãã? @+
SuccessfulVerificationMessage
ãã@ ]
)
ãã] ^
;
ãã^ _
LogIn
åå 
logIn
åå 
=
åå 
App
åå !
.
åå! "
Current
åå" )
.
åå) *
Windows
åå* 1
.
åå1 2
OfType
åå2 8
<
åå8 9
LogIn
åå9 >
>
åå> ?
(
åå? @
)
åå@ A
.
ååA B
FirstOrDefault
ååB P
(
ååP Q
)
ååQ R
;
ååR S
logIn
çç 
.
çç 
NavigationService
çç '
.
çç' (
Navigate
çç( 0
(
çç0 1
new
çç1 4
	LogInPage
çç5 >
(
çç> ?
)
çç? @
)
çç@ A
;
ççA B
}
éé 
else
èè 
if
èè 
(
èè #
resultadoVerificacion
èè *
==
èè+ - 
VerificationResult
èè. @
.
èè@ A
NoExisteJugador
èèA P
)
èèP Q
{
êê !
DialogWindowManager
ëë #
.
ëë# $
ShowErrorWindow
ëë$ 3
(
ëë3 4
	Resources
ëë4 =
.
ëë= >&
DoesNotExistLoginMessage
ëë> V
)
ëëV W
;
ëëW X
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
ïï3 4
	Resources
ïï4 =
.
ïï= >
WrongPINMessage
ïï> M
)
ïïM N
;
ïïN O
}
ññ 
}
óó 	
public
ôô 
void
ôô !
GetResendMailResult
ôô '
(
ôô' (

MailResult
ôô( 2
emailResult
ôô3 >
,
ôô> ?
string
ôô@ F
playerNickname
ôôG U
)
ôôU V
{
öö 	
if
õõ 
(
õõ 
emailResult
õõ 
==
õõ 

MailResult
õõ )
.
õõ) *
MailSend
õõ* 2
)
õõ2 3
{
úú !
DialogWindowManager
ùù #
.
ùù# $
ShowSuccessWindow
ùù$ 5
(
ùù5 6
	Resources
ùù6 ?
.
ùù? @
EmailSentMessage
ùù@ P
)
ùùP Q
;
ùùQ R
}
ûû 
else
üü 
{
†† 
if
°° 
(
°° 
emailResult
°° 
==
°°  "

MailResult
°°# -
.
°°- .
UnknownPlayer
°°. ;
)
°°; <
{
¢¢ !
DialogWindowManager
££ '
.
££' (
ShowErrorWindow
££( 7
(
££7 8
	Resources
££8 A
.
££A B&
DoesNotExistLoginMessage
££B Z
)
££Z [
;
££[ \
}
§§ 
else
•• 
{
¶¶ !
DialogWindowManager
ßß '
.
ßß' (
ShowErrorWindow
ßß( 7
(
ßß7 8
	Resources
ßß8 A
.
ßßA B!
EmailNotSentMessage
ßßB U
)
ßßU V
;
ßßV W
}
®® 
}
™™ 
}
´´ 	
public
≠≠ 
void
≠≠ 
GetMailResult
≠≠ !
(
≠≠! "

MailResult
≠≠" ,
emailResult
≠≠- 8
,
≠≠8 9
string
≠≠: @
playerNickname
≠≠A O
,
≠≠O P
string
≠≠Q W
securityQuestion
≠≠X h
)
≠≠h i
{
ÆÆ 	
if
ØØ 
(
ØØ 
emailResult
ØØ 
==
ØØ 

MailResult
ØØ (
.
ØØ( )
MailSend
ØØ) 1
)
ØØ1 2
{
∞∞ !
DialogWindowManager
±± #
.
±±# $
ShowSuccessWindow
±±$ 5
(
±±5 6
	Resources
±±6 ?
.
±±? @
EmailSentMessage
±±@ P
)
±±P Q
;
±±Q R
LogIn
≤≤ 
login
≤≤ 
=
≤≤ 
App
≤≤ !
.
≤≤! "
Current
≤≤" )
.
≤≤) *
Windows
≤≤* 1
.
≤≤1 2
OfType
≤≤2 8
<
≤≤8 9
LogIn
≤≤9 >
>
≤≤> ?
(
≤≤? @
)
≤≤@ A
.
≤≤A B
FirstOrDefault
≤≤B P
(
≤≤P Q
)
≤≤Q R
;
≤≤R S
login
≥≥ 
.
≥≥ 
EnableNavigation
≥≥ &
(
≥≥& '
)
≥≥' (
;
≥≥( )
login
¥¥ 
.
¥¥ 
NavigationService
¥¥ '
.
¥¥' (
Navigate
¥¥( 0
(
¥¥0 1
new
¥¥1 4#
VerificatePasswordPin
¥¥5 J
(
¥¥J K
playerNickname
¥¥K Y
,
¥¥Y Z
securityQuestion
¥¥Z j
)
¥¥j k
)
¥¥k l
;
¥¥l m
}
µµ 
else
∂∂ 
{
∑∑ 
if
∏∏ 
(
∏∏ 
emailResult
∏∏ 
==
∏∏  "

MailResult
∏∏# -
.
∏∏- .
UnknownPlayer
∏∏. ;
)
∏∏; <
{
ππ !
DialogWindowManager
∫∫ '
.
∫∫' (
ShowErrorWindow
∫∫( 7
(
∫∫7 8
	Resources
∫∫8 A
.
∫∫A B&
DoesNotExistLoginMessage
∫∫B Z
)
∫∫Z [
;
∫∫[ \
}
ªª 
else
ºº 
{
ΩΩ !
DialogWindowManager
ææ '
.
ææ' (
ShowErrorWindow
ææ( 7
(
ææ7 8
	Resources
ææ8 A
.
ææA B!
EmailNotSentMessage
ææB U
)
ææU V
;
ææV W
}
øø 
}
¿¿ 
}
¡¡ 	
public
√√ 
void
√√ 
GetPinResult
√√  
(
√√  !
	PinResult
√√! *
	pinResult
√√+ 4
,
√√4 5
string
√√6 <
playerNickname
√√= K
)
√√K L
{
ƒƒ 	
if
≈≈ 
(
≈≈ 
	pinResult
≈≈ 
==
≈≈ 
	PinResult
≈≈ %
.
≈≈% &
VerifiedPin
≈≈& 1
)
≈≈1 2
{
∆∆ 
LogIn
«« 
login
«« 
=
«« 
App
«« !
.
««! "
Current
««" )
.
««) *
Windows
««* 1
.
««1 2
OfType
««2 8
<
««8 9
LogIn
««9 >
>
««> ?
(
««? @
)
««@ A
.
««A B
FirstOrDefault
««B P
(
««P Q
)
««Q R
;
««R S
login
»» 
.
»» 
EnableNavigation
»» &
(
»»& '
)
»»' (
;
»»( )
login
…… 
.
…… 
NavigationService
…… '
.
……' (
Navigate
……( 0
(
……0 1
new
……1 4
ChangePassword
……5 C
(
……C D
playerNickname
……D R
)
……R S
)
……S T
;
……T U
}
   
else
ÀÀ 
{
ÃÃ 
if
ÕÕ 
(
ÕÕ 
	pinResult
ÕÕ 
==
ÕÕ  
	PinResult
ÕÕ! *
.
ÕÕ* +
WrongAnswer
ÕÕ+ 6
)
ÕÕ6 7
{
ŒŒ !
DialogWindowManager
œœ '
.
œœ' (
ShowErrorWindow
œœ( 7
(
œœ7 8
	Resources
œœ8 A
.
œœA B 
WrongAnswerMessage
œœB T
)
œœT U
;
œœU V
}
–– 
else
—— 
{
““ !
DialogWindowManager
”” '
.
””' (
ShowErrorWindow
””( 7
(
””7 8
	Resources
””8 A
.
””A B
WrongPINMessage
””B Q
)
””Q R
;
””R S
}
‘‘ 
}
’’ 
}
÷÷ 	
public
ÿÿ 
void
ÿÿ %
GetPasswordChangeResult
ÿÿ +
(
ÿÿ+ ,"
PasswordChangeResult
ÿÿ, @"
passwordChangeResult
ÿÿA U
)
ÿÿU V
{
ŸŸ 	
if
⁄⁄ 
(
⁄⁄ "
passwordChangeResult
⁄⁄ $
==
⁄⁄% '"
PasswordChangeResult
⁄⁄( <
.
⁄⁄< =
ChangedPassword
⁄⁄= L
)
⁄⁄L M
{
€€ !
DialogWindowManager
‹‹ #
.
‹‹# $
ShowSuccessWindow
‹‹$ 5
(
‹‹5 6
	Resources
‹‹6 ?
.
‹‹? @-
SuccessfulPasswordChangeMessage
‹‹@ _
)
‹‹_ `
;
‹‹` a
LogIn
›› 
login
›› 
=
›› 
App
›› !
.
››! "
Current
››" )
.
››) *
Windows
››* 1
.
››1 2
OfType
››2 8
<
››8 9
LogIn
››9 >
>
››> ?
(
››? @
)
››@ A
.
››A B
FirstOrDefault
››B P
(
››P Q
)
››Q R
;
››R S
login
ﬁﬁ 
.
ﬁﬁ 
NavigationService
ﬁﬁ '
.
ﬁﬁ' (
Navigate
ﬁﬁ( 0
(
ﬁﬁ0 1
new
ﬁﬁ1 4
	LogInPage
ﬁﬁ5 >
(
ﬁﬁ> ?
)
ﬁﬁ? @
)
ﬁﬁ@ A
;
ﬁﬁA B
}
‡‡ 
else
·· 
{
‚‚ !
DialogWindowManager
„„ #
.
„„# $
ShowErrorWindow
„„$ 3
(
„„3 4
	Resources
„„4 =
.
„„= >(
PasswordChangeErrorMessage
„„> X
)
„„X Y
;
„„Y Z
}
‰‰ 
}
ÊÊ 	
public
ËË 
void
ËË 
SendActualPlayer
ËË $
(
ËË$ % 
DataObtainedResult
ËË% 7 
dataObtainedResult
ËË8 J
,
ËËJ K
Jugador
ËËL S
actualPlayer
ËËT `
)
ËË` a
{
ÈÈ 	
if
ÍÍ 
(
ÍÍ  
dataObtainedResult
ÍÍ "
==
ÍÍ# % 
DataObtainedResult
ÍÍ& 8
.
ÍÍ8 9
DataObtained
ÍÍ9 E
)
ÍÍE F
{
ÎÎ 
Menu
ÏÏ 
menu
ÏÏ 
=
ÏÏ 
App
ÏÏ 
.
ÏÏ  
Current
ÏÏ  '
.
ÏÏ' (
Windows
ÏÏ( /
.
ÏÏ/ 0
OfType
ÏÏ0 6
<
ÏÏ6 7
Menu
ÏÏ7 ;
>
ÏÏ; <
(
ÏÏ< =
)
ÏÏ= >
.
ÏÏ> ?
FirstOrDefault
ÏÏ? M
(
ÏÏM N
)
ÏÏN O
;
ÏÏO P
menu
ÌÌ 
.
ÌÌ 
EnableNavigation
ÌÌ %
(
ÌÌ% &
)
ÌÌ& '
;
ÌÌ' (
menu
ÓÓ 
.
ÓÓ 
NavigationService
ÓÓ &
.
ÓÓ& '
Navigate
ÓÓ' /
(
ÓÓ/ 0
new
ÓÓ0 3
UserConfiguration
ÓÓ4 E
(
ÓÓE F
actualPlayer
ÓÓF R
)
ÓÓR S
)
ÓÓS T
;
ÓÓT U
}
ÔÔ 
else
 
{
ÒÒ !
DialogWindowManager
ÚÚ #
.
ÚÚ# $
ShowErrorWindow
ÚÚ$ 3
(
ÚÚ3 4
	Resources
ÚÚ4 =
.
ÚÚ= >!
NoConnectionMessage
ÚÚ> Q
)
ÚÚQ R
;
ÚÚR S
}
ÛÛ 
}
ÙÙ 	
}
˜˜ 
}¯¯ ´M
ÅD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\CallbackHandlers\GameManagerCallbackHandler.cs
	namespace 	
CheckersCliente
 
. 
CallbackHandlers *
{ 
public 

class &
GameManagerCallbackHandler +
:, - 
IGameManagerCallback. B
{ 
public 
void  
GetMatchmakingResult (
(( )
MatchmakingResult) :
result; A
,A B
MatchC H
matchI N
,N O
intP S
playerNumberT `
)` a
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
(* +
match+ 0
,0 1
playerNumber2 >
)> ?
;? @

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
. 
ChangeLanguage #
(# $
)$ %
;% &
menu 
. 
Close 
( 
) 
; 
} 
else 
{ 
if 
( 
result 
== 
MatchmakingResult /
./ 0
MATCH_NOT_FOUND0 ?
)? @
{ 
Menu 
menu 
= 
App  #
.# $
Current$ +
.+ ,
Windows, 3
.3 4
OfType4 :
<: ;
Menu; ?
>? @
(@ A
)A B
.B C
FirstOrDefaultC Q
(Q R
)R S
;S T
menu 
. 
EnableNavigation )
() *
)* +
;+ ,
menu   
.   
NavigationService   *
.  * +
Navigate  + 3
(  3 4
new  4 7
GameStandBy  8 C
(  C D
)  D E
)  E F
;  F G
}!! 
else"" 
{## 

MessageBox$$ 
.$$ 
Show$$ #
($$# $
	Resources$$$ -
.$$- .$
NoMatchFoundErrorMessage$$. F
)$$F G
;$$G H
}%% 
}&& 
}'' 	
public)) 
void)) 
UpdateGameGUI)) !
())! "
Checker))" )
[))) *
]))* +
[))+ ,
])), -
updateBoardMatrix)). ?
,))? @
int))A D
playerTwoCheckers))E V
,))V W
int))X [
playerOneCheckers))\ m
)))m n
{** 	
Game++ 
game++ 
=++ 
App++ 
.++ 
Current++ #
.++# $
Windows++$ +
.+++ ,
OfType++, 2
<++2 3
Game++3 7
>++7 8
(++8 9
)++9 :
.++: ;
FirstOrDefault++; I
(++I J
)++J K
;++K L
Checker,, 
[,, 
,,, 
],, 
newChekcersPosition,, *
=,,+ ,
new,,- 0
Checker,,1 8
[,,8 9
$num,,9 :
,,,: ;
$num,,; <
],,< =
;,,= >
int.. 
	rowNumber.. 
;.. 
int// 
columnNumber// 
;// 
for11 
(11 
	rowNumber11 
=11 
$num11 
;11 
	rowNumber11  )
<11) *
$num11* +
;11+ ,
	rowNumber11, 5
++115 7
)117 8
{22 
for33 
(33 
columnNumber33 !
=33" #
$num33$ %
;33% &
columnNumber33' 3
<333 4
$num334 5
;335 6
columnNumber337 C
++33C E
)33E F
{44 
newChekcersPosition55 '
[55' (
	rowNumber55( 1
,551 2
columnNumber553 ?
]55? @
=55A B
updateBoardMatrix55C T
[55T U
	rowNumber55U ^
]55^ _
[55_ `
columnNumber55` l
]55l m
;55m n
}66 
}77 
game88 
.88 %
UpdateCheckersGuiPosition88 *
(88* +
newChekcersPosition88+ >
)88> ?
;88? @
game99 
.99 
UpdateCheckersCount99 $
(99$ %
playerTwoCheckers99% 6
,996 7
playerOneCheckers997 H
)99H I
;99I J
game:: 
.:: 
EndSecondPlayerTurn:: $
(::$ %
)::% &
;::& '
};; 	
public== 
void== 
UpdateMatchNumber== %
(==% &
int==& )
newMatchNumber==* 8
)==8 9
{>> 	
Game?? 
game?? 
=?? 
App?? 
.?? 
Current?? #
.??# $
Windows??$ +
.??+ ,
OfType??, 2
<??2 3
Game??3 7
>??7 8
(??8 9
)??9 :
.??: ;
FirstOrDefault??; I
(??I J
)??J K
;??K L
game@@ 
.@@ 
UpdateMatchNumber@@ "
(@@" #
newMatchNumber@@# 1
)@@1 2
;@@2 3
}AA 	
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
}GG 	
publicII 
voidII 
RecieveGameMessageII &
(II& '
stringII' -
messageII. 5
,II5 6
intII7 :
playerNumberII; G
)IIG H
{JJ 	
GameKK 
gameKK 
=KK 
AppKK 
.KK 
CurrentKK #
.KK# $
WindowsKK$ +
.KK+ ,
OfTypeKK, 2
<KK2 3
GameKK3 7
>KK7 8
(KK8 9
)KK9 :
.KK: ;
FirstOrDefaultKK; I
(KKI J
)KKJ K
;KKK L
stringLL 
playerNumberTextLL #
;LL# $
ifNN 
(NN 
playerNumberNN 
==NN 
$numNN  !
)NN! "
{OO 
playerNumberTextPP  
=PP! "
	ResourcesPP# ,
.PP, -
Player1PP- 4
+PP5 6
$strPP7 :
;PP: ;
}QQ 
elseRR 
{SS 
playerNumberTextTT  
=TT! "
	ResourcesTT# ,
.TT, -
Player2TT- 4
+TT5 6
$strTT7 :
;TT: ;
}UU 
gameWW 
.WW 
RecieveMessageWW 
(WW  
messageWW  '
,WW' (
playerNumberTextWW( 8
)WW8 9
;WW9 :
}YY 	
public[[ 
void[[ 
ReportResult[[  
([[  !
ReportSaveResult[[! 1
reportSaveResult[[2 B
)[[B C
{\\ 	
if]] 
(]] 
reportSaveResult]] 
==]]  "
ReportSaveResult]]# 3
.]]3 4
SAVED_REPORT]]4 @
)]]@ A
{^^ 
Windows__ 
.__ 
DialogWindowManager__ +
.__+ ,
ShowSuccessWindow__, =
(__= >
	Resources__> G
.__G H
ReportSuccess__H U
)__U V
;__V W
Windows`` 
.`` 
ReportWindow`` $
reportWindow``% 1
=``2 3
App``4 7
.``7 8
Current``8 ?
.``? @
Windows``@ G
.``G H
OfType``H N
<``N O
Windows``O V
.``V W
ReportWindow``W c
>``c d
(``d e
)``e f
.``f g
FirstOrDefault``g u
(``u v
)``v w
;``w x
reportWindowaa 
.aa 
ReportedPlayeraa +
(aa+ ,
)aa, -
;aa- .
}bb 
elsecc 
{dd 
Windowsee 
.ee 
DialogWindowManageree +
.ee+ ,
ShowErrorWindowee, ;
(ee; <
	Resourcesee< E
.eeE F
NoConnectionMessageeeF Y
)eeY Z
;eeZ [
}ff 
}gg 	
publicii 
voidii 
EndAbandonedGameii $
(ii$ %
)ii% &
{jj 	
Gamekk 
gamekk 
=kk 
Appkk 
.kk 
Currentkk #
.kk# $
Windowskk$ +
.kk+ ,
OfTypekk, 2
<kk2 3
Gamekk3 7
>kk7 8
(kk8 9
)kk9 :
.kk: ;
FirstOrDefaultkk; I
(kkI J
)kkJ K
;kkK L
gamell 
.ll 
AbandonedGamell 
(ll 
)ll  
;ll  !
}mm 	
}nn 
}pp ã
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
(  
	Resources  )
.) *
LoadMessage* 5
)5 6
;6 7
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
(  
	Resources  )
.) *
NoInfoMessage* 7
)7 8
;8 9
} 
else 
{ 

MessageBox 
. 
Show 
(  
	Resources  )
.) *
NoConnectionMessage* =
)= >
;> ?
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
}'' Èó
_D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\Game.xaml.cs
	namespace 	
CheckersCliente
 
{ 
public 

partial 
class 
Game 
: 
Window  &
{ 
private 
Jugador 
localPlayer #
;# $ 
ObservableCollection 
< 
string #
># $
messagesList% 1
=2 3
new4 7 
ObservableCollection8 L
<L M
stringM S
>S T
(T U
)U V
;V W
private 
List 
< 
Button 
> 

buttonList '
;' (
private 
Button 
previousButton %
;% &
private 
Checker 
[ 
, 
] 
boardMatrix &
;& '
private 
bool 
player1Turn  
=! "
true# '
;' (
private 
bool "
checkPlayerSecondClick +
;+ ,
private 
int 
localPlayerNumber %
;% &
private 
int 
	rowNumber 
; 
private 
int 
columnNumber  
;  !
private 
int 
previousRow 
;  
private   
int   
previousColumn   "
;  " #
private!! 
int!! 
player1CheckerCount!! '
;!!' (
private"" 
int"" 
player2CheckerCount"" '
;""' (
private## 
Brush## 
player1Color## "
;##" #
private$$ 
Brush$$ 
player2Color$$ "
;$$" #
private%% 
Match%% 
actualMatch%% !
;%%! "
private&& 
bool&& 
matchEnd&& 
=&& 
false&&  %
;&&% &
public(( 
bool(( 
ReportWindowOpen(( $
{((% &
get((' *
;((* +
set((, /
;((/ 0
}((1 2
=((3 4
false((5 :
;((: ;
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
;22, -
messages33 
.33 
ItemsSource33  
=33! "
messagesList33# /
;33/ 0
player1Checker44 
.44 

Foreground44 %
=44& '
player1Color44( 4
;444 5
player2Checker55 
.55 

Foreground55 %
=55& '
player2Color55( 4
;554 5
currentPlayer66 
.66 
Text66 
=66  
$str66! 0
;660 1
GenerateGame88 
(88 
)88 
;88 
if99 
(99 
playerNumber99 
==99 
$num99  !
)99! "
{:: 
Board<< 
.<< 
	IsEnabled<< 
=<<  !
false<<" '
;<<' (

passButton== 
.== 
	IsEnabled== $
===% &
false==' ,
;==, -
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
}EE 	
privateGG 
voidGG 
RegresarAMenuGG "
(GG" #
objectGG# )
senderGG* 0
,GG0 1
RoutedEventArgsGG2 A
eGGB C
)GGC D
{HH 	
GameManagerII 
.II 
LeaveMatchmakingII (
(II( )
actualMatchII) 4
.II4 5
matchActiveNumberII5 F
,IIF G
localPlayerNumberIIH Y
)IIY Z
;IIZ [
matchEndJJ 
=JJ 
trueJJ 
;JJ 
ifKK 
(KK 
localPlayerNumberKK !
==KK" $
$numKK% &
)KK& '
{LL 
MenuMM 
menuMM 
=MM 
newMM 
MenuMM  $
(MM$ %
actualMatchMM% 0
.MM0 1
playerOneDataMM1 >
)MM> ?
;MM? @
menuNN 
.NN 
ShowNN 
(NN 
)NN 
;NN 
}OO 
elsePP 
{QQ 
MenuRR 
menuRR 
=RR 
newRR 
MenuRR  $
(RR$ %
actualMatchRR% 0
.RR0 1
playerTwoDataRR1 >
)RR> ?
;RR? @
menuSS 
.SS 
ShowSS 
(SS 
)SS 
;SS 
}TT 
thisVV 
.VV 
CloseVV 
(VV 
)VV 
;VV 
}WW 	
privateYY 
voidYY 
EndTurnNoMovementYY &
(YY& '
objectYY' -
senderYY. 4
,YY4 5
RoutedEventArgsYY6 E
eYYF G
)YYG H
{ZZ 	
this[[ 
.[[ 
EndTurn[[ 
([[ 
)[[ 
;[[ 
}\\ 	
private^^ 
void^^ 
Movement^^ 
(^^ 
object^^ $
sender^^% +
,^^+ ,
RoutedEventArgs^^- <
e^^= >
)^^> ?
{__ 	
var`` 
button`` 
=`` 
(`` 
Button``  
)``  !
sender``! '
;``' (
columnNumberbb 
=bb 
Gridbb 
.bb  
	GetColumnbb  )
(bb) *
buttonbb* 0
)bb0 1
;bb1 2
	rowNumbercc 
=cc 
Gridcc 
.cc 
GetRowcc #
(cc# $
buttoncc$ *
)cc* +
;cc+ ,
ifee 
(ee 
player1Turnee 
)ee 
{ff 
ifgg 
(gg "
checkPlayerSecondClickgg *
)gg* +
{hh 
previousRowii 
=ii  !
Gridii" &
.ii& '
GetRowii' -
(ii- .
previousButtonii. <
)ii< =
;ii= >
previousColumnjj "
=jj# $
Gridjj% )
.jj) *
	GetColumnjj* 3
(jj3 4
previousButtonjj4 B
)jjB C
;jjC D
FirstMovementCheckll &
(ll& '
buttonll' -
)ll- .
;ll. /
}mm 
elsenn 
{oo 
ifpp 
(pp 
boardMatrixpp #
[pp# $
	rowNumberpp$ -
,pp- .
columnNumberpp/ ;
]pp; <
==pp= ?
Checkerpp@ G
.ppG H
player1CheckerppH V
||ppW Y
boardMatrixppZ e
[ppe f
	rowNumberppf o
,ppo p
columnNumberppq }
]pp} ~
==	pp Å
Checker
ppÇ â
.
ppâ ä
player1King
ppä ï
)
ppï ñ
{qq 
previousButtonrr &
=rr' (
buttonrr) /
;rr/ 0
RemarkClickedButtonss +
(ss+ ,
buttonss, 2
)ss2 3
;ss3 4"
checkPlayerSecondClicktt .
=tt/ 0
truett1 5
;tt5 6
}uu 
}vv 
}ww 
elsexx 
{yy 
playerTwoMovementzz !
(zz! "
senderzz" (
,zz( )
ezz* +
)zz+ ,
;zz, -
}{{ 
}|| 	
private~~ 
void~~ 
FirstMovementCheck~~ '
(~~' (
Button~~( .
button~~/ 5
)~~5 6
{ 	
if
ÄÄ 
(
ÄÄ 
boardMatrix
ÄÄ 
[
ÄÄ 
previousRow
ÄÄ '
,
ÄÄ' (
previousColumn
ÄÄ) 7
]
ÄÄ7 8
==
ÄÄ9 ;
Checker
ÄÄ< C
.
ÄÄC D
player1Checker
ÄÄD R
)
ÄÄR S
{
ÅÅ 
if
ÇÇ 
(
ÇÇ 
boardMatrix
ÇÇ 
[
ÇÇ  
	rowNumber
ÇÇ  )
,
ÇÇ) *
columnNumber
ÇÇ+ 7
]
ÇÇ7 8
==
ÇÇ9 ;
Checker
ÇÇ< C
.
ÇÇC D
	freeSpace
ÇÇD M
&&
ÇÇN P
(
ÇÇQ R
	rowNumber
ÇÇR [
-
ÇÇ\ ]
previousRow
ÇÇ^ i
==
ÇÇj l
-
ÇÇm n
$num
ÇÇn o
)
ÇÇo p
&&
ÇÇq s
(
ÉÉ 
columnNumber
ÉÉ  
-
ÉÉ! "
previousColumn
ÉÉ# 1
==
ÉÉ2 4
-
ÉÉ5 6
$num
ÉÉ6 7
||
ÉÉ8 :
columnNumber
ÉÉ; G
-
ÉÉH I
previousColumn
ÉÉJ X
==
ÉÉY [
$num
ÉÉ\ ]
)
ÉÉ] ^
)
ÉÉ^ _
{
ÑÑ 
if
ÖÖ 
(
ÖÖ 
!
ÖÖ 
IsKingChecker
ÖÖ &
(
ÖÖ& '
)
ÖÖ' (
)
ÖÖ( )
{
ÜÜ 
boardMatrix
áá #
[
áá# $
	rowNumber
áá$ -
,
áá- .
columnNumber
áá/ ;
]
áá; <
=
áá= >
Checker
áá? F
.
ááF G
player1Checker
ááG U
;
ááU V
boardMatrix
àà #
[
àà# $
previousRow
àà$ /
,
àà/ 0
previousColumn
àà1 ?
]
àà? @
=
ààA B
Checker
ààC J
.
ààJ K
	freeSpace
ààK T
;
ààT U
button
ââ 
.
ââ 
Content
ââ &
=
ââ' (
$str
ââ) ,
;
ââ, -
button
ää 
.
ää 

Foreground
ää )
=
ää* +
player1Color
ää, 8
;
ää8 9
button
ãã 
.
ãã 
FontSize
ãã '
=
ãã( )
$num
ãã* ,
;
ãã, - 
DismissButtonClick
åå *
(
åå* +
previousButton
åå+ 9
)
åå9 :
;
åå: ;
previousButton
çç &
.
çç& '
Content
çç' .
=
çç/ 0
$str
çç1 3
;
çç3 4
}
éé  
DismissButtonClick
êê &
(
êê& '
previousButton
êê' 5
)
êê5 6
;
êê6 7
EndTurn
ëë 
(
ëë 
)
ëë 
;
ëë 
}
íí 
else
ìì 
{
îî !
SecondMovementCheck
ïï '
(
ïï' (
button
ïï( .
)
ïï. /
;
ïï/ 0
}
ññ 
}
óó 
else
òò 
{
ôô 
KingMoveCheck
öö 
(
öö 
button
öö $
)
öö$ %
;
öö% &
}
õõ 
}
úú 	
private
ûû 
void
ûû !
SecondMovementCheck
ûû (
(
ûû( )
Button
ûû) /
button
ûû0 6
)
ûû6 7
{
üü 	
if
†† 
(
†† 
boardMatrix
†† 
[
†† 
	rowNumber
†† %
,
††% &
columnNumber
††' 3
]
††3 4
==
††5 7
Checker
††8 ?
.
††? @
	freeSpace
††@ I
&&
††J L
(
††M N
	rowNumber
††N W
-
††X Y
previousRow
††Z e
==
††f h
-
††i j
$num
††j k
)
††k l
&&
††m o
(
††p q
columnNumber
††q }
-
††~ 
previousColumn††Ä é
==††è ë
-††í ì
$num††ì î
)††î ï
)††ï ñ
{
°° 
if
¢¢ 
(
¢¢ 
boardMatrix
¢¢ 
[
¢¢  
	rowNumber
¢¢  )
+
¢¢* +
$num
¢¢, -
,
¢¢- .
columnNumber
¢¢/ ;
+
¢¢< =
$num
¢¢> ?
]
¢¢? @
==
¢¢A C
Checker
¢¢D K
.
¢¢K L
player2Checker
¢¢L Z
||
¢¢[ ]
boardMatrix
¢¢^ i
[
¢¢i j
	rowNumber
¢¢j s
+
¢¢t u
$num
¢¢v w
,
¢¢w x
columnNumber¢¢y Ö
+¢¢Ü á
$num¢¢à â
]¢¢â ä
==¢¢ã ç
Checker¢¢é ï
.¢¢ï ñ
player2King¢¢ñ °
)¢¢° ¢
{
££ !
player2CheckerCount
§§ '
--
§§' )
;
§§) *
boardMatrix
•• 
[
••  
	rowNumber
••  )
+
••* +
$num
••, -
,
••- .
columnNumber
••/ ;
+
••< =
$num
••> ?
]
••? @
=
••A B
Checker
••C J
.
••J K
	freeSpace
••K T
;
••T U
if
ßß 
(
ßß 
IsKingChecker
ßß %
(
ßß% &
)
ßß& '
)
ßß' (
{
®®  
DismissButtonClick
©© *
(
©©* +
previousButton
©©+ 9
)
©©9 :
;
©©: ;
EndTurn
™™ 
(
™™  
)
™™  !
;
™™! "
}
¨¨ 
else
≠≠ 
{
ÆÆ 
boardMatrix
ØØ #
[
ØØ# $
	rowNumber
ØØ$ -
,
ØØ- .
columnNumber
ØØ/ ;
]
ØØ; <
=
ØØ= >
Checker
ØØ? F
.
ØØF G
player1Checker
ØØG U
;
ØØU V
boardMatrix
∞∞ #
[
∞∞# $
previousRow
∞∞$ /
,
∞∞/ 0
previousColumn
∞∞1 ?
]
∞∞? @
=
∞∞A B
Checker
∞∞C J
.
∞∞J K
	freeSpace
∞∞K T
;
∞∞T U 
DismissButtonClick
±± *
(
±±* +
previousButton
±±+ 9
)
±±9 :
;
±±: ;'
UpdateCheckersGuiPosition
≤≤ 1
(
≤≤1 2
boardMatrix
≤≤2 =
)
≤≤= >
;
≤≤> ?
if
¥¥ 
(
¥¥ "
Player1MoreJumpCheck
¥¥ 0
(
¥¥0 1
)
¥¥1 2
)
¥¥2 3
{
µµ 
previousButton
∂∂ *
=
∂∂+ ,
button
∂∂- 3
;
∂∂3 4!
RemarkClickedButton
∑∑ /
(
∑∑/ 0
button
∑∑0 6
)
∑∑6 7
;
∑∑7 8
}
∏∏ 
else
ππ 
{
∫∫  
DismissButtonClick
ªª .
(
ªª. /
previousButton
ªª/ =
)
ªª= >
;
ªª> ?
EndTurn
ºº #
(
ºº# $
)
ºº$ %
;
ºº% &
}
ΩΩ 
}
ææ 
}
¿¿ 
}
¡¡ 
else
¬¬ 
{
√√  
ThirdMovementCheck
ƒƒ "
(
ƒƒ" #
button
ƒƒ# )
)
ƒƒ) *
;
ƒƒ* +
}
≈≈ 
}
∆∆ 	
private
»» 
void
»»  
ThirdMovementCheck
»» '
(
»»' (
Button
»»( .
button
»»/ 5
)
»»5 6
{
…… 	
if
   
(
   
boardMatrix
   
[
   
	rowNumber
   %
,
  % &
columnNumber
  ' 3
]
  3 4
==
  5 7
Checker
  8 ?
.
  ? @
	freeSpace
  @ I
&&
  J L
(
  M N
	rowNumber
  N W
-
  X Y
previousRow
  Z e
==
  f h
-
  i j
$num
  j k
)
  k l
&&
  m o
(
  p q
columnNumber
  q }
-
  ~ 
previousColumn  Ä é
==  è ë
$num  í ì
)  ì î
)  î ï
{
ÀÀ 
if
ÃÃ 
(
ÃÃ 
boardMatrix
ÃÃ 
[
ÃÃ  
	rowNumber
ÃÃ  )
+
ÃÃ* +
$num
ÃÃ, -
,
ÃÃ- .
columnNumber
ÃÃ/ ;
-
ÃÃ< =
$num
ÃÃ> ?
]
ÃÃ? @
==
ÃÃA C
Checker
ÃÃD K
.
ÃÃK L
player2Checker
ÃÃL Z
||
ÃÃ[ ]
boardMatrix
ÃÃ^ i
[
ÃÃi j
	rowNumber
ÃÃj s
+
ÃÃt u
$num
ÃÃv w
,
ÃÃw x
columnNumberÃÃy Ö
-ÃÃÜ á
$numÃÃà â
]ÃÃâ ä
==ÃÃã ç
CheckerÃÃé ï
.ÃÃï ñ
player2KingÃÃñ °
)ÃÃ° ¢
{
ÕÕ !
player2CheckerCount
ŒŒ '
--
ŒŒ' )
;
ŒŒ) *
boardMatrix
œœ 
[
œœ  
	rowNumber
œœ  )
+
œœ* +
$num
œœ, -
,
œœ- .
columnNumber
œœ/ ;
-
œœ< =
$num
œœ> ?
]
œœ? @
=
œœA B
Checker
œœC J
.
œœJ K
	freeSpace
œœK T
;
œœT U
if
—— 
(
—— 
IsKingChecker
—— %
(
——% &
)
——& '
)
——' (
{
““  
DismissButtonClick
”” *
(
””* +
previousButton
””+ 9
)
””9 :
;
””: ;
EndTurn
‘‘ 
(
‘‘  
)
‘‘  !
;
‘‘! "
}
’’ 
else
÷÷ 
{
◊◊ 
boardMatrix
ÿÿ #
[
ÿÿ# $
	rowNumber
ÿÿ$ -
,
ÿÿ- .
columnNumber
ÿÿ/ ;
]
ÿÿ; <
=
ÿÿ= >
Checker
ÿÿ? F
.
ÿÿF G
player1Checker
ÿÿG U
;
ÿÿU V
boardMatrix
ŸŸ #
[
ŸŸ# $
previousRow
ŸŸ$ /
,
ŸŸ/ 0
previousColumn
ŸŸ1 ?
]
ŸŸ? @
=
ŸŸA B
Checker
ŸŸC J
.
ŸŸJ K
	freeSpace
ŸŸK T
;
ŸŸT U 
DismissButtonClick
€€ *
(
€€* +
previousButton
€€+ 9
)
€€9 :
;
€€: ;'
UpdateCheckersGuiPosition
‹‹ 1
(
‹‹1 2
boardMatrix
‹‹2 =
)
‹‹= >
;
‹‹> ?
if
ﬁﬁ 
(
ﬁﬁ "
Player1MoreJumpCheck
ﬁﬁ 0
(
ﬁﬁ0 1
)
ﬁﬁ1 2
)
ﬁﬁ2 3
{
ﬂﬂ 
previousButton
‡‡ *
=
‡‡+ ,
button
‡‡- 3
;
‡‡3 4!
RemarkClickedButton
·· /
(
··/ 0
button
··0 6
)
··6 7
;
··7 8
}
‚‚ 
else
„„ 
{
‰‰  
DismissButtonClick
ÂÂ .
(
ÂÂ. /
previousButton
ÂÂ/ =
)
ÂÂ= >
;
ÂÂ> ?
EndTurn
ÊÊ #
(
ÊÊ# $
)
ÊÊ$ %
;
ÊÊ% &
}
ÁÁ 
}
ËË 
}
ÈÈ 
}
ÍÍ 
else
ÎÎ 
{
ÏÏ 
InvalidClick
ÌÌ 
(
ÌÌ 
)
ÌÌ 
;
ÌÌ 
}
ÓÓ 
}
ÔÔ 	
private
ÒÒ 
void
ÒÒ 
KingMoveCheck
ÒÒ "
(
ÒÒ" #
Button
ÒÒ# )
button
ÒÒ* 0
)
ÒÒ0 1
{
ÚÚ 	
if
ÛÛ 
(
ÛÛ 
KingMove
ÛÛ 
(
ÛÛ 
)
ÛÛ 
)
ÛÛ 
{
ÙÙ 
button
ıı 
.
ıı 
Content
ıı 
=
ıı  
$str
ıı! $
;
ıı$ %
button
ˆˆ 
.
ˆˆ 
FontSize
ˆˆ 
=
ˆˆ  !
$num
ˆˆ" $
;
ˆˆ$ %
button
˜˜ 
.
˜˜ 

Foreground
˜˜ !
=
˜˜" #
player1Color
˜˜$ 0
;
˜˜0 1
previousButton
¯¯ 
.
¯¯ 
Content
¯¯ &
=
¯¯' (
$str
¯¯) +
;
¯¯+ , 
DismissButtonClick
˙˙ "
(
˙˙" #
previousButton
˙˙# 1
)
˙˙1 2
;
˙˙2 3
EndTurn
˚˚ 
(
˚˚ 
)
˚˚ 
;
˚˚ 
}
¸¸ 
else
˝˝ 
{
˛˛ 
if
ˇˇ 
(
ˇˇ 
ValidateKingJump
ˇˇ $
(
ˇˇ$ %
)
ˇˇ% &
)
ˇˇ& '
{
ÄÄ !
player2CheckerCount
ÅÅ '
--
ÅÅ' )
;
ÅÅ) *
int
ÉÉ 
	jumpedRow
ÉÉ !
=
ÉÉ" #
(
ÉÉ$ %
int
ÉÉ% (
)
ÉÉ( )
(
ÉÉ) *
	rowNumber
ÉÉ* 3
+
ÉÉ4 5
(
ÉÉ6 7
(
ÉÉ7 8
	rowNumber
ÉÉ8 A
-
ÉÉB C
previousRow
ÉÉD O
)
ÉÉO P
*
ÉÉQ R
-
ÉÉS T
$num
ÉÉT V
)
ÉÉV W
)
ÉÉW X
;
ÉÉX Y
int
ÑÑ 
jumpedColumn
ÑÑ $
=
ÑÑ% &
(
ÑÑ' (
int
ÑÑ( +
)
ÑÑ+ ,
(
ÑÑ, -
columnNumber
ÑÑ- 9
+
ÑÑ: ;
(
ÑÑ< =
(
ÑÑ= >
columnNumber
ÑÑ> J
-
ÑÑK L
previousColumn
ÑÑM [
)
ÑÑ[ \
*
ÑÑ] ^
-
ÑÑ_ `
$num
ÑÑ` b
)
ÑÑb c
)
ÑÑc d
;
ÑÑd e
boardMatrix
ÜÜ 
[
ÜÜ  
	rowNumber
ÜÜ  )
,
ÜÜ) *
columnNumber
ÜÜ+ 7
]
ÜÜ7 8
=
ÜÜ9 :
Checker
ÜÜ; B
.
ÜÜB C
player1King
ÜÜC N
;
ÜÜN O
boardMatrix
áá 
[
áá  
	jumpedRow
áá  )
,
áá) *
jumpedColumn
áá+ 7
]
áá7 8
=
áá9 :
Checker
áá; B
.
ááB C
	freeSpace
ááC L
;
ááL M
boardMatrix
àà 
[
àà  
previousRow
àà  +
,
àà+ ,
previousColumn
àà- ;
]
àà; <
=
àà= >
Checker
àà? F
.
ààF G
	freeSpace
ààG P
;
ààP Q 
DismissButtonClick
ää &
(
ää& '
previousButton
ää' 5
)
ää5 6
;
ää6 7'
UpdateCheckersGuiPosition
ãã -
(
ãã- .
boardMatrix
ãã. 9
)
ãã9 :
;
ãã: ;
if
çç 
(
çç  
KingJumpsAvaliable
çç *
(
çç* +
)
çç+ ,
)
çç, -
{
éé 
previousButton
èè &
=
èè' (
button
èè) /
;
èè/ 0!
RemarkClickedButton
êê +
(
êê+ ,
button
êê, 2
)
êê2 3
;
êê3 4
}
ëë 
else
íí 
{
ìì  
DismissButtonClick
îî *
(
îî* +
previousButton
îî+ 9
)
îî9 :
;
îî: ;
EndTurn
ïï 
(
ïï  
)
ïï  !
;
ïï! "
}
ññ 
}
óó 
else
òò 
{
ôô 
InvalidClick
öö  
(
öö  !
)
öö! "
;
öö" #
}
õõ 
}
úú 
}
ùù 	
private
üü 
void
üü 
playerTwoMovement
üü &
(
üü& '
object
üü' -
sender
üü. 4
,
üü4 5
RoutedEventArgs
üü6 E
e
üüF G
)
üüG H
{
†† 	
var
°° 
button
°° 
=
°° 
(
°° 
Button
°°  
)
°°  !
sender
°°! '
;
°°' (
columnNumber
££ 
=
££ 
Grid
££ 
.
££  
	GetColumn
££  )
(
££) *
button
££* 0
)
££0 1
;
££1 2
	rowNumber
§§ 
=
§§ 
Grid
§§ 
.
§§ 
GetRow
§§ #
(
§§# $
button
§§$ *
)
§§* +
;
§§+ ,
if
•• 
(
•• $
checkPlayerSecondClick
•• &
)
••& '
{
¶¶ 
previousRow
ßß 
=
ßß 
Grid
ßß "
.
ßß" #
GetRow
ßß# )
(
ßß) *
previousButton
ßß* 8
)
ßß8 9
;
ßß9 :
previousColumn
®® 
=
®®  
Grid
®®! %
.
®®% &
	GetColumn
®®& /
(
®®/ 0
previousButton
®®0 >
)
®®> ?
;
®®? @
if
™™ 
(
™™ 
boardMatrix
™™ 
[
™™  
previousRow
™™  +
,
™™+ ,
previousColumn
™™- ;
]
™™; <
==
™™= ?
Checker
™™@ G
.
™™G H
player2Checker
™™H V
)
™™V W
{
´´ )
PlayerTwoFirstMovementCheck
¨¨ /
(
¨¨/ 0
button
¨¨0 6
)
¨¨6 7
;
¨¨7 8
}
≠≠ 
else
ÆÆ 
{
ØØ  
PlayerTwoKingCheck
∞∞ &
(
∞∞& '
button
∞∞' -
)
∞∞- .
;
∞∞. /
}
±± 
}
≤≤ 
else
≥≥ 
{
¥¥ 
currentPlayer
µµ 
.
µµ 
Text
µµ "
=
µµ# $
$str
µµ% 4
;
µµ4 5
if
∑∑ 
(
∑∑ 
boardMatrix
∑∑ 
[
∑∑  
	rowNumber
∑∑  )
,
∑∑) *
columnNumber
∑∑+ 7
]
∑∑7 8
==
∑∑9 ;
Checker
∑∑< C
.
∑∑C D
player2Checker
∑∑D R
||
∑∑S U
boardMatrix
∑∑V a
[
∑∑a b
	rowNumber
∑∑b k
,
∑∑k l
columnNumber
∑∑m y
]
∑∑y z
==
∑∑{ }
Checker∑∑~ Ö
.∑∑Ö Ü
player2King∑∑Ü ë
)∑∑ë í
{
∏∏ 
previousButton
ππ "
=
ππ# $
button
ππ% +
;
ππ+ ,$
checkPlayerSecondClick
∫∫ *
=
∫∫+ ,
true
∫∫- 1
;
∫∫1 2!
RemarkClickedButton
ªª '
(
ªª' (
button
ªª( .
)
ªª. /
;
ªª/ 0
}
ºº 
}
ΩΩ 
}
ææ 	
private
¿¿ 
void
¿¿ )
PlayerTwoFirstMovementCheck
¿¿ 0
(
¿¿0 1
Button
¿¿1 7
button
¿¿8 >
)
¿¿> ?
{
¡¡ 	
if
¬¬ 
(
¬¬ 
boardMatrix
¬¬ 
[
¬¬ 
	rowNumber
¬¬ %
,
¬¬% &
columnNumber
¬¬' 3
]
¬¬3 4
==
¬¬5 7
Checker
¬¬8 ?
.
¬¬? @
	freeSpace
¬¬@ I
&&
¬¬J L
(
¬¬M N
	rowNumber
¬¬N W
-
¬¬X Y
previousRow
¬¬Z e
==
¬¬f h
$num
¬¬i j
)
¬¬j k
&&
¬¬l n
(
¬¬o p
columnNumber
¬¬p |
-
¬¬} ~
previousColumn¬¬ ç
==¬¬é ê
-¬¬ë í
$num¬¬í ì
||¬¬î ñ
columnNumber¬¬ó £
-¬¬§ •
previousColumn¬¬¶ ¥
==¬¬µ ∑
$num¬¬∏ π
)¬¬π ∫
)¬¬∫ ª
{
√√ 
if
ƒƒ 
(
ƒƒ 
!
ƒƒ 
IsKingChecker
ƒƒ "
(
ƒƒ" #
)
ƒƒ# $
)
ƒƒ$ %
{
≈≈ 
boardMatrix
∆∆ 
[
∆∆  
	rowNumber
∆∆  )
,
∆∆) *
columnNumber
∆∆+ 7
]
∆∆7 8
=
∆∆9 :
Checker
∆∆; B
.
∆∆B C
player2Checker
∆∆C Q
;
∆∆Q R
boardMatrix
«« 
[
««  
previousRow
««  +
,
««+ ,
previousColumn
««- ;
]
««; <
=
««= >
Checker
««? F
.
««F G
	freeSpace
««G P
;
««P Q
button
…… 
.
…… 
Content
…… "
=
……# $
$str
……% (
;
……( )
button
   
.
   

Foreground
   %
=
  & '
player2Color
  ( 4
;
  4 5
button
ÀÀ 
.
ÀÀ 
FontSize
ÀÀ #
=
ÀÀ$ %
$num
ÀÀ& (
;
ÀÀ( )
previousButton
ÃÃ "
.
ÃÃ" #
Content
ÃÃ# *
=
ÃÃ+ ,
$str
ÃÃ- /
;
ÃÃ/ 0 
DismissButtonClick
ŒŒ &
(
ŒŒ& '
previousButton
ŒŒ' 5
)
ŒŒ5 6
;
ŒŒ6 7
}
œœ  
DismissButtonClick
–– "
(
––" #
previousButton
––# 1
)
––1 2
;
––2 3
EndTurn
—— 
(
—— 
)
—— 
;
—— 
}
““ 
else
”” 
{
‘‘ *
PlayerTwoSecondMovementCheck
’’ ,
(
’’, -
button
’’- 3
)
’’3 4
;
’’4 5
}
÷÷ 
}
◊◊ 	
private
ŸŸ 
void
ŸŸ *
PlayerTwoSecondMovementCheck
ŸŸ 1
(
ŸŸ1 2
Button
ŸŸ2 8
button
ŸŸ9 ?
)
ŸŸ? @
{
⁄⁄ 	
if
€€ 
(
€€ 
boardMatrix
€€ 
[
€€ 
	rowNumber
€€ %
,
€€% &
columnNumber
€€' 3
]
€€3 4
==
€€5 7
Checker
€€8 ?
.
€€? @
	freeSpace
€€@ I
&&
€€J L
(
€€M N
	rowNumber
€€N W
-
€€X Y
previousRow
€€Z e
==
€€f h
$num
€€i j
)
€€j k
&&
€€l n
columnNumber
€€o {
-
€€| }
previousColumn€€~ å
==€€ç è
-€€ê ë
$num€€ë í
)€€í ì
{
‹‹ 
if
›› 
(
›› 
boardMatrix
›› 
[
››  
	rowNumber
››  )
-
››* +
$num
››, -
,
››- .
columnNumber
››/ ;
+
››< =
$num
››> ?
]
››? @
==
››A C
Checker
››D K
.
››K L
player1Checker
››L Z
||
››[ ]
boardMatrix
››^ i
[
››i j
	rowNumber
››j s
-
››t u
$num
››v w
,
››w x
columnNumber››y Ö
+››Ü á
$num››à â
]››â ä
==››ã ç
Checker››é ï
.››ï ñ
player1King››ñ °
)››° ¢
{
ﬁﬁ !
player1CheckerCount
ﬂﬂ '
--
ﬂﬂ' )
;
ﬂﬂ) *
boardMatrix
·· 
[
··  
	rowNumber
··  )
-
··* +
$num
··, -
,
··- .
columnNumber
··/ ;
+
··< =
$num
··> ?
]
··? @
=
··A B
Checker
··C J
.
··J K
	freeSpace
··K T
;
··T U
if
„„ 
(
„„ 
IsKingChecker
„„ %
(
„„% &
)
„„& '
)
„„' (
{
‰‰  
DismissButtonClick
ÂÂ *
(
ÂÂ* +
previousButton
ÂÂ+ 9
)
ÂÂ9 :
;
ÂÂ: ;
EndTurn
ÊÊ 
(
ÊÊ  
)
ÊÊ  !
;
ÊÊ! "
}
ÁÁ 
else
ËË 
{
ÈÈ 
boardMatrix
ÍÍ #
[
ÍÍ# $
	rowNumber
ÍÍ$ -
,
ÍÍ- .
columnNumber
ÍÍ/ ;
]
ÍÍ; <
=
ÍÍ= >
Checker
ÍÍ? F
.
ÍÍF G
player2Checker
ÍÍG U
;
ÍÍU V
boardMatrix
ÎÎ #
[
ÎÎ# $
previousRow
ÎÎ$ /
,
ÎÎ/ 0
previousColumn
ÎÎ1 ?
]
ÎÎ? @
=
ÎÎA B
Checker
ÎÎC J
.
ÎÎJ K
	freeSpace
ÎÎK T
;
ÎÎT U 
DismissButtonClick
ÌÌ *
(
ÌÌ* +
previousButton
ÌÌ+ 9
)
ÌÌ9 :
;
ÌÌ: ;'
UpdateCheckersGuiPosition
ÓÓ 1
(
ÓÓ1 2
boardMatrix
ÓÓ2 =
)
ÓÓ= >
;
ÓÓ> ?
if
 
(
 "
Player2MoreJumpCheck
 0
(
0 1
)
1 2
)
2 3
{
ÒÒ !
RemarkClickedButton
ÚÚ /
(
ÚÚ/ 0
button
ÚÚ0 6
)
ÚÚ6 7
;
ÚÚ7 8
previousButton
ÛÛ *
=
ÛÛ+ ,
button
ÛÛ- 3
;
ÛÛ3 4
}
ÙÙ 
else
ıı 
{
ˆˆ  
DismissButtonClick
˜˜ .
(
˜˜. /
previousButton
˜˜/ =
)
˜˜= >
;
˜˜> ?
EndTurn
¯¯ #
(
¯¯# $
)
¯¯$ %
;
¯¯% &
}
˘˘ 
}
˙˙ 
}
˚˚ 
}
¸¸ 
else
˝˝ 
{
˛˛ )
PlayerTwoThirdMovementCheck
ˇˇ +
(
ˇˇ+ ,
button
ˇˇ, 2
)
ˇˇ2 3
;
ˇˇ3 4
}
ÄÄ 
}
ÅÅ 	
private
ÉÉ 
void
ÉÉ )
PlayerTwoThirdMovementCheck
ÉÉ 0
(
ÉÉ0 1
Button
ÉÉ1 7
button
ÉÉ8 >
)
ÉÉ> ?
{
ÑÑ 	
if
ÖÖ 
(
ÖÖ 
boardMatrix
ÖÖ 
[
ÖÖ 
	rowNumber
ÖÖ %
,
ÖÖ% &
columnNumber
ÖÖ' 3
]
ÖÖ3 4
==
ÖÖ5 7
Checker
ÖÖ8 ?
.
ÖÖ? @
	freeSpace
ÖÖ@ I
&&
ÖÖJ L
(
ÖÖM N
	rowNumber
ÖÖN W
-
ÖÖX Y
previousRow
ÖÖZ e
==
ÖÖf h
$num
ÖÖi j
)
ÖÖj k
&&
ÖÖl n
columnNumber
ÖÖo {
-
ÖÖ| }
previousColumnÖÖ~ å
==ÖÖç è
$numÖÖê ë
)ÖÖë í
{
ÜÜ !
player1CheckerCount
áá #
--
áá# %
;
áá% &
boardMatrix
ââ 
[
ââ 
	rowNumber
ââ %
-
ââ& '
$num
ââ( )
,
ââ) *
columnNumber
ââ+ 7
-
ââ8 9
$num
ââ: ;
]
ââ; <
=
ââ= >
Checker
ââ? F
.
ââF G
	freeSpace
ââG P
;
ââP Q
if
ãã 
(
ãã 
IsKingChecker
ãã !
(
ãã! "
)
ãã" #
)
ãã# $
{
åå  
DismissButtonClick
çç &
(
çç& '
previousButton
çç' 5
)
çç5 6
;
çç6 7
EndTurn
éé 
(
éé 
)
éé 
;
éé 
}
èè 
else
êê 
{
ëë 
boardMatrix
íí 
[
íí  
	rowNumber
íí  )
,
íí) *
columnNumber
íí+ 7
]
íí7 8
=
íí9 :
Checker
íí; B
.
ííB C
player2Checker
ííC Q
;
ííQ R
boardMatrix
ìì 
[
ìì  
previousRow
ìì  +
,
ìì+ ,
previousColumn
ìì- ;
]
ìì; <
=
ìì= >
Checker
ìì? F
.
ììF G
	freeSpace
ììG P
;
ììP Q 
DismissButtonClick
ïï &
(
ïï& '
previousButton
ïï' 5
)
ïï5 6
;
ïï6 7'
UpdateCheckersGuiPosition
ññ -
(
ññ- .
boardMatrix
ññ. 9
)
ññ9 :
;
ññ: ;
if
òò 
(
òò "
Player2MoreJumpCheck
òò ,
(
òò, -
)
òò- .
)
òò. /
{
ôô !
RemarkClickedButton
öö +
(
öö+ ,
button
öö, 2
)
öö2 3
;
öö3 4
previousButton
õõ &
=
õõ' (
button
õõ) /
;
õõ/ 0
}
úú 
else
ùù 
{
ûû  
DismissButtonClick
üü *
(
üü* +
previousButton
üü+ 9
)
üü9 :
;
üü: ;
EndTurn
†† 
(
††  
)
††  !
;
††! "
}
°° 
}
¢¢ 
}
££ 
else
§§ 
{
•• 
InvalidClick
¶¶ 
(
¶¶ 
)
¶¶ 
;
¶¶ 
}
ßß 
}
®® 	
private
™™ 
void
™™  
PlayerTwoKingCheck
™™ '
(
™™' (
Button
™™( .
button
™™/ 5
)
™™5 6
{
´´ 	
if
¨¨ 
(
¨¨ 
KingMove
¨¨ 
(
¨¨ 
)
¨¨ 
)
¨¨ 
{
≠≠ 
button
ÆÆ 
.
ÆÆ 
Content
ÆÆ 
=
ÆÆ  
$str
ÆÆ! $
;
ÆÆ$ %
button
ØØ 
.
ØØ 
FontSize
ØØ 
=
ØØ  !
$num
ØØ" $
;
ØØ$ %
button
∞∞ 
.
∞∞ 

Foreground
∞∞ !
=
∞∞" #
player2Color
∞∞$ 0
;
∞∞0 1
previousButton
±± 
.
±± 
Content
±± &
=
±±' (
$str
±±) +
;
±±+ , 
DismissButtonClick
≥≥ "
(
≥≥" #
previousButton
≥≥# 1
)
≥≥1 2
;
≥≥2 3
EndTurn
¥¥ 
(
¥¥ 
)
¥¥ 
;
¥¥ 
}
µµ 
else
∂∂ 
{
∑∑ 
if
∏∏ 
(
∏∏ 
ValidateKingJump
∏∏ $
(
∏∏$ %
)
∏∏% &
)
∏∏& '
{
ππ !
player1CheckerCount
∫∫ '
--
∫∫' )
;
∫∫) *
int
ºº 
	jumpedRow
ºº !
=
ºº" #
(
ºº$ %
int
ºº% (
)
ºº( )
(
ºº) *
	rowNumber
ºº* 3
+
ºº4 5
(
ºº6 7
(
ºº7 8
	rowNumber
ºº8 A
-
ººB C
previousRow
ººD O
)
ººO P
*
ººQ R
-
ººS T
$num
ººT V
)
ººV W
)
ººW X
;
ººX Y
int
ΩΩ 
	jumpedCol
ΩΩ !
=
ΩΩ" #
(
ΩΩ$ %
int
ΩΩ% (
)
ΩΩ( )
(
ΩΩ) *
columnNumber
ΩΩ* 6
+
ΩΩ7 8
(
ΩΩ9 :
(
ΩΩ: ;
columnNumber
ΩΩ; G
-
ΩΩH I
previousColumn
ΩΩJ X
)
ΩΩX Y
*
ΩΩZ [
-
ΩΩ\ ]
$num
ΩΩ] _
)
ΩΩ_ `
)
ΩΩ` a
;
ΩΩa b
boardMatrix
øø 
[
øø  
	rowNumber
øø  )
,
øø) *
columnNumber
øø+ 7
]
øø7 8
=
øø9 :
Checker
øø; B
.
øøB C
player2King
øøC N
;
øøN O
boardMatrix
¿¿ 
[
¿¿  
	jumpedRow
¿¿  )
,
¿¿) *
	jumpedCol
¿¿+ 4
]
¿¿4 5
=
¿¿6 7
Checker
¿¿8 ?
.
¿¿? @
	freeSpace
¿¿@ I
;
¿¿I J
boardMatrix
¡¡ 
[
¡¡  
previousRow
¡¡  +
,
¡¡+ ,
previousColumn
¡¡- ;
]
¡¡; <
=
¡¡= >
Checker
¡¡? F
.
¡¡F G
	freeSpace
¡¡G P
;
¡¡P Q 
DismissButtonClick
√√ &
(
√√& '
previousButton
√√' 5
)
√√5 6
;
√√6 7'
UpdateCheckersGuiPosition
ƒƒ -
(
ƒƒ- .
boardMatrix
ƒƒ. 9
)
ƒƒ9 :
;
ƒƒ: ;
if
∆∆ 
(
∆∆  
KingJumpsAvaliable
∆∆ *
(
∆∆* +
)
∆∆+ ,
)
∆∆, -
{
«« 
previousButton
»» &
=
»»' (
button
»») /
;
»»/ 0!
RemarkClickedButton
…… +
(
……+ ,
button
……, 2
)
……2 3
;
……3 4
}
   
else
ÀÀ 
{
ÃÃ  
DismissButtonClick
ÕÕ *
(
ÕÕ* +
previousButton
ÕÕ+ 9
)
ÕÕ9 :
;
ÕÕ: ;
EndTurn
ŒŒ 
(
ŒŒ  
)
ŒŒ  !
;
ŒŒ! "
}
œœ 
}
–– 
else
—— 
{
““ 
InvalidClick
””  
(
””  !
)
””! "
;
””" #
}
‘‘ 
}
’’ 
}
÷÷ 	
private
ÿÿ 
void
ÿÿ 
GenerateGame
ÿÿ !
(
ÿÿ! "
)
ÿÿ" #
{
ŸŸ 	

buttonList
⁄⁄ 
=
⁄⁄ 
Board
⁄⁄ 
.
⁄⁄ 
Children
⁄⁄ '
.
⁄⁄' (
Cast
⁄⁄( ,
<
⁄⁄, -
Button
⁄⁄- 3
>
⁄⁄3 4
(
⁄⁄4 5
)
⁄⁄5 6
.
⁄⁄6 7
ToList
⁄⁄7 =
(
⁄⁄= >
)
⁄⁄> ?
;
⁄⁄? @
boardMatrix
€€ 
=
€€ 
new
€€ 
Checker
€€ %
[
€€% &
$num
€€& '
,
€€' (
$num
€€) *
]
€€* +
;
€€+ ,
int
›› 
	travelRow
›› 
;
›› 
for
ﬂﬂ 
(
ﬂﬂ 
	travelRow
ﬂﬂ 
=
ﬂﬂ 
$num
ﬂﬂ 
;
ﬂﬂ 
	travelRow
ﬂﬂ  )
<
ﬂﬂ* +
$num
ﬂﬂ, -
;
ﬂﬂ- .
	travelRow
ﬂﬂ/ 8
++
ﬂﬂ8 :
)
ﬂﬂ: ;
{
‡‡ 
if
·· 
(
·· 
	travelRow
·· 
==
··  
$num
··! "
||
··# %
	travelRow
··& /
==
··0 2
$num
··3 4
||
··5 7
	travelRow
··8 A
==
··B D
$num
··E F
)
··F G
{
‚‚ 
int
„„ 
travelColumns
„„ %
;
„„% &
for
ÂÂ 
(
ÂÂ 
travelColumns
ÂÂ &
=
ÂÂ' (
$num
ÂÂ) *
;
ÂÂ* +
travelColumns
ÂÂ, 9
<
ÂÂ: ;
$num
ÂÂ< =
;
ÂÂ= >
travelColumns
ÂÂ? L
+=
ÂÂM O
$num
ÂÂP Q
)
ÂÂQ R
{
ÊÊ 
if
ÁÁ 
(
ÁÁ 
	travelRow
ÁÁ %
==
ÁÁ& (
$num
ÁÁ) *
||
ÁÁ+ -
	travelRow
ÁÁ. 7
==
ÁÁ8 :
$num
ÁÁ; <
)
ÁÁ< =
{
ËË 
boardMatrix
ÈÈ '
[
ÈÈ' (
	travelRow
ÈÈ( 1
,
ÈÈ1 2
travelColumns
ÈÈ3 @
]
ÈÈ@ A
=
ÈÈB C
Checker
ÈÈD K
.
ÈÈK L
player2Checker
ÈÈL Z
;
ÈÈZ [
}
ÍÍ 
else
ÎÎ 
{
ÏÏ 
boardMatrix
ÌÌ '
[
ÌÌ' (
	travelRow
ÌÌ( 1
,
ÌÌ1 2
travelColumns
ÌÌ3 @
]
ÌÌ@ A
=
ÌÌB C
Checker
ÌÌD K
.
ÌÌK L
player1Checker
ÌÌL Z
;
ÌÌZ [
}
ÓÓ 
}
ÔÔ 
}
 #
GeneratingGameProcess
ÒÒ %
(
ÒÒ% &
	travelRow
ÒÒ& /
)
ÒÒ/ 0
;
ÒÒ0 1
}
ÛÛ 
player1Turn
ÙÙ 
=
ÙÙ 
true
ÙÙ 
;
ÙÙ $
checkPlayerSecondClick
ıı "
=
ıı# $
false
ıı% *
;
ıı* +
	rowNumber
ˆˆ 
=
ˆˆ 
-
ˆˆ 
$num
ˆˆ 
;
ˆˆ 
columnNumber
˜˜ 
=
˜˜ 
$num
˜˜ 
;
˜˜ 
previousRow
¯¯ 
=
¯¯ 
$num
¯¯ 
;
¯¯ 
previousColumn
˘˘ 
=
˘˘ 
$num
˘˘ 
;
˘˘ !
player1CheckerCount
˙˙ 
=
˙˙  !
$num
˙˙" $
;
˙˙$ %!
player2CheckerCount
˚˚ 
=
˚˚  !
$num
˚˚" $
;
˚˚$ %
GenerateCheckers
˝˝ 
(
˝˝ 
)
˝˝ 
;
˝˝ 
}
˛˛ 	
private
ÄÄ 
void
ÄÄ #
GeneratingGameProcess
ÄÄ *
(
ÄÄ* +
int
ÄÄ+ .
	travelRow
ÄÄ/ 8
)
ÄÄ8 9
{
ÅÅ 	
if
ÇÇ 
(
ÇÇ 
	travelRow
ÇÇ 
==
ÇÇ 
$num
ÇÇ 
||
ÇÇ !
	travelRow
ÇÇ" +
==
ÇÇ, .
$num
ÇÇ/ 0
||
ÇÇ1 3
	travelRow
ÇÇ4 =
==
ÇÇ> @
$num
ÇÇA B
)
ÇÇB C
{
ÉÉ 
int
ÑÑ 
travelColumns
ÑÑ !
;
ÑÑ! "
for
ÜÜ 
(
ÜÜ 
travelColumns
ÜÜ "
=
ÜÜ# $
$num
ÜÜ% &
;
ÜÜ& '
travelColumns
ÜÜ( 5
<
ÜÜ6 7
$num
ÜÜ8 9
;
ÜÜ9 :
travelColumns
ÜÜ; H
+=
ÜÜI K
$num
ÜÜL M
)
ÜÜM N
{
áá 
if
àà 
(
àà 
	travelRow
àà !
==
àà" $
$num
àà% &
||
àà' )
	travelRow
àà* 3
==
àà4 6
$num
àà7 8
)
àà8 9
{
ââ 
boardMatrix
ää #
[
ää# $
	travelRow
ää$ -
,
ää- .
travelColumns
ää/ <
]
ää< =
=
ää> ?
Checker
ää@ G
.
ääG H
player1Checker
ääH V
;
ääV W
}
ãã 
else
åå 
{
çç 
boardMatrix
éé #
[
éé# $
	travelRow
éé$ -
,
éé- .
travelColumns
éé/ <
]
éé< =
=
éé> ?
Checker
éé@ G
.
ééG H
player2Checker
ééH V
;
ééV W
}
èè 
}
êê 
}
ëë 
}
íí 	
private
îî 
void
îî 
GenerateCheckers
îî %
(
îî% &
)
îî& '
{
ïï 	
int
ññ 
counter
ññ 
=
ññ 
$num
ññ 
;
ññ 

buttonList
óó 
.
óó 
ForEach
óó 
(
óó 
button
óó %
=>
óó& (
{
òò 
if
ôô 
(
ôô 
counter
ôô 
<
ôô 
$num
ôô  
)
ôô  !
{
öö 
button
õõ 
.
õõ 
Content
õõ "
=
õõ# $
$str
õõ% (
;
õõ( )
button
úú 
.
úú 
FontSize
úú #
=
úú$ %
$num
úú& (
;
úú( )
button
ùù 
.
ùù 

Foreground
ùù %
=
ùù& '
player2Color
ùù( 4
;
ùù4 5
counter
ûû 
++
ûû 
;
ûû 
}
üü 
else
†† 
{
°° 
if
¢¢ 
(
¢¢ 
counter
¢¢ 
>=
¢¢  "
$num
¢¢# %
&&
¢¢& (
counter
¢¢) 0
<
¢¢1 2
$num
¢¢3 5
)
¢¢5 6
{
££ 
button
§§ 
.
§§ 
Content
§§ &
=
§§' (
$str
§§) ,
;
§§, -
button
•• 
.
•• 
FontSize
•• '
=
••( )
$num
••* ,
;
••, -
button
¶¶ 
.
¶¶ 

Foreground
¶¶ )
=
¶¶* +
player1Color
¶¶, 8
;
¶¶8 9
counter
ßß 
++
ßß !
;
ßß! "
}
®® 
else
©© 
{
™™ 
button
´´ 
.
´´ 
Content
´´ &
=
´´' (
string
´´) /
.
´´/ 0
Empty
´´0 5
;
´´5 6
counter
¨¨ 
++
¨¨ !
;
¨¨! "
}
≠≠ 
}
ÆÆ 
}
ØØ 
)
ØØ 
;
ØØ 
}
∞∞ 	
private
≤≤ 
void
≤≤ !
RemarkClickedButton
≤≤ (
(
≤≤( )
Button
≤≤) /
buttonSelected
≤≤0 >
)
≤≤> ?
{
≥≥ 	
buttonSelected
¥¥ 
.
¥¥ 
BorderThickness
¥¥ *
=
¥¥+ ,
new
¥¥- 0
	Thickness
¥¥1 :
(
¥¥: ;
$num
¥¥; <
,
¥¥< =
$num
¥¥> ?
,
¥¥? @
$num
¥¥A B
,
¥¥B C
$num
¥¥D E
)
¥¥E F
;
¥¥F G
buttonSelected
µµ 
.
µµ 
BorderBrush
µµ &
=
µµ' (
Brushes
µµ) 0
.
µµ0 1
Snow
µµ1 5
;
µµ5 6
}
∂∂ 	
private
∏∏ 
void
∏∏  
DismissButtonClick
∏∏ '
(
∏∏' (
Button
∏∏( .
buttonSelected
∏∏/ =
)
∏∏= >
{
ππ 	
buttonSelected
∫∫ 
.
∫∫ 
BorderThickness
∫∫ *
=
∫∫+ ,
new
∫∫- 0
	Thickness
∫∫1 :
(
∫∫: ;
$num
∫∫; <
,
∫∫< =
$num
∫∫> ?
,
∫∫? @
$num
∫∫A B
,
∫∫B C
$num
∫∫D E
)
∫∫E F
;
∫∫F G
buttonSelected
ªª 
.
ªª 
BorderBrush
ªª &
=
ªª' (
Brushes
ªª) 0
.
ªª0 1
	SlateGray
ªª1 :
;
ªª: ;
}
ºº 	
public
ææ 
void
ææ '
UpdateCheckersGuiPosition
ææ -
(
ææ- .
Checker
ææ. 5
[
ææ5 6
,
ææ6 7
]
ææ7 8
boardMatrixUpdate
ææ9 J
)
ææJ K
{
øø 	
boardMatrix
¿¿ 
=
¿¿ 
boardMatrixUpdate
¿¿ +
;
¿¿+ ,

buttonList
¡¡ 
.
¡¡ 
ForEach
¡¡ 
(
¡¡ 
button
¡¡ %
=>
¡¡& (
{
¬¬ 
int
ƒƒ 
row
ƒƒ 
=
ƒƒ 
Grid
ƒƒ 
.
ƒƒ 
GetRow
ƒƒ %
(
ƒƒ% &
button
ƒƒ& ,
)
ƒƒ, -
;
ƒƒ- .
int
≈≈ 
col
≈≈ 
=
≈≈ 
Grid
≈≈ 
.
≈≈ 
	GetColumn
≈≈ (
(
≈≈( )
button
≈≈) /
)
≈≈/ 0
;
≈≈0 1
if
«« 
(
«« 
boardMatrixUpdate
«« %
[
««% &
row
««& )
,
««) *
col
««+ .
]
««. /
==
««0 2
Checker
««3 :
.
««: ;
player1Checker
««; I
)
««I J
{
»» 
button
…… 
.
…… 
Content
…… "
=
……# $
$str
……% (
;
……( )
button
   
.
   
FontSize
   #
=
  $ %
$num
  & (
;
  ( )
button
ÀÀ 
.
ÀÀ 

Foreground
ÀÀ %
=
ÀÀ& '
player1Color
ÀÀ( 4
;
ÀÀ4 5
}
ÃÃ 
else
ÕÕ 
{
ŒŒ 
if
œœ 
(
œœ 
boardMatrixUpdate
œœ )
[
œœ) *
row
œœ* -
,
œœ- .
col
œœ/ 2
]
œœ2 3
==
œœ4 6
Checker
œœ7 >
.
œœ> ?
player1King
œœ? J
)
œœJ K
{
–– 
button
—— 
.
—— 
Content
—— &
=
——' (
$str
——) ,
;
——, -
button
““ 
.
““ 
FontSize
““ '
=
““( )
$num
““* ,
;
““, -
button
”” 
.
”” 

Foreground
”” )
=
””* +
player1Color
””, 8
;
””8 9
}
‘‘ 
else
’’ 
{
÷÷ %
PlayerTwoCheckersUpdate
◊◊ /
(
◊◊/ 0
boardMatrixUpdate
◊◊0 A
,
◊◊A B
button
◊◊B H
)
◊◊H I
;
◊◊I J
}
ÿÿ 
}
ŸŸ 
}
⁄⁄ 
)
⁄⁄ 
;
⁄⁄ 
}
€€ 	
private
›› 
void
›› %
PlayerTwoCheckersUpdate
›› ,
(
››, -
Checker
››- 4
[
››4 5
,
››5 6
]
››6 7
boardMatrixUpdate
››8 I
,
››I J
Button
››J P
button
››Q W
)
››W X
{
ﬁﬁ 	
int
ﬂﬂ 
row
ﬂﬂ 
=
ﬂﬂ 
Grid
ﬂﬂ 
.
ﬂﬂ 
GetRow
ﬂﬂ !
(
ﬂﬂ! "
button
ﬂﬂ" (
)
ﬂﬂ( )
;
ﬂﬂ) *
int
‡‡ 
col
‡‡ 
=
‡‡ 
Grid
‡‡ 
.
‡‡ 
	GetColumn
‡‡ $
(
‡‡$ %
button
‡‡% +
)
‡‡+ ,
;
‡‡, -
if
‚‚ 
(
‚‚ 
boardMatrixUpdate
‚‚ !
[
‚‚! "
row
‚‚" %
,
‚‚% &
col
‚‚' *
]
‚‚* +
==
‚‚, .
Checker
‚‚/ 6
.
‚‚6 7
player2Checker
‚‚7 E
)
‚‚E F
{
„„ 
button
‰‰ 
.
‰‰ 
Content
‰‰ 
=
‰‰  
$str
‰‰! $
;
‰‰$ %
button
ÂÂ 
.
ÂÂ 
FontSize
ÂÂ 
=
ÂÂ  !
$num
ÂÂ" $
;
ÂÂ$ %
button
ÊÊ 
.
ÊÊ 

Foreground
ÊÊ !
=
ÊÊ" #
player2Color
ÊÊ$ 0
;
ÊÊ0 1
}
ÁÁ 
else
ËË 
{
ÈÈ 
if
ÍÍ 
(
ÍÍ 
boardMatrixUpdate
ÍÍ %
[
ÍÍ% &
row
ÍÍ& )
,
ÍÍ) *
col
ÍÍ+ .
]
ÍÍ. /
==
ÍÍ0 2
Checker
ÍÍ3 :
.
ÍÍ: ;
player2King
ÍÍ; F
)
ÍÍF G
{
ÎÎ 
button
ÏÏ 
.
ÏÏ 
Content
ÏÏ "
=
ÏÏ# $
$str
ÏÏ% (
;
ÏÏ( )
button
ÌÌ 
.
ÌÌ 
FontSize
ÌÌ #
=
ÌÌ$ %
$num
ÌÌ& (
;
ÌÌ( )
button
ÓÓ 
.
ÓÓ 

Foreground
ÓÓ %
=
ÓÓ& '
player2Color
ÓÓ( 4
;
ÓÓ4 5
}
ÔÔ 
else
 
{
ÒÒ 
button
ÚÚ 
.
ÚÚ 
Content
ÚÚ "
=
ÚÚ# $
$str
ÚÚ% '
;
ÚÚ' (
}
ÛÛ 
}
ÙÙ 
}
ıı 	
private
˜˜ 
bool
˜˜ "
Player1MoreJumpCheck
˜˜ )
(
˜˜) *
)
˜˜* +
{
¯¯ 	
if
˘˘ 
(
˘˘ 
	rowNumber
˘˘ 
-
˘˘ 
$num
˘˘ 
>=
˘˘  
$num
˘˘! "
&&
˘˘# %
columnNumber
˘˘& 2
-
˘˘3 4
$num
˘˘5 6
>=
˘˘7 9
$num
˘˘: ;
&&
˘˘< >
boardMatrix
˘˘? J
[
˘˘J K
	rowNumber
˘˘K T
-
˘˘U V
$num
˘˘W X
,
˘˘X Y
columnNumber
˘˘Z f
-
˘˘g h
$num
˘˘i j
]
˘˘j k
==
˘˘l n
Checker
˘˘o v
.
˘˘v w
	freeSpace˘˘w Ä
&&˘˘Å É
(
˙˙ 
boardMatrix
˙˙ 
[
˙˙ 
	rowNumber
˙˙ &
-
˙˙' (
$num
˙˙) *
,
˙˙* +
columnNumber
˙˙, 8
-
˙˙9 :
$num
˙˙; <
]
˙˙< =
==
˙˙> @
Checker
˙˙A H
.
˙˙H I
player2Checker
˙˙I W
||
˙˙X Z
boardMatrix
˙˙[ f
[
˙˙f g
	rowNumber
˙˙g p
-
˙˙q r
$num
˙˙s t
,
˙˙t u
columnNumber˙˙v Ç
-˙˙É Ñ
$num˙˙Ö Ü
]˙˙Ü á
==˙˙à ä
Checker˙˙ã í
.˙˙í ì
player2King˙˙ì û
)˙˙û ü
)˙˙ü †
{
˚˚ 
return
¸¸ 
true
¸¸ 
;
¸¸ 
}
˝˝ 
else
˛˛ 
{
ˇˇ 
if
ÄÄ 
(
ÄÄ 
	rowNumber
ÄÄ 
-
ÄÄ 
$num
ÄÄ  !
>=
ÄÄ" $
$num
ÄÄ% &
&&
ÄÄ' )
columnNumber
ÄÄ* 6
+
ÄÄ7 8
$num
ÄÄ9 :
<=
ÄÄ; =
$num
ÄÄ> ?
&&
ÄÄ@ B
boardMatrix
ÄÄC N
[
ÄÄN O
	rowNumber
ÄÄO X
-
ÄÄY Z
$num
ÄÄ[ \
,
ÄÄ\ ]
columnNumber
ÄÄ^ j
+
ÄÄk l
$num
ÄÄm n
]
ÄÄn o
==
ÄÄp r
Checker
ÄÄs z
.
ÄÄz {
	freeSpaceÄÄ{ Ñ
&&ÄÄÖ á
(
ÅÅ 
boardMatrix
ÅÅ  
[
ÅÅ  !
	rowNumber
ÅÅ! *
-
ÅÅ+ ,
$num
ÅÅ- .
,
ÅÅ. /
columnNumber
ÅÅ0 <
+
ÅÅ= >
$num
ÅÅ? @
]
ÅÅ@ A
==
ÅÅB D
Checker
ÅÅE L
.
ÅÅL M
player2Checker
ÅÅM [
||
ÅÅ\ ^
boardMatrix
ÅÅ_ j
[
ÅÅj k
	rowNumber
ÅÅk t
-
ÅÅu v
$num
ÅÅw x
,
ÅÅx y
columnNumberÅÅz Ü
+ÅÅá à
$numÅÅâ ä
]ÅÅä ã
==ÅÅå é
CheckerÅÅè ñ
.ÅÅñ ó
player2KingÅÅó ¢
)ÅÅ¢ £
)ÅÅ£ §
{
ÇÇ 
return
ÉÉ 
true
ÉÉ 
;
ÉÉ  
}
ÑÑ 
else
ÖÖ 
{
ÜÜ 
return
áá 
false
áá  
;
áá  !
}
àà 
}
ââ 
}
ää 	
private
åå 
bool
åå "
Player2MoreJumpCheck
åå )
(
åå) *
)
åå* +
{
çç 	
if
èè 
(
èè 
	rowNumber
èè 
+
èè 
$num
èè 
<=
èè  
$num
èè! "
&&
èè# %
columnNumber
èè& 2
+
èè3 4
$num
èè5 6
<=
èè7 9
$num
èè: ;
&&
èè< >
boardMatrix
èè? J
[
èèJ K
	rowNumber
èèK T
+
èèU V
$num
èèW X
,
èèX Y
columnNumber
èèZ f
+
èèg h
$num
èèi j
]
èèj k
==
èèl n
Checker
èèo v
.
èèv w
	freeSpaceèèw Ä
&&èèÅ É
(
êê 
boardMatrix
êê 
[
êê 
	rowNumber
êê &
+
êê' (
$num
êê) *
,
êê* +
columnNumber
êê, 8
+
êê9 :
$num
êê; <
]
êê< =
==
êê> @
Checker
êêA H
.
êêH I
player1Checker
êêI W
||
êêX Z
boardMatrix
êê[ f
[
êêf g
	rowNumber
êêg p
+
êêq r
$num
êês t
,
êêt u
columnNumberêêv Ç
+êêÉ Ñ
$numêêÖ Ü
]êêÜ á
==êêà ä
Checkerêêã í
.êêí ì
player1Kingêêì û
)êêû ü
)êêü †
{
ëë 
return
íí 
true
íí 
;
íí 
}
ìì 
else
îî 
{
ïï 
if
ññ 
(
ññ 
	rowNumber
ññ 
+
ññ 
$num
ññ  !
<=
ññ" $
$num
ññ% &
&&
ññ' )
columnNumber
ññ* 6
-
ññ7 8
$num
ññ9 :
>=
ññ; =
$num
ññ> ?
&&
ññ@ B
boardMatrix
ññC N
[
ññN O
	rowNumber
ññO X
+
ññY Z
$num
ññ[ \
,
ññ\ ]
columnNumber
ññ^ j
-
ññk l
$num
ññm n
]
ññn o
==
ññp r
Checker
ññs z
.
ññz {
	freeSpaceññ{ Ñ
&&ññÖ á
(
óó 
boardMatrix
óó 
[
óó 
	rowNumber
óó &
+
óó' (
$num
óó) *
,
óó* +
columnNumber
óó, 8
-
óó9 :
$num
óó; <
]
óó< =
==
óó> @
Checker
óóA H
.
óóH I
player1Checker
óóI W
||
óóX Z
boardMatrix
óó[ f
[
óóf g
	rowNumber
óóg p
+
óóq r
$num
óós t
,
óót u
columnNumberóóv Ç
-óóÉ Ñ
$numóóÖ Ü
]óóÜ á
==óóà ä
Checkeróóã í
.óóí ì
player1Kingóóì û
)óóû ü
)óóü †
{
òò 
return
ôô 
true
ôô 
;
ôô  
}
öö 
else
õõ 
{
úú 
return
ùù 
false
ùù  
;
ùù  !
}
ûû 
}
üü 
}
†† 	
private
¢¢ 
bool
¢¢  
KingJumpsAvaliable
¢¢ '
(
¢¢' (
)
¢¢( )
{
££ 	
if
§§ 
(
§§ 
player1Turn
§§ 
)
§§ 
{
•• 
if
¶¶ 
(
¶¶ 
	rowNumber
¶¶ 
-
¶¶ 
$num
¶¶  !
>=
¶¶" $
$num
¶¶% &
&&
¶¶' )
columnNumber
¶¶* 6
-
¶¶7 8
$num
¶¶9 :
>=
¶¶; =
$num
¶¶> ?
&&
¶¶@ B
boardMatrix
¶¶C N
[
¶¶N O
	rowNumber
¶¶O X
-
¶¶Y Z
$num
¶¶[ \
,
¶¶\ ]
columnNumber
¶¶^ j
-
¶¶k l
$num
¶¶m n
]
¶¶n o
==
¶¶p r
Checker
¶¶s z
.
¶¶z {
	freeSpace¶¶{ Ñ
&&¶¶Ö á
(
ßß 
boardMatrix
ßß  
[
ßß  !
	rowNumber
ßß! *
-
ßß+ ,
$num
ßß- .
,
ßß. /
columnNumber
ßß0 <
-
ßß= >
$num
ßß? @
]
ßß@ A
==
ßßB D
Checker
ßßE L
.
ßßL M
player2Checker
ßßM [
||
ßß\ ^
boardMatrix
ßß_ j
[
ßßj k
	rowNumber
ßßk t
-
ßßu v
$num
ßßw x
,
ßßx y
columnNumberßßz Ü
-ßßá à
$numßßâ ä
]ßßä ã
==ßßå é
Checkerßßè ñ
.ßßñ ó
player2Kingßßó ¢
)ßß¢ £
)ßß£ §
{
®® 
return
©© 
true
©© 
;
©©  
}
™™ 
else
´´ 
{
¨¨ 
return
≠≠ !
KingSecondCheckJump
≠≠ .
(
≠≠. /
)
≠≠/ 0
;
≠≠0 1
}
ÆÆ 
}
ØØ 
else
∞∞ 
{
±± 
return
≤≤ !
KingFourthCheckJump
≤≤ *
(
≤≤* +
)
≤≤+ ,
;
≤≤, -
}
≥≥ 
}
µµ 	
private
∑∑ 
bool
∑∑ !
KingSecondCheckJump
∑∑ (
(
∑∑( )
)
∑∑) *
{
∏∏ 	
if
ππ 
(
ππ 
	rowNumber
ππ 
-
ππ 
$num
ππ 
>=
ππ  
$num
ππ! "
&&
ππ# %
columnNumber
ππ& 2
+
ππ3 4
$num
ππ5 6
<=
ππ7 9
$num
ππ: ;
&&
ππ< >
boardMatrix
ππ? J
[
ππJ K
	rowNumber
ππK T
-
ππU V
$num
ππW X
,
ππX Y
columnNumber
ππZ f
+
ππg h
$num
ππi j
]
ππj k
==
ππl n
Checker
ππo v
.
ππv w
	freeSpaceππw Ä
&&ππÅ É
(
∫∫ 
boardMatrix
∫∫ $
[
∫∫$ %
	rowNumber
∫∫% .
-
∫∫/ 0
$num
∫∫1 2
,
∫∫2 3
columnNumber
∫∫4 @
+
∫∫A B
$num
∫∫C D
]
∫∫D E
==
∫∫F H
Checker
∫∫I P
.
∫∫P Q
player2Checker
∫∫Q _
||
∫∫` b
boardMatrix
∫∫c n
[
∫∫n o
	rowNumber
∫∫o x
-
∫∫y z
$num
∫∫{ |
,
∫∫| }
columnNumber∫∫~ ä
+∫∫ã å
$num∫∫ç é
]∫∫é è
==∫∫ê í
Checker∫∫ì ö
.∫∫ö õ
player2King∫∫õ ¶
)∫∫¶ ß
)∫∫ß ®
{
ªª 
return
ºº 
true
ºº 
;
ºº 
}
ΩΩ 
else
ææ 
{
øø 
if
¿¿ 
(
¿¿ 
	rowNumber
¿¿ 
+
¿¿ 
$num
¿¿  !
<=
¿¿" $
$num
¿¿% &
&&
¿¿' )
columnNumber
¿¿* 6
-
¿¿7 8
$num
¿¿9 :
>=
¿¿; =
$num
¿¿> ?
&&
¿¿@ B
boardMatrix
¿¿C N
[
¿¿N O
	rowNumber
¿¿O X
+
¿¿Y Z
$num
¿¿[ \
,
¿¿\ ]
columnNumber
¿¿^ j
-
¿¿k l
$num
¿¿m n
]
¿¿n o
==
¿¿p r
Checker
¿¿s z
.
¿¿z {
	freeSpace¿¿{ Ñ
&&¿¿Ö á
(
¡¡ 
boardMatrix
¡¡  
[
¡¡  !
	rowNumber
¡¡! *
+
¡¡+ ,
$num
¡¡- .
,
¡¡. /
columnNumber
¡¡0 <
-
¡¡= >
$num
¡¡? @
]
¡¡@ A
==
¡¡B D
Checker
¡¡E L
.
¡¡L M
player2Checker
¡¡M [
||
¡¡\ ^
boardMatrix
¡¡_ j
[
¡¡j k
	rowNumber
¡¡k t
+
¡¡u v
$num
¡¡w x
,
¡¡x y
columnNumber¡¡z Ü
-¡¡á à
$num¡¡â ä
]¡¡ä ã
==¡¡å é
Checker¡¡è ñ
.¡¡ñ ó
player2King¡¡ó ¢
)¡¡¢ £
)¡¡£ §
{
¬¬ 
return
√√ 
true
√√ 
;
√√  
}
ƒƒ 
else
≈≈ 
{
∆∆ 
return
««  
KingThirdCheckJump
«« -
(
««- .
)
««. /
;
««/ 0
}
»» 
}
…… 
}
   	
private
ÃÃ 
bool
ÃÃ  
KingThirdCheckJump
ÃÃ '
(
ÃÃ' (
)
ÃÃ( )
{
ÕÕ 	
if
ŒŒ 
(
ŒŒ 
	rowNumber
ŒŒ 
+
ŒŒ 
$num
ŒŒ 
<=
ŒŒ  
$num
ŒŒ! "
&&
ŒŒ# %
columnNumber
ŒŒ& 2
+
ŒŒ3 4
$num
ŒŒ5 6
<=
ŒŒ7 9
$num
ŒŒ: ;
&&
ŒŒ< >
boardMatrix
ŒŒ? J
[
ŒŒJ K
	rowNumber
ŒŒK T
+
ŒŒU V
$num
ŒŒW X
,
ŒŒX Y
columnNumber
ŒŒZ f
+
ŒŒg h
$num
ŒŒi j
]
ŒŒj k
==
ŒŒl n
Checker
ŒŒo v
.
ŒŒv w
	freeSpaceŒŒw Ä
&&ŒŒÅ É
(
œœ  
boardMatrix
œœ  +
[
œœ+ ,
	rowNumber
œœ, 5
+
œœ6 7
$num
œœ8 9
,
œœ9 :
columnNumber
œœ; G
+
œœH I
$num
œœJ K
]
œœK L
==
œœM O
Checker
œœP W
.
œœW X
player2Checker
œœX f
||
œœg i
boardMatrix
œœj u
[
œœu v
	rowNumber
œœv 
+œœÄ Å
$numœœÇ É
,œœÉ Ñ
columnNumberœœÖ ë
+œœí ì
$numœœî ï
]œœï ñ
==œœó ô
Checkerœœö °
.œœ° ¢
player2Kingœœ¢ ≠
)œœ≠ Æ
)œœÆ Ø
{
–– 
return
—— 
true
—— 
;
—— 
}
““ 
else
”” 
{
‘‘ 
return
’’ 
false
’’ 
;
’’ 
}
÷÷ 
}
◊◊ 	
private
ŸŸ 
bool
ŸŸ !
KingFourthCheckJump
ŸŸ (
(
ŸŸ( )
)
ŸŸ) *
{
⁄⁄ 	
if
€€ 
(
€€ 
	rowNumber
€€ 
-
€€ 
$num
€€ 
>=
€€  
$num
€€! "
&&
€€# %
columnNumber
€€& 2
-
€€3 4
$num
€€5 6
>=
€€7 9
$num
€€: ;
&&
€€< >
boardMatrix
€€? J
[
€€J K
	rowNumber
€€K T
-
€€U V
$num
€€W X
,
€€X Y
columnNumber
€€Z f
-
€€g h
$num
€€i j
]
€€j k
==
€€l n
Checker
€€o v
.
€€v w
	freeSpace€€w Ä
&&€€Å É
(
‹‹ 
boardMatrix
‹‹  
[
‹‹  !
	rowNumber
‹‹! *
-
‹‹+ ,
$num
‹‹- .
,
‹‹. /
columnNumber
‹‹0 <
-
‹‹= >
$num
‹‹? @
]
‹‹@ A
==
‹‹B D
Checker
‹‹E L
.
‹‹L M
player1Checker
‹‹M [
||
‹‹\ ^
boardMatrix
‹‹_ j
[
‹‹j k
	rowNumber
‹‹k t
-
‹‹u v
$num
‹‹w x
,
‹‹x y
columnNumber‹‹z Ü
-‹‹á à
$num‹‹â ä
]‹‹ä ã
==‹‹å é
Checker‹‹è ñ
.‹‹ñ ó
player1King‹‹ó ¢
)‹‹¢ £
)‹‹£ §
{
›› 
return
ﬁﬁ 
true
ﬁﬁ 
;
ﬁﬁ 
}
‡‡ 
else
·· 
{
‚‚ 
if
„„ 
(
„„ 
	rowNumber
„„ 
-
„„ 
$num
„„  !
>=
„„" $
$num
„„% &
&&
„„' )
columnNumber
„„* 6
+
„„7 8
$num
„„9 :
<=
„„; =
$num
„„> ?
&&
„„@ B
boardMatrix
„„C N
[
„„N O
	rowNumber
„„O X
-
„„Y Z
$num
„„[ \
,
„„\ ]
columnNumber
„„^ j
+
„„k l
$num
„„m n
]
„„n o
==
„„p r
Checker
„„s z
.
„„z {
	freeSpace„„{ Ñ
&&„„Ö á
(
‰‰ 
boardMatrix
‰‰  
[
‰‰  !
	rowNumber
‰‰! *
-
‰‰+ ,
$num
‰‰- .
,
‰‰. /
columnNumber
‰‰0 <
+
‰‰= >
$num
‰‰? @
]
‰‰@ A
==
‰‰B D
Checker
‰‰E L
.
‰‰L M
player1Checker
‰‰M [
||
‰‰\ ^
boardMatrix
‰‰_ j
[
‰‰j k
	rowNumber
‰‰k t
-
‰‰u v
$num
‰‰w x
,
‰‰x y
columnNumber‰‰z Ü
+‰‰á à
$num‰‰â ä
]‰‰ä ã
==‰‰å é
Checker‰‰è ñ
.‰‰ñ ó
player1King‰‰ó ¢
)‰‰¢ £
)‰‰£ §
{
ÂÂ 
return
ÊÊ 
true
ÊÊ 
;
ÊÊ  
}
ÁÁ 
else
ËË 
{
ÈÈ 
return
ÍÍ  
KingFifthCheckJump
ÍÍ -
(
ÍÍ- .
)
ÍÍ. /
;
ÍÍ/ 0
}
ÎÎ 
}
ÏÏ 
}
ÌÌ 	
private
ÔÔ 
bool
ÔÔ  
KingFifthCheckJump
ÔÔ '
(
ÔÔ' (
)
ÔÔ( )
{
 	
if
ÒÒ 
(
ÒÒ 
	rowNumber
ÒÒ 
-
ÒÒ 
$num
ÒÒ 
>=
ÒÒ  
$num
ÒÒ! "
&&
ÒÒ# %
columnNumber
ÒÒ& 2
-
ÒÒ3 4
$num
ÒÒ5 6
>=
ÒÒ7 9
$num
ÒÒ: ;
&&
ÒÒ< >
boardMatrix
ÒÒ? J
[
ÒÒJ K
	rowNumber
ÒÒK T
+
ÒÒU V
$num
ÒÒW X
,
ÒÒX Y
columnNumber
ÒÒZ f
-
ÒÒg h
$num
ÒÒi j
]
ÒÒj k
==
ÒÒl n
Checker
ÒÒo v
.
ÒÒv w
	freeSpaceÒÒw Ä
&&ÒÒÅ É
(
ÚÚ 
boardMatrix
ÚÚ $
[
ÚÚ$ %
	rowNumber
ÚÚ% .
+
ÚÚ/ 0
$num
ÚÚ1 2
,
ÚÚ2 3
columnNumber
ÚÚ4 @
-
ÚÚA B
$num
ÚÚC D
]
ÚÚD E
==
ÚÚF H
Checker
ÚÚI P
.
ÚÚP Q
player1Checker
ÚÚQ _
||
ÚÚ` b
boardMatrix
ÚÚc n
[
ÚÚn o
	rowNumber
ÚÚo x
+
ÚÚy z
$num
ÚÚ{ |
,
ÚÚ| }
columnNumberÚÚ~ ä
-ÚÚã å
$numÚÚç é
]ÚÚé è
==ÚÚê í
CheckerÚÚì ö
.ÚÚö õ
player1KingÚÚõ ¶
)ÚÚ¶ ß
)ÚÚß ®
{
ÛÛ 
return
ÙÙ 
true
ÙÙ 
;
ÙÙ 
}
ˆˆ 
else
˜˜ 
{
¯¯ 
if
˘˘ 
(
˘˘ 
	rowNumber
˘˘ 
-
˘˘ 
$num
˘˘  !
>=
˘˘" $
$num
˘˘% &
&&
˘˘' )
columnNumber
˘˘* 6
+
˘˘7 8
$num
˘˘9 :
<=
˘˘; =
$num
˘˘> ?
&&
˘˘@ B
boardMatrix
˘˘C N
[
˘˘N O
	rowNumber
˘˘O X
+
˘˘Y Z
$num
˘˘[ \
,
˘˘\ ]
columnNumber
˘˘^ j
+
˘˘k l
$num
˘˘m n
]
˘˘n o
==
˘˘p r
Checker
˘˘s z
.
˘˘z {
	freeSpace˘˘{ Ñ
&&˘˘Ö á
(
˙˙ 
boardMatrix
˙˙  
[
˙˙  !
	rowNumber
˙˙! *
+
˙˙+ ,
$num
˙˙- .
,
˙˙. /
columnNumber
˙˙0 <
+
˙˙= >
$num
˙˙? @
]
˙˙@ A
==
˙˙B D
Checker
˙˙E L
.
˙˙L M
player1Checker
˙˙M [
||
˙˙\ ^
boardMatrix
˙˙_ j
[
˙˙j k
	rowNumber
˙˙k t
+
˙˙u v
$num
˙˙w x
,
˙˙x y
columnNumber˙˙z Ü
+˙˙á à
$num˙˙â ä
]˙˙ä ã
==˙˙å é
Checker˙˙è ñ
.˙˙ñ ó
player1King˙˙ó ¢
)˙˙¢ £
)˙˙£ §
{
˚˚ 
return
¸¸ 
true
¸¸ 
;
¸¸  
}
˝˝ 
else
˛˛ 
{
ˇˇ 
return
ÄÄ 
false
ÄÄ  
;
ÄÄ  !
}
ÅÅ 
}
ÇÇ 
}
ÉÉ 	
private
ÖÖ 
bool
ÖÖ 
IsKingChecker
ÖÖ "
(
ÖÖ" #
)
ÖÖ# $
{
ÜÜ 	
if
áá 
(
áá 
	rowNumber
áá 
==
áá 
$num
áá 
&&
áá !
boardMatrix
áá" -
[
áá- .
previousRow
áá. 9
,
áá9 :
previousColumn
áá; I
]
ááI J
==
ááK M
Checker
ááN U
.
ááU V
player1Checker
ááV d
)
áád e
{
àà 
boardMatrix
ââ 
[
ââ 
	rowNumber
ââ %
,
ââ% &
columnNumber
ââ' 3
]
ââ3 4
=
ââ5 6
Checker
ââ7 >
.
ââ> ?
player1King
ââ? J
;
ââJ K
boardMatrix
ää 
[
ää 
previousRow
ää '
,
ää' (
previousColumn
ää) 7
]
ää7 8
=
ää9 :
Checker
ää; B
.
ääB C
	freeSpace
ääC L
;
ääL M'
UpdateCheckersGuiPosition
åå )
(
åå) *
boardMatrix
åå* 5
)
åå5 6
;
åå6 7
return
éé 
true
éé 
;
éé 
}
èè 
else
êê 
{
ëë 
if
íí 
(
íí 
	rowNumber
íí 
==
íí  
$num
íí! "
&&
íí# %
boardMatrix
íí& 1
[
íí1 2
previousRow
íí2 =
,
íí= >
previousColumn
íí? M
]
ííM N
==
ííO Q
Checker
ííR Y
.
ííY Z
player2Checker
ííZ h
)
ííh i
{
ìì 
boardMatrix
îî 
[
îî  
	rowNumber
îî  )
,
îî) *
columnNumber
îî+ 7
]
îî7 8
=
îî9 :
Checker
îî; B
.
îîB C
player2King
îîC N
;
îîN O
boardMatrix
ïï 
[
ïï  
previousRow
ïï  +
,
ïï+ ,
previousColumn
ïï- ;
]
ïï; <
=
ïï= >
Checker
ïï? F
.
ïïF G
	freeSpace
ïïG P
;
ïïP Q'
UpdateCheckersGuiPosition
óó -
(
óó- .
boardMatrix
óó. 9
)
óó9 :
;
óó: ;
return
ôô 
true
ôô 
;
ôô  
}
öö 
else
õõ 
{
úú 
return
ùù 
false
ùù  
;
ùù  !
}
ûû 
}
üü 
}
†† 	
private
¢¢ 
bool
¢¢ 
KingMove
¢¢ 
(
¢¢ 
)
¢¢ 
{
££ 	
if
§§ 
(
§§ 
boardMatrix
§§ 
[
§§ 
	rowNumber
§§ %
,
§§% &
columnNumber
§§' 3
]
§§3 4
==
§§5 7
Checker
§§8 ?
.
§§? @
	freeSpace
§§@ I
&&
§§J L
(
§§M N
	rowNumber
§§N W
-
§§X Y
previousRow
§§Z e
==
§§f h
$num
§§i j
||
§§k m
	rowNumber
§§n w
-
§§x y
previousRow§§z Ö
==§§Ü à
-§§â ä
$num§§ä ã
)§§ã å
&&
•• 
(
•• 
columnNumber
••  
-
••! "
previousColumn
••# 1
==
••2 4
$num
••5 6
||
••7 9
columnNumber
••: F
-
••G H
previousColumn
••I W
==
••X Z
-
••[ \
$num
••\ ]
)
••] ^
)
••^ _
{
¶¶ 
boardMatrix
ßß 
[
ßß 
	rowNumber
ßß %
,
ßß% &
columnNumber
ßß' 3
]
ßß3 4
=
ßß5 6
boardMatrix
ßß7 B
[
ßßB C
previousRow
ßßC N
,
ßßN O
previousColumn
ßßP ^
]
ßß^ _
;
ßß_ `
boardMatrix
®® 
[
®® 
previousRow
®® '
,
®®' (
previousColumn
®®) 7
]
®®7 8
=
®®9 :
Checker
®®; B
.
®®B C
	freeSpace
®®C L
;
®®L M
return
™™ 
true
™™ 
;
™™ 
}
´´ 
else
¨¨ 
{
≠≠ 
return
ÆÆ 
false
ÆÆ 
;
ÆÆ 
}
ØØ 
}
∞∞ 	
private
≤≤ 
bool
≤≤ 
ValidateKingJump
≤≤ %
(
≤≤% &
)
≤≤& '
{
≥≥ 	
if
¥¥ 
(
¥¥ 
player1Turn
¥¥ 
)
¥¥ 
{
µµ 
if
∂∂ 
(
∂∂ 
boardMatrix
∂∂ 
[
∂∂  
	rowNumber
∂∂  )
,
∂∂) *
columnNumber
∂∂+ 7
]
∂∂7 8
==
∂∂9 ;
Checker
∂∂< C
.
∂∂C D
	freeSpace
∂∂D M
&&
∂∂N P
	rowNumber
∂∂Q Z
-
∂∂[ \
previousRow
∂∂] h
==
∂∂i k
$num
∂∂l m
&&
∂∂n p
columnNumber
∂∂q }
-
∂∂~ 
previousColumn∂∂Ä é
==∂∂è ë
$num∂∂í ì
)∂∂ì î
{
∑∑ 
if
∏∏ 
(
∏∏ 
boardMatrix
∏∏ #
[
∏∏# $
	rowNumber
∏∏$ -
-
∏∏. /
$num
∏∏0 1
,
∏∏1 2
columnNumber
∏∏3 ?
-
∏∏@ A
$num
∏∏B C
]
∏∏C D
==
∏∏E G
Checker
∏∏H O
.
∏∏O P
player2Checker
∏∏P ^
||
∏∏_ a
boardMatrix
∏∏b m
[
∏∏m n
	rowNumber
∏∏n w
-
∏∏x y
$num
∏∏z {
,
∏∏{ |
columnNumber∏∏} â
-∏∏ä ã
$num∏∏å ç
]∏∏ç é
==∏∏è ë
Checker∏∏í ô
.∏∏ô ö
player2King∏∏ö •
)∏∏• ¶
{
ππ 
return
∫∫ 
true
∫∫ #
;
∫∫# $
}
ªª 
else
ºº 
{
ΩΩ 
return
ææ 
false
ææ $
;
ææ$ %
}
øø 
}
¡¡ 
else
¬¬ 
{
√√ 
return
ƒƒ $
SecondValidateKingJump
ƒƒ 1
(
ƒƒ1 2
)
ƒƒ2 3
;
ƒƒ3 4
}
≈≈ 
}
∆∆ 
else
«« 
{
»» 
return
…… *
ValidateSecondPlayerKingJump
…… 3
(
……3 4
)
……4 5
;
……5 6
}
   
}
ÃÃ 	
private
ŒŒ 
bool
ŒŒ $
SecondValidateKingJump
ŒŒ +
(
ŒŒ+ ,
)
ŒŒ, -
{
œœ 	
if
–– 
(
–– 
boardMatrix
–– 
[
–– 
	rowNumber
–– %
,
––% &
columnNumber
––' 3
]
––3 4
==
––5 7
Checker
––8 ?
.
––? @
	freeSpace
––@ I
&&
––J L
	rowNumber
––M V
-
––W X
previousRow
––Y d
==
––e g
$num
––h i
&&
––j l
columnNumber
––m y
-
––z {
previousColumn––| ä
==––ã ç
-––é è
$num––è ê
)––ê ë
{
—— 
if
““ 
(
““ 
boardMatrix
““ 
[
““  
	rowNumber
““  )
-
““* +
$num
““, -
,
““- .
columnNumber
““/ ;
+
““< =
$num
““> ?
]
““? @
==
““A C
Checker
““D K
.
““K L
player2Checker
““L Z
||
““[ ]
boardMatrix
““^ i
[
““i j
	rowNumber
““j s
-
““t u
$num
““v w
,
““w x
columnNumber““y Ö
+““Ü á
$num““à â
]““â ä
==““ã ç
Checker““é ï
.““ï ñ
player2King““ñ °
)““° ¢
{
”” 
return
‘‘ 
true
‘‘ 
;
‘‘  
}
’’ 
else
÷÷ 
{
◊◊ 
return
ÿÿ 
false
ÿÿ  
;
ÿÿ  !
}
ŸŸ 
}
€€ 
else
‹‹ 
{
›› 
return
ﬂﬂ #
ThirdValidateKingJump
ﬂﬂ ,
(
ﬂﬂ, -
)
ﬂﬂ- .
;
ﬂﬂ. /
}
‡‡ 
}
·· 	
private
„„ 
bool
„„ #
ThirdValidateKingJump
„„ *
(
„„* +
)
„„+ ,
{
‰‰ 	
if
ÂÂ 
(
ÂÂ 
boardMatrix
ÂÂ 
[
ÂÂ 
	rowNumber
ÂÂ %
,
ÂÂ% &
columnNumber
ÂÂ' 3
]
ÂÂ3 4
==
ÂÂ5 7
Checker
ÂÂ8 ?
.
ÂÂ? @
	freeSpace
ÂÂ@ I
&&
ÂÂJ L
	rowNumber
ÂÂM V
-
ÂÂW X
previousRow
ÂÂY d
==
ÂÂe g
-
ÂÂh i
$num
ÂÂi j
&&
ÂÂk m
columnNumber
ÂÂn z
-
ÂÂ{ |
previousColumnÂÂ} ã
==ÂÂå é
$numÂÂè ê
)ÂÂê ë
{
ÊÊ 
if
ÁÁ 
(
ÁÁ 
boardMatrix
ÁÁ 
[
ÁÁ  
	rowNumber
ÁÁ  )
+
ÁÁ* +
$num
ÁÁ, -
,
ÁÁ- .
columnNumber
ÁÁ/ ;
-
ÁÁ< =
$num
ÁÁ> ?
]
ÁÁ? @
==
ÁÁA C
Checker
ÁÁD K
.
ÁÁK L
player2Checker
ÁÁL Z
||
ÁÁ[ ]
boardMatrix
ÁÁ^ i
[
ÁÁi j
	rowNumber
ÁÁj s
+
ÁÁt u
$num
ÁÁv w
,
ÁÁw x
columnNumberÁÁy Ö
-ÁÁÜ á
$numÁÁà â
]ÁÁâ ä
==ÁÁã ç
CheckerÁÁé ï
.ÁÁï ñ
player2KingÁÁñ °
)ÁÁ° ¢
{
ËË 
return
ÈÈ 
true
ÈÈ 
;
ÈÈ  
}
ÍÍ 
else
ÎÎ 
{
ÏÏ 
return
ÌÌ 
false
ÌÌ  
;
ÌÌ  !
}
ÓÓ 
}
 
else
ÒÒ 
{
ÚÚ 
return
ÛÛ $
FourthValidateKingJump
ÛÛ -
(
ÛÛ- .
)
ÛÛ. /
;
ÛÛ/ 0
}
ÙÙ 
}
ıı 	
private
˜˜ 
bool
˜˜ $
FourthValidateKingJump
˜˜ +
(
˜˜+ ,
)
˜˜, -
{
¯¯ 	
if
˘˘ 
(
˘˘ 
boardMatrix
˘˘ 
[
˘˘ 
	rowNumber
˘˘ %
,
˘˘% &
columnNumber
˘˘' 3
]
˘˘3 4
==
˘˘5 7
Checker
˘˘8 ?
.
˘˘? @
	freeSpace
˘˘@ I
&&
˘˘J L
	rowNumber
˘˘M V
-
˘˘W X
previousRow
˘˘Y d
==
˘˘e g
-
˘˘h i
$num
˘˘i j
&&
˘˘k m
columnNumber
˘˘n z
-
˘˘{ |
previousColumn˘˘} ã
==˘˘å é
-˘˘è ê
$num˘˘ê ë
)˘˘ë í
{
˙˙ 
if
˚˚ 
(
˚˚ 
boardMatrix
˚˚ 
[
˚˚  
	rowNumber
˚˚  )
+
˚˚* +
$num
˚˚, -
,
˚˚- .
columnNumber
˚˚/ ;
+
˚˚< =
$num
˚˚> ?
]
˚˚? @
==
˚˚A C
Checker
˚˚D K
.
˚˚K L
player2Checker
˚˚L Z
)
˚˚Z [
{
¸¸ 
return
˝˝ 
true
˝˝ 
;
˝˝  
}
˛˛ 
else
ˇˇ 
{
ÄÄ 
return
ÅÅ 
false
ÅÅ  
;
ÅÅ  !
}
ÇÇ 
}
ÉÉ 
else
ÑÑ 
{
ÖÖ 
return
ÜÜ 
false
ÜÜ 
;
ÜÜ 
}
áá 
}
àà 	
private
ää 
bool
ää *
ValidateSecondPlayerKingJump
ää 1
(
ää1 2
)
ää2 3
{
ãã 	
if
åå 
(
åå 
boardMatrix
åå 
[
åå 
	rowNumber
åå %
,
åå% &
columnNumber
åå' 3
]
åå3 4
==
åå5 7
Checker
åå8 ?
.
åå? @
	freeSpace
åå@ I
&&
ååJ L
	rowNumber
ååM V
-
ååW X
previousRow
ååY d
==
ååe g
$num
ååh i
&&
ååj l
columnNumber
ååm y
-
ååz {
previousColumnåå| ä
==ååã ç
$numååé è
)ååè ê
{
çç 
if
éé 
(
éé 
boardMatrix
éé 
[
éé  
	rowNumber
éé  )
-
éé* +
$num
éé, -
,
éé- .
columnNumber
éé/ ;
-
éé< =
$num
éé> ?
]
éé? @
==
ééA C
Checker
ééD K
.
ééK L
player1Checker
ééL Z
||
éé[ ]
boardMatrix
éé^ i
[
ééi j
	rowNumber
ééj s
-
éét u
$num
éév w
,
ééw x
columnNumberééy Ö
-ééÜ á
$numééà â
]ééâ ä
==ééã ç
Checkerééé ï
.ééï ñ
player1Kingééñ °
)éé° ¢
{
èè 
return
êê 
true
êê 
;
êê  
}
ëë 
else
íí 
{
ìì 
return
îî 
false
îî  
;
îî  !
}
ïï 
}
óó 
else
òò 
{
ôô 
return
öö ,
SecondValidateSecondPlayerKing
öö 5
(
öö5 6
)
öö6 7
;
öö7 8
}
õõ 
}
úú 	
private
ûû 
bool
ûû ,
SecondValidateSecondPlayerKing
ûû 3
(
ûû3 4
)
ûû4 5
{
üü 	
if
°° 
(
°° 
boardMatrix
°° 
[
°° 
	rowNumber
°° %
,
°°% &
columnNumber
°°' 3
]
°°3 4
==
°°5 7
Checker
°°8 ?
.
°°? @
	freeSpace
°°@ I
&&
°°J L
	rowNumber
°°M V
-
°°W X
previousRow
°°Y d
==
°°e g
$num
°°h i
&&
°°j l
columnNumber
°°m y
-
°°z {
previousColumn°°| ä
==°°ã ç
-°°é è
$num°°è ê
)°°ê ë
{
¢¢ 
if
££ 
(
££ 
boardMatrix
££ 
[
££  
	rowNumber
££  )
-
££* +
$num
££, -
,
££- .
columnNumber
££/ ;
+
££< =
$num
££> ?
]
££? @
==
££A C
Checker
££D K
.
££K L
player1Checker
££L Z
||
££[ ]
boardMatrix
££^ i
[
££i j
	rowNumber
££j s
-
££t u
$num
££v w
,
££w x
columnNumber££y Ö
+££Ü á
$num££à â
]££â ä
==££ã ç
Checker££é ï
.££ï ñ
player1King££ñ °
)££° ¢
{
§§ 
return
•• 
true
•• 
;
••  
}
¶¶ 
else
ßß 
{
®® 
return
©© 
false
©©  
;
©©  !
}
™™ 
}
¨¨ 
else
≠≠ 
{
ÆÆ 
return
ØØ +
ThirdValidateSecondPlayerKing
ØØ 4
(
ØØ4 5
)
ØØ5 6
;
ØØ6 7
}
∞∞ 
}
≤≤ 	
private
¥¥ 
bool
¥¥ +
ThirdValidateSecondPlayerKing
¥¥ 2
(
¥¥2 3
)
¥¥3 4
{
µµ 	
if
∂∂ 
(
∂∂ 
boardMatrix
∂∂ 
[
∂∂ 
	rowNumber
∂∂ %
,
∂∂% &
columnNumber
∂∂' 3
]
∂∂3 4
==
∂∂5 7
Checker
∂∂8 ?
.
∂∂? @
	freeSpace
∂∂@ I
&&
∂∂J L
	rowNumber
∂∂M V
-
∂∂W X
previousRow
∂∂Y d
==
∂∂e g
-
∂∂h i
$num
∂∂i j
&&
∂∂k m
columnNumber
∂∂n z
-
∂∂{ |
previousColumn∂∂} ã
==∂∂å é
$num∂∂è ê
)∂∂ê ë
{
∑∑ 
if
∏∏ 
(
∏∏ 
boardMatrix
∏∏ 
[
∏∏  
	rowNumber
∏∏  )
+
∏∏* +
$num
∏∏, -
,
∏∏- .
columnNumber
∏∏/ ;
-
∏∏< =
$num
∏∏> ?
]
∏∏? @
==
∏∏A C
Checker
∏∏D K
.
∏∏K L
player1Checker
∏∏L Z
||
∏∏[ ]
boardMatrix
∏∏^ i
[
∏∏i j
	rowNumber
∏∏j s
+
∏∏t u
$num
∏∏v w
,
∏∏w x
columnNumber∏∏y Ö
-∏∏Ü á
$num∏∏à â
]∏∏â ä
==∏∏ã ç
Checker∏∏é ï
.∏∏ï ñ
player1King∏∏ñ °
)∏∏° ¢
{
ππ 
return
∫∫ 
true
∫∫ 
;
∫∫  
}
ªª 
else
ºº 
{
ΩΩ 
return
ææ 
false
ææ  
;
ææ  !
}
øø 
}
¡¡ 
else
¬¬ 
{
√√ 
return
ƒƒ ,
FourthValidateSecondPlayerKing
ƒƒ 5
(
ƒƒ5 6
)
ƒƒ6 7
;
ƒƒ7 8
}
≈≈ 
}
∆∆ 	
private
»» 
bool
»» ,
FourthValidateSecondPlayerKing
»» 3
(
»»3 4
)
»»4 5
{
…… 	
if
   
(
   
boardMatrix
   
[
   
	rowNumber
   %
,
  % &
columnNumber
  ' 3
]
  3 4
==
  5 7
Checker
  8 ?
.
  ? @
	freeSpace
  @ I
&&
  J L
	rowNumber
  M V
-
  W X
previousRow
  Y d
==
  e g
-
  h i
$num
  i j
&&
  k m
columnNumber
  n z
-
  { |
previousColumn  } ã
==  å é
-  è ê
$num  ê ë
)  ë í
{
ÀÀ 
if
ÃÃ 
(
ÃÃ 
boardMatrix
ÃÃ 
[
ÃÃ  
	rowNumber
ÃÃ  )
+
ÃÃ* +
$num
ÃÃ, -
,
ÃÃ- .
columnNumber
ÃÃ/ ;
+
ÃÃ< =
$num
ÃÃ> ?
]
ÃÃ? @
==
ÃÃA C
Checker
ÃÃD K
.
ÃÃK L
player1Checker
ÃÃL Z
||
ÃÃ[ ]
boardMatrix
ÃÃ^ i
[
ÃÃi j
	rowNumber
ÃÃj s
+
ÃÃt u
$num
ÃÃv w
,
ÃÃw x
columnNumberÃÃy Ö
+ÃÃÜ á
$numÃÃà â
]ÃÃâ ä
==ÃÃã ç
CheckerÃÃé ï
.ÃÃï ñ
player1KingÃÃñ °
)ÃÃ° ¢
{
ÕÕ 
return
ŒŒ 
true
ŒŒ 
;
ŒŒ  
}
œœ 
else
–– 
{
—— 
return
““ 
false
““  
;
““  !
}
”” 
}
‘‘ 
else
’’ 
{
÷÷ 
return
◊◊ 
false
◊◊ 
;
◊◊ 
}
ÿÿ 
}
ŸŸ 	
private
€€ 
void
€€ 
EndTurn
€€ 
(
€€ 
)
€€ 
{
‹‹ 	
if
›› 
(
›› !
player2CheckerCount
›› #
==
››$ &
$num
››' (
||
››) +!
player1CheckerCount
››, ?
==
››@ B
$num
››C D
)
››D E
{
ﬁﬁ 
GameManager
ﬂﬂ 
.
ﬂﬂ 
EndPlayerGame
ﬂﬂ )
(
ﬂﬂ) *
actualMatch
ﬂﬂ* 5
.
ﬂﬂ5 6
matchActiveNumber
ﬂﬂ6 G
,
ﬂﬂG H
localPlayerNumber
ﬂﬂI Z
,
ﬂﬂZ [!
player2CheckerCount
ﬂﬂ\ o
,
ﬂﬂo p"
player1CheckerCountﬂﬂq Ñ
)ﬂﬂÑ Ö
;ﬂﬂÖ Ü

FinishGame
‡‡ 
(
‡‡ !
player2CheckerCount
‡‡ .
,
‡‡. /!
player1CheckerCount
‡‡0 C
)
‡‡C D
;
‡‡D E
}
·· 
else
‚‚ 
{
„„ 
Board
ÂÂ 
.
ÂÂ 
	IsEnabled
ÂÂ 
=
ÂÂ  !
false
ÂÂ" '
;
ÂÂ' (

passButton
ÊÊ 
.
ÊÊ 
	IsEnabled
ÊÊ $
=
ÊÊ% &
false
ÊÊ' ,
;
ÊÊ, -
IsKingChecker
ÁÁ 
(
ÁÁ 
)
ÁÁ 
;
ÁÁ  $
checkPlayerSecondClick
ÈÈ &
=
ÈÈ' (
!
ÈÈ) *$
checkPlayerSecondClick
ÈÈ* @
;
ÈÈ@ A
if
ÎÎ 
(
ÎÎ 
player1Turn
ÎÎ 
)
ÎÎ  
{
ÏÏ 
currentPlayer
ÌÌ !
.
ÌÌ! "
Text
ÌÌ" &
=
ÌÌ' (
$str
ÌÌ) 8
;
ÌÌ8 9
GameManager
ÓÓ 
.
ÓÓ  
Player1TurnResult
ÓÓ  1
(
ÓÓ1 2
boardMatrix
ÓÓ2 =
,
ÓÓ= >
actualMatch
ÓÓ? J
.
ÓÓJ K
matchActiveNumber
ÓÓK \
,
ÓÓ\ ]!
player2CheckerCount
ÓÓ^ q
,
ÓÓq r"
player1CheckerCountÓÓs Ü
)ÓÓÜ á
;ÓÓá à
}
ÔÔ 
else
 
{
ÒÒ 
currentPlayer
ÛÛ !
.
ÛÛ! "
Text
ÛÛ" &
=
ÛÛ' (
$str
ÛÛ) 8
;
ÛÛ8 9
GameManager
ÙÙ 
.
ÙÙ  
Player2TurnResult
ÙÙ  1
(
ÙÙ1 2
boardMatrix
ÙÙ2 =
,
ÙÙ= >
actualMatch
ÙÙ? J
.
ÙÙJ K
matchActiveNumber
ÙÙK \
,
ÙÙ\ ]!
player2CheckerCount
ÙÙ^ q
,
ÙÙq r"
player1CheckerCountÙÙs Ü
)ÙÙÜ á
;ÙÙá à
}
ıı 
player1Turn
ˆˆ 
=
ˆˆ 
!
ˆˆ 
player1Turn
ˆˆ *
;
ˆˆ* +
}
˜˜ 
}
¯¯ 	
public
˙˙ 
void
˙˙ !
EndSecondPlayerTurn
˙˙ '
(
˙˙' (
)
˙˙( )
{
˚˚ 	
if
¸¸ 
(
¸¸ 
player1Turn
¸¸ 
)
¸¸ 
{
˝˝ 
Board
˛˛ 
.
˛˛ 
	IsEnabled
˛˛ 
=
˛˛  !
true
˛˛" &
;
˛˛& '

passButton
ˇˇ 
.
ˇˇ 
	IsEnabled
ˇˇ $
=
ˇˇ% &
true
ˇˇ' +
;
ˇˇ+ ,
player1Turn
ÄÄ 
=
ÄÄ 
!
ÄÄ 
player1Turn
ÄÄ *
;
ÄÄ* +
currentPlayer
ÅÅ 
.
ÅÅ 
Text
ÅÅ "
=
ÅÅ# $
$str
ÅÅ% 4
;
ÅÅ4 5
}
ÇÇ 
else
ÉÉ 
{
ÑÑ 
Board
ÖÖ 
.
ÖÖ 
	IsEnabled
ÖÖ 
=
ÖÖ  !
true
ÖÖ" &
;
ÖÖ& '

passButton
ÜÜ 
.
ÜÜ 
	IsEnabled
ÜÜ $
=
ÜÜ% &
true
ÜÜ' +
;
ÜÜ+ ,
player1Turn
áá 
=
áá 
true
áá "
;
áá" #
currentPlayer
àà 
.
àà 
Text
àà "
=
àà# $
$str
àà% 4
;
àà4 5
}
ââ 
}
åå 	
private
éé 
void
éé 
InvalidClick
éé !
(
éé! "
)
éé" #
{
èè 	$
checkPlayerSecondClick
êê "
=
êê# $
false
êê% *
;
êê* + 
DismissButtonClick
ëë 
(
ëë 
previousButton
ëë -
)
ëë- .
;
ëë. /
}
íí 	
public
îî 
void
îî 

FinishGame
îî 
(
îî 
int
îî "
playerTwoCheckers
îî# 4
,
îî4 5
int
îî6 9
playerOneCheckers
îî: K
)
îîK L
{
ïï 	
if
ññ 
(
ññ 
playerOneCheckers
ññ !
==
ññ" $
$num
ññ% &
)
ññ& '
{
óó 

MessageBox
òò 
.
òò 
Show
òò 
(
òò  
$str
òò  2
,
òò2 3
$str
òò4 ?
)
òò? @
;
òò@ A
matchEnd
ôô 
=
ôô 
true
ôô 
;
ôô  
}
öö 
else
õõ 
{
úú 

MessageBox
ûû 
.
ûû 
Show
ûû 
(
ûû  
$str
ûû  2
,
ûû2 3
$str
ûû4 ?
)
ûû? @
;
ûû@ A
matchEnd
üü 
=
üü 
true
üü 
;
üü  
}
†† 
Menu
¢¢ 
menu
¢¢ 
=
¢¢ 
new
¢¢ 
Menu
¢¢  
(
¢¢  !
localPlayer
¢¢! ,
)
¢¢, -
;
¢¢- .
menu
££ 
.
££ 
Show
££ 
(
££ 
)
££ 
;
££ 
Game
§§ 
game
§§ 
=
§§ 
App
§§ 
.
§§ 
Current
§§ #
.
§§# $
Windows
§§$ +
.
§§+ ,
OfType
§§, 2
<
§§2 3
Game
§§3 7
>
§§7 8
(
§§8 9
)
§§9 :
.
§§: ;
FirstOrDefault
§§; I
(
§§I J
)
§§J K
;
§§K L
game
•• 
.
•• 
Close
•• 
(
•• 
)
•• 
;
•• 
}
¶¶ 	
public
®® 
void
®® !
UpdateCheckersCount
®® '
(
®®' (
int
®®( +
playerTwoCheckers
®®, =
,
®®= >
int
®®? B
playerOneCheckers
®®C T
)
®®T U
{
©© 	
this
™™ 
.
™™ !
player2CheckerCount
™™ $
=
™™% &
playerTwoCheckers
™™' 8
;
™™8 9
this
´´ 
.
´´ !
player1CheckerCount
´´ $
=
´´% &
playerOneCheckers
´´' 8
;
´´8 9
}
≠≠ 	
public
ØØ 
void
ØØ 
UpdateMatchNumber
ØØ %
(
ØØ% &
int
ØØ& )
newActiveNumber
ØØ* 9
)
ØØ9 :
{
∞∞ 	
actualMatch
±± 
.
±± 
matchActiveNumber
±± )
=
±±* +
newActiveNumber
±±, ;
;
±±; <
}
≤≤ 	
public
¥¥ 
void
¥¥ 
SendMessage
¥¥ 
(
¥¥  
object
¥¥  &
sender
¥¥' -
,
¥¥- .
RoutedEventArgs
¥¥/ >
e
¥¥? @
)
¥¥@ A
{
µµ 	
GameManager
∂∂ 
.
∂∂ 
SendMessage
∂∂ #
(
∂∂# $
actualMatch
∂∂$ /
.
∂∂/ 0
matchActiveNumber
∂∂0 A
,
∂∂A B
localPlayerNumber
∂∂C T
,
∂∂T U
message
∂∂V ]
.
∂∂] ^
Text
∂∂^ b
)
∂∂b c
;
∂∂c d
messagesList
∑∑ 
.
∑∑ 
Add
∑∑ 
(
∑∑ 
$str
∑∑ &
+
∑∑' (
localPlayerNumber
∑∑) :
+
∑∑; <
$str
∑∑= A
+
∑∑B C
message
∑∑D K
.
∑∑K L
Text
∑∑L P
)
∑∑P Q
;
∑∑Q R
message
∏∏ 
.
∏∏ 
Clear
∏∏ 
(
∏∏ 
)
∏∏ 
;
∏∏ 
messageButton
ππ 
.
ππ 
	IsEnabled
ππ #
=
ππ$ %
false
ππ& +
;
ππ+ ,
}
∫∫ 	
public
ºº 
void
ºº 
RecieveMessage
ºº "
(
ºº" #
string
ºº# )
	newMesage
ºº* 3
,
ºº3 4
string
ºº5 ;
playerSource
ºº< H
)
ººH I
{
ΩΩ 	
messagesList
ææ 
.
ææ 
Add
ææ 
(
ææ 
playerSource
ææ )
+
ææ* +
	newMesage
ææ, 5
)
ææ5 6
;
ææ6 7
}
øø 	
private
¡¡ 
void
¡¡ 
ReportPlayer
¡¡ !
(
¡¡! "
object
¡¡" (
sender
¡¡) /
,
¡¡/ 0
RoutedEventArgs
¡¡1 @
e
¡¡A B
)
¡¡B C
{
¬¬ 	
if
√√ 
(
√√ 
!
√√ 
ReportWindowOpen
√√ !
)
√√" #
{
ƒƒ 
Windows
≈≈ 
.
≈≈ 
ReportWindow
≈≈ $
reportWindow
≈≈% 1
=
≈≈2 3
new
≈≈4 7
Windows
≈≈8 ?
.
≈≈? @
ReportWindow
≈≈@ L
(
≈≈L M
localPlayerNumber
≈≈M ^
,
≈≈^ _
actualMatch
≈≈` k
.
≈≈k l
matchActiveNumber
≈≈l }
)
≈≈} ~
;
≈≈~ 
reportWindow
∆∆ 
.
∆∆ 
Show
∆∆ !
(
∆∆! "
)
∆∆" #
;
∆∆# $
ReportWindowOpen
««  
=
««! "
true
««# '
;
««' (
}
»» 
}
…… 	
private
ÀÀ 
void
ÀÀ !
EnableMessageButton
ÀÀ (
(
ÀÀ( )
object
ÀÀ) /
sender
ÀÀ0 6
,
ÀÀ6 7
RoutedEventArgs
ÀÀ8 G
e
ÀÀH I
)
ÀÀI J
{
ÃÃ 	
if
ÕÕ 
(
ÕÕ 
!
ÕÕ 
string
ÕÕ 
.
ÕÕ  
IsNullOrWhiteSpace
ÕÕ *
(
ÕÕ* +
message
ÕÕ+ 2
.
ÕÕ2 3
Text
ÕÕ3 7
)
ÕÕ7 8
)
ÕÕ8 9
{
ŒŒ 
messageButton
œœ 
.
œœ 
	IsEnabled
œœ '
=
œœ( )
true
œœ* .
;
œœ. /
}
–– 
}
—— 	
public
”” 
void
”” 
CloseReportWindow
”” %
(
””% &
)
””& '
{
‘‘ 	
reportButton
’’ 
.
’’ 
	IsEnabled
’’ "
=
’’# $
false
’’% *
;
’’* +
reportButton
÷÷ 
.
÷÷ 

Visibility
÷÷ #
=
÷÷$ %

Visibility
÷÷& 0
.
÷÷0 1
Hidden
÷÷1 7
;
÷÷7 8
}
◊◊ 	
private
ŸŸ 
void
ŸŸ 
WindowClose
ŸŸ  
(
ŸŸ  !
object
ŸŸ! '
sender
ŸŸ( .
,
ŸŸ. /
System
ŸŸ0 6
.
ŸŸ6 7
ComponentModel
ŸŸ7 E
.
ŸŸE F
CancelEventArgs
ŸŸF U
e
ŸŸV W
)
ŸŸW X
{
⁄⁄ 	
if
€€ 
(
€€ 
matchEnd
€€ 
)
€€ 
{
‹‹ 
e
›› 
.
›› 
Cancel
›› 
=
›› 
false
››  
;
››  !
}
ﬁﬁ 
else
ﬂﬂ 
{
‡‡ 
e
·· 
.
·· 
Cancel
·· 
=
·· 
true
·· 
;
··  
}
‚‚ 
}
„„ 	
public
ÂÂ 
void
ÂÂ 
AbandonedGame
ÂÂ !
(
ÂÂ! "
)
ÂÂ" #
{
ÊÊ 	
matchEnd
ÁÁ 
=
ÁÁ 
true
ÁÁ 
;
ÁÁ 
if
ÈÈ 
(
ÈÈ 
localPlayerNumber
ÈÈ !
==
ÈÈ" $
$num
ÈÈ% &
)
ÈÈ& '
{
ÍÍ 
Menu
ÎÎ 
menu
ÎÎ 
=
ÎÎ 
new
ÎÎ 
Menu
ÎÎ  $
(
ÎÎ$ %
actualMatch
ÎÎ% 0
.
ÎÎ0 1
playerOneData
ÎÎ1 >
)
ÎÎ> ?
;
ÎÎ? @
menu
ÏÏ 
.
ÏÏ 
Show
ÏÏ 
(
ÏÏ 
)
ÏÏ 
;
ÏÏ 
}
ÌÌ 
else
ÓÓ 
{
ÔÔ 
Menu
 
menu
 
=
 
new
 
Menu
  $
(
$ %
actualMatch
% 0
.
0 1
playerTwoData
1 >
)
> ?
;
? @
menu
ÒÒ 
.
ÒÒ 
Show
ÒÒ 
(
ÒÒ 
)
ÒÒ 
;
ÒÒ 
}
ÚÚ 
Windows
ÛÛ 
.
ÛÛ !
DialogWindowManager
ÛÛ '
.
ÛÛ' (
ShowErrorWindow
ÛÛ( 7
(
ÛÛ7 8
$str
ÛÛ8 \
)
ÛÛ\ ]
;
ÛÛ] ^
this
ÙÙ 
.
ÙÙ 
Close
ÙÙ 
(
ÙÙ 
)
ÙÙ 
;
ÙÙ 
}
ıı 	
}
ˆˆ 
}˜˜ ˆ
`D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\LogIn.xaml.cs
	namespace 	
CheckersCliente
 
{ 
public 

partial 
class 
LogIn 
:  
NavigationWindow! 1
{ 
private 
bool 
navigate 
= 
false  %
;% &
public 
LogIn 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
navigate 
= 
true 
; 
NavigationService 
. 
Navigate &
(& '
new' *

LogInPages+ 5
.5 6
	LogInPage6 ?
(? @
)@ A
)A B
;B C
} 	
public 
void 
EnableNavigation $
($ %
)% &
{ 	
navigate 
= 
true 
; 
} 	
private 
void &
NavigationWindowNavigating /
(/ 0
object0 6
sender7 =
,= >%
NavigatingCancelEventArgs? X
eY Z
)Z [
{ 	
if 
( 
! 
navigate 
) 
{ 
e   
.   
Cancel   
=   
true   
;    
}!! 
else"" 
{## 
e$$ 
.$$ 
Cancel$$ 
=$$ 
false$$  
;$$  !
navigate%% 
=%% 
false%%  
;%%  !
}&& 
}'' 	
}(( 
}** ‰N
mD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\Managers\JugadorManager.cs
	namespace		 	
CheckersCliente		
 
{

 
public 

static 
class 
JugadorManager &
{ 
public 
static 
void 
Login  
(  !
Jugador! (
jugador) 0
)0 1
{ 	
InstanceContext 
instanceContext +
=, -
new. 1
InstanceContext2 A
(A B
newB E!
PlayerCallbackHandlerF [
([ \
)\ ]
)] ^
;^ _
PlayerManagerClient 
server  &
=' (
new) ,
PlayerManagerClient- @
(@ A
instanceContextA P
)P Q
;Q R
try 
{ 
server 
. 
Login 
( 
jugador $
)$ %
;% &
} 
catch 
( %
EndpointNotFoundException ,
), -
{ 

MessageBox 
. 
Show 
(  
$str  a
)a b
;b c
} 
} 	
public 
static 
void 
SaveNewPlayer (
(( )
Jugador) 0
jugador1 8
)8 9
{ 	
InstanceContext 
instanceContext +
=, -
new. 1
InstanceContext2 A
(A B
newB E!
PlayerCallbackHandlerF [
([ \
)\ ]
)] ^
;^ _
PlayerManagerClient 
server  &
=' (
new) ,
PlayerManagerClient- @
(@ A
instanceContextA P
)P Q
;Q R
try 
{   
server!! 
.!! 

SavePlayer!! !
(!!! "
jugador!!" )
)!!) *
;!!* +
}"" 
catch## 
(## %
EndpointNotFoundException## ,
)##, -
{$$ 

MessageBox%% 
.%% 
Show%% 
(%%  
$str%%  a
)%%a b
;%%b c
}&& 
}'' 	
public)) 
static)) 
void)) 

EndSession)) %
())% &
string))& ,
playerNickname))- ;
))); <
{** 	
InstanceContext++ 
instanceContext++ +
=++, -
new++. 1
InstanceContext++2 A
(++A B
new++B E!
PlayerCallbackHandler++F [
(++[ \
)++\ ]
)++] ^
;++^ _
PlayerManagerClient,, 
server,,  &
=,,' (
new,,) ,
PlayerManagerClient,,- @
(,,@ A
instanceContext,,A P
),,P Q
;,,Q R
try-- 
{.. 
server// 
.// 
CloseSession// #
(//# $
playerNickname//$ 2
)//2 3
;//3 4
}00 
catch11 
(11 %
EndpointNotFoundException11 ,
)11, -
{22 

MessageBox33 
.33 
Show33 
(33  
$str33  C
)33C D
;33D E
}44 
}55 	
public77 
static77 
void77 
VerifyPlayer77 '
(77' (
Jugador77( /
jugador770 7
)777 8
{88 	
InstanceContext99 
instanceContext99 +
=99, -
new99. 1
InstanceContext992 A
(99A B
new99B E!
PlayerCallbackHandler99F [
(99[ \
)99\ ]
)99] ^
;99^ _
PlayerManagerClient:: 
server::  &
=::' (
new::) ,
PlayerManagerClient::- @
(::@ A
instanceContext::A P
)::P Q
;::Q R
try<< 
{== 
server>> 
.>> 
VerifyPlayer>> #
(>># $
jugador>>$ +
)>>+ ,
;>>, -
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
}DD 	
publicFF 
staticFF 
voidFF 
ResendEmailFF &
(FF& '
JugadorFF' .
playerFF/ 5
)FF5 6
{GG 	
InstanceContextHH 
instanceContextHH +
=HH, -
newHH. 1
InstanceContextHH2 A
(HHA B
newHHB E!
PlayerCallbackHandlerHHF [
(HH[ \
)HH\ ]
)HH] ^
;HH^ _
PlayerManagerClientII 
serverII  &
=II' (
newII) ,
PlayerManagerClientII- @
(II@ A
instanceContextIIA P
)IIP Q
;IIQ R
tryKK 
{LL 
serverMM 
.MM 
SendMailMM 
(MM  
playerMM  &
)MM& '
;MM' (
}NN 
catchOO 
(OO %
EndpointNotFoundExceptionOO ,
)OO, -
{PP 

MessageBoxQQ 
.QQ 
ShowQQ 
(QQ  
$strQQ  a
)QQa b
;QQb c
}RR 
}SS 	
publicUU 
staticUU 
voidUU 
ObtainMailPasswordUU -
(UU- .
stringUU. 4
playerNicknameUU5 C
)UUC D
{VV 	
InstanceContextWW 
instanceContextWW +
=WW, -
newWW. 1
InstanceContextWW2 A
(WWA B
newWWB E!
PlayerCallbackHandlerWWF [
(WW[ \
)WW\ ]
)WW] ^
;WW^ _
PlayerManagerClientXX 
serverXX  &
=XX' (
newXX) ,
PlayerManagerClientXX- @
(XX@ A
instanceContextXXA P
)XXP Q
;XXQ R
tryZZ 
{[[ 
server\\ 
.\\ 
PasswordForgotMail\\ )
(\\) *
playerNickname\\* 8
)\\8 9
;\\9 :
}]] 
catch^^ 
(^^ %
EndpointNotFoundException^^ ,
)^^, -
{__ 

MessageBox`` 
.`` 
Show`` 
(``  
$str``  a
)``a b
;``b c
}aa 
}bb 	
publicdd 
staticdd 
voiddd 
	VerifyPindd $
(dd$ %
stringdd% +
playerNicknamedd, :
,dd: ;
stringdd< B
	playerPinddC L
,ddL M
stringddN T

answerTextddU _
)dd_ `
{ee 	
InstanceContextff 
instanceContextff +
=ff, -
newff. 1
InstanceContextff2 A
(ffA B
newffB E!
PlayerCallbackHandlerffF [
(ff[ \
)ff\ ]
)ff] ^
;ff^ _
PlayerManagerClientgg 
servergg  &
=gg' (
newgg) ,
PlayerManagerClientgg- @
(gg@ A
instanceContextggA P
)ggP Q
;ggQ R
tryii 
{jj 
serverkk 
.kk 
	VerifyPinkk  
(kk  !
playerNicknamekk! /
,kk/ 0
	playerPinkk0 9
,kk9 :

answerTextkk; E
)kkE F
;kkF G
}ll 
catchmm 
(mm %
EndpointNotFoundExceptionmm ,
)mm, -
{nn 

MessageBoxoo 
.oo 
Showoo 
(oo  
$stroo  a
)ooa b
;oob c
}pp 
}qq 	
publicss 
staticss 
voidss 
ChangePasswordss )
(ss) *
Jugadorss* 1
playerss2 8
)ss8 9
{tt 	
InstanceContextuu 
instanceContextuu +
=uu, -
newuu. 1
InstanceContextuu2 A
(uuA B
newuuB E!
PlayerCallbackHandleruuF [
(uu[ \
)uu\ ]
)uu] ^
;uu^ _
PlayerManagerClientvv 
servervv  &
=vv' (
newvv) ,
PlayerManagerClientvv- @
(vv@ A
instanceContextvvA P
)vvP Q
;vvQ R
tryxx 
{yy 
serverzz 
.zz 
ChangePasswordzz %
(zz% &
playerzz& ,
.zz, -
Apodozz- 2
,zz2 3
playerzz4 :
.zz: ;
Contraseniazz; F
)zzF G
;zzG H
}{{ 
catch|| 
(|| %
EndpointNotFoundException|| ,
)||, -
{}} 

MessageBox~~ 
.~~ 
Show~~ 
(~~  
$str~~  a
)~~a b
;~~b c
} 
}
ÄÄ 	
public
ÇÇ 
static
ÇÇ 
void
ÇÇ 
GetActualPlayer
ÇÇ *
(
ÇÇ* +
Jugador
ÇÇ+ 2
actualPlayer
ÇÇ3 ?
)
ÇÇ? @
{
ÉÉ 	
InstanceContext
ÑÑ 
instanceContext
ÑÑ +
=
ÑÑ, -
new
ÑÑ. 1
InstanceContext
ÑÑ2 A
(
ÑÑA B
new
ÑÑB E#
PlayerCallbackHandler
ÑÑF [
(
ÑÑ[ \
)
ÑÑ\ ]
)
ÑÑ] ^
;
ÑÑ^ _!
PlayerManagerClient
ÖÖ 
server
ÖÖ  &
=
ÖÖ' (
new
ÖÖ) ,!
PlayerManagerClient
ÖÖ- @
(
ÖÖ@ A
instanceContext
ÖÖA P
)
ÖÖP Q
;
ÖÖQ R
try
áá 
{
àà 
server
ââ 
.
ââ 
GetActualPlayer
ââ &
(
ââ& '
actualPlayer
ââ' 3
)
ââ3 4
;
ââ4 5
}
ää 
catch
ãã 
(
ãã '
EndpointNotFoundException
ãã ,
)
ãã, -
{
åå 

MessageBox
çç 
.
çç 
Show
çç 
(
çç  
$str
çç  a
)
çça b
;
ççb c
}
éé 
}
èè 	
}
êê 
}ëë §h
jD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\Managers\GameManager.cs
	namespace 	
CheckersCliente
 
. 
Managers "
{ 
public 

static 
class 
GameManager #
{ 
public 
static 
void 
EnterMatchmaking +
(+ ,
Jugador, 3
player4 :
,: ;
CheckersGameMode< L
gameModeM U
)U V
{ 	
try 
{ 
InstanceContext 
instanceContext  /
=0 1
new2 5
InstanceContext6 E
(E F
newF I&
GameManagerCallbackHandlerJ d
(d e
)e f
)f g
;g h
GameManagerClient !
server" (
=) *
new+ .
GameManagerClient/ @
(@ A
instanceContextA P
)P Q
;Q R
server 
. 
CreateMatch "
(" #
player# )
,) *
gameMode+ 3
)3 4
;4 5
} 
catch 
( %
EndpointNotFoundException ,
), -
{ 

MessageBox 
. 
Show 
(  

Properties  *
.* +
	Resources+ 4
.4 5
NoConnectionMessage5 H
)H I
;I J
} 
} 	
public 
static 
void 
LeaveMatchmaking +
(+ ,
int, /
matchNumber0 ;
,; <
int= @
playerNumberLeavingA T
)T U
{   	
try!! 
{"" 
InstanceContext## 
instanceContext##  /
=##0 1
new##2 5
InstanceContext##6 E
(##E F
new##F I&
GameManagerCallbackHandler##J d
(##d e
)##e f
)##f g
;##g h
GameManagerClient$$ !
server$$" (
=$$) *
new$$+ .
GameManagerClient$$/ @
($$@ A
instanceContext$$A P
)$$P Q
;$$Q R
server%% 
.%% 

LeaveMatch%% !
(%%! "
matchNumber%%" -
,%%- .
playerNumberLeaving%%. A
)%%A B
;%%B C
}&& 
catch'' 
('' %
EndpointNotFoundException'' ,
)'', -
{(( 

MessageBox)) 
.)) 
Show)) 
())  

Properties))  *
.))* +
	Resources))+ 4
.))4 5
NoConnectionMessage))5 H
)))H I
;))I J
}** 
}++ 	
public-- 
static-- 
void-- 
Player1TurnResult-- ,
(--, -
Checker--- 4
[--5 6
,--6 7
]--7 8
updateBoardMatrix--8 I
,--I J
int--K N
matchNumber--O Z
,--Z [
int--\ _
playerTwoCheckers--` q
,--q r
int--s v
playerOneCheckers	--w à
)
--à â
{.. 	
Checker// 
[// 
]// 
[// 
]// 
checkersNewMatrix// )
=//* +
new//, /
Checker//0 7
[//7 8
updateBoardMatrix//8 I
.//I J
	GetLength//J S
(//S T
$num//T U
)//U V
]//V W
[//W X
]//X Y
;//Y Z
int00 
	rowNumber00 
=00 
$num00 
;00 
int11 
columnNumber11 
=11 
$num11  
;11  !
for33 
(33 
	rowNumber33 
=33 
$num33 
;33 
	rowNumber33  )
<33* +
$num33, -
;33- .
	rowNumber33/ 8
++338 :
)33: ;
{44 
checkersNewMatrix55 !
[55! "
	rowNumber55" +
]55+ ,
=55- .
new55/ 2
Checker553 :
[55: ;
updateBoardMatrix55; L
.55L M
	GetLength55M V
(55V W
$num55W X
)55X Y
]55Y Z
;55Z [
for66 
(66 
columnNumber66 !
=66" #
$num66$ %
;66% &
columnNumber66' 3
<664 5
$num666 7
;667 8
columnNumber669 E
++66E G
)66G H
{77 
checkersNewMatrix99 %
[99% &
	rowNumber99& /
]99/ 0
[990 1
columnNumber991 =
]99= >
=99? @
updateBoardMatrix99A R
[99R S
	rowNumber99S \
,99\ ]
columnNumber99^ j
]99j k
;99k l
}:: 
};; 
try<< 
{== 
InstanceContext>> 
instanceContext>>  /
=>>0 1
new>>2 5
InstanceContext>>6 E
(>>E F
new>>F I&
GameManagerCallbackHandler>>J d
(>>d e
)>>e f
)>>f g
;>>g h
GameManagerClient?? !
server??" (
=??) *
new??+ .
GameManagerClient??/ @
(??@ A
instanceContext??A P
)??P Q
;??Q R
server@@ 
.@@ 
Player1Turn@@ "
(@@" #
checkersNewMatrix@@# 4
,@@4 5
matchNumber@@6 A
,@@A B
playerTwoCheckers@@C T
,@@T U
playerOneCheckers@@V g
)@@g h
;@@h i
}AA 
catchBB 
(BB %
EndpointNotFoundExceptionBB ,
)BB, -
{CC 

MessageBoxDD 
.DD 
ShowDD 
(DD  

PropertiesDD  *
.DD* +
	ResourcesDD+ 4
.DD4 5
NoConnectionMessageDD5 H
)DDH I
;DDI J
}EE 
}GG 	
publicII 
staticII 
voidII 
Player2TurnResultII ,
(II, -
CheckerII- 4
[II4 5
,II5 6
]II6 7
updateBoardMatrixII8 I
,III J
intIIK N
matchNumberIIO Z
,IIZ [
intII[ ^
playerTwoCheckersII_ p
,IIp q
intIIr u
playerOneCheckers	IIv á
)
IIá à
{JJ 	
tryLL 
{MM 
InstanceContextNN 
instanceContextNN  /
=NN0 1
newNN2 5
InstanceContextNN6 E
(NNE F
newNNF I&
GameManagerCallbackHandlerNNJ d
(NNd e
)NNe f
)NNf g
;NNg h
GameManagerClientOO !
serverOO" (
=OO) *
newOO+ .
GameManagerClientOO/ @
(OO@ A
instanceContextOOA P
)OOP Q
;OOQ R
CheckerPP 
[PP 
]PP 
[PP 
]PP 
checkersNewMatrixPP -
=PP. /
newPP0 3
CheckerPP4 ;
[PP; <
updateBoardMatrixPP< M
.PPM N
	GetLengthPPN W
(PPW X
$numPPX Y
)PPY Z
]PPZ [
[PP[ \
]PP\ ]
;PP] ^
intQQ 
	rowNumberQQ 
;QQ 
intRR 
columnNumberRR  
;RR  !
forTT 
(TT 
	rowNumberTT 
=TT  
$numTT! "
;TT" #
	rowNumberTT$ -
<TT. /
$numTT0 1
;TT1 2
	rowNumberTT3 <
++TT< >
)TT> ?
{UU 
checkersNewMatrixVV %
[VV% &
	rowNumberVV& /
]VV/ 0
=VV1 2
newVV3 6
CheckerVV7 >
[VV> ?
updateBoardMatrixVV? P
.VVP Q
	GetLengthVVQ Z
(VVZ [
$numVV[ \
)VV\ ]
]VV] ^
;VV^ _
forWW 
(WW 
columnNumberWW %
=WW& '
$numWW( )
;WW) *
columnNumberWW+ 7
<WW8 9
$numWW: ;
;WW; <
columnNumberWW= I
++WWI K
)WWK L
{XX 
checkersNewMatrixZZ )
[ZZ) *
	rowNumberZZ* 3
]ZZ3 4
[ZZ4 5
columnNumberZZ5 A
]ZZA B
=ZZC D
updateBoardMatrixZZE V
[ZZV W
	rowNumberZZW `
,ZZ` a
columnNumberZZb n
]ZZn o
;ZZo p
}[[ 
}\\ 
server]] 
.]] 
Player2Turn]] "
(]]" #
checkersNewMatrix]]# 4
,]]4 5
matchNumber]]6 A
,]]A B
playerTwoCheckers]]C T
,]]T U
playerOneCheckers]]V g
)]]g h
;]]h i
}^^ 
catch__ 
(__ %
EndpointNotFoundException__ ,
)__, -
{`` 

MessageBoxaa 
.aa 
Showaa 
(aa  

Propertiesaa  *
.aa* +
	Resourcesaa+ 4
.aa4 5
NoConnectionMessageaa5 H
)aaH I
;aaI J
}bb 
}dd 	
publicff 
staticff 
voidff 
EndPlayerGameff (
(ff( )
intff) ,
matchNumberff- 8
,ff8 9
intff: =
localPlayerff> I
,ffI J
intffK N
playerTwoCheckersffO `
,ff` a
intffb e
playerOneCheckersfff w
)ffw x
{gg 	
InstanceContexthh 
instanceContexthh +
=hh, -
newhh. 1
InstanceContexthh2 A
(hhA B
newhhB E&
GameManagerCallbackHandlerhhF `
(hh` a
)hha b
)hhb c
;hhc d
GameManagerClientii 
serverii $
=ii% &
newii' *
GameManagerClientii+ <
(ii< =
instanceContextii= L
)iiL M
;iiM N
tryjj 
{kk 
serverll 
.ll 
FinishPlayerGamell '
(ll' (
matchNumberll( 3
,ll3 4
localPlayerll5 @
,ll@ A
playerTwoCheckersllB S
,llS T
playerOneCheckersllU f
)llf g
;llg h
}mm 
catchnn 
(nn %
EndpointNotFoundExceptionnn ,
)nn, -
{oo 

MessageBoxpp 
.pp 
Showpp 
(pp  

Propertiespp  *
.pp* +
	Resourcespp+ 4
.pp4 5
NoConnectionMessagepp5 H
)ppH I
;ppI J
}qq 
}rr 	
publictt 
statictt 
voidtt 
SendMessagett &
(tt& '
inttt' *
matchNumbertt+ 6
,tt6 7
inttt8 ;
localPlayertt< G
,ttG H
stringttI O
messagettP W
)ttW X
{uu 	
InstanceContextvv 
instanceContextvv +
=vv, -
newvv. 1
InstanceContextvv2 A
(vvA B
newvvB E&
GameManagerCallbackHandlervvF `
(vv` a
)vva b
)vvb c
;vvc d
GameManagerClientww 
serverww $
=ww% &
newww' *
GameManagerClientww+ <
(ww< =
instanceContextww= L
)wwL M
;wwM N
tryxx 
{yy 
serverzz 
.zz 
SendGameMessagezz &
(zz& '
localPlayerzz' 2
,zz2 3
messagezz4 ;
,zz; <
matchNumberzz= H
)zzH I
;zzI J
}{{ 
catch|| 
(|| %
EndpointNotFoundException|| ,
)||, -
{}} 

MessageBox~~ 
.~~ 
Show~~ 
(~~  

Properties~~  *
.~~* +
	Resources~~+ 4
.~~4 5
NoConnectionMessage~~5 H
)~~H I
;~~I J
} 
}
ÄÄ 	
public
ÇÇ 
static
ÇÇ 
void
ÇÇ 
ReportPlayer
ÇÇ '
(
ÇÇ' (
int
ÇÇ( +
playerReporting
ÇÇ, ;
,
ÇÇ; <
int
ÇÇ= @
matchNumber
ÇÇA L
,
ÇÇL M
string
ÇÇN T

reportText
ÇÇU _
)
ÇÇ_ `
{
ÉÉ 	
InstanceContext
ÑÑ 
instanceContext
ÑÑ +
=
ÑÑ, -
new
ÑÑ. 1
InstanceContext
ÑÑ2 A
(
ÑÑA B
new
ÑÑB E(
GameManagerCallbackHandler
ÑÑF `
(
ÑÑ` a
)
ÑÑa b
)
ÑÑb c
;
ÑÑc d
GameManagerClient
ÖÖ 
server
ÖÖ $
=
ÖÖ% &
new
ÖÖ' *
GameManagerClient
ÖÖ+ <
(
ÖÖ< =
instanceContext
ÖÖ= L
)
ÖÖL M
;
ÖÖM N
try
ÜÜ 
{
áá 
server
àà 
.
àà 
ReportPlayer
àà #
(
àà# $
playerReporting
àà$ 3
,
àà3 4
matchNumber
àà5 @
,
àà@ A

reportText
ààB L
)
ààL M
;
ààM N
}
ââ 
catch
ää 
(
ää '
EndpointNotFoundException
ää ,
)
ää, -
{
ãã 

MessageBox
åå 
.
åå 
Show
åå 
(
åå  

Properties
åå  *
.
åå* +
	Resources
åå+ 4
.
åå4 5!
NoConnectionMessage
åå5 H
)
ååH I
;
ååI J
}
çç 
}
éé 	
}
èè 
}êê Ë
mD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\Managers\RankingManager.cs
	namespace 	
CheckersCliente
 
. 
Managers "
{ 
public 

static 
class 
RankingManager &
{ 
private 
static 
readonly 
InstanceContext  /
instanceContext0 ?
=@ A
newB E
InstanceContextF U
(U V
newV Y"
RankingCallbackHandlerZ p
(p q
)q r
)r s
;s t
private 
static 
readonly  
RankingManagerClient  4
server5 ;
=< =
new> A 
RankingManagerClientB V
(V W
instanceContextW f
)f g
;g h
public 
static 
void &
AddRankingPetitionCallback 5
(5 6
)6 7
{ 	
try 
{ 
server 
. 
GetRankingData %
(% &
)& '
;' (
} 
catch 
( %
EndpointNotFoundException ,
), -
{ 

MessageBox 
. 
Show 
(  
	Resources  )
.) *
NoConnectionMessage* =
)= >
;> ?
} 
} 	
} 
} ë'
_D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\Menu.xaml.cs
	namespace 	
CheckersCliente
 
{ 
public 

partial 
class 
Menu 
: 
NavigationWindow  0
{ 
private 
string 
playerNickname %
;% &
private 
bool 
changeLanguage #
=$ %
false& +
;+ ,
private 
bool 
navigate 
= 
false  %
;% &
public 
Menu 
( 
Jugador 
player "
)" #
{ 	
InitializeComponent 
(  
)  !
;! "
lookLanguage 
( 
player 
.  

IdLenguaje  *
)* +
;+ ,
navigate 
= 
true 
; 
NavigationService 
. 
Navigate &
(& '
new' *
PrincipalMenu+ 8
(8 9
player9 ?
)? @
)@ A
;A B
playerNickname 
= 
player #
.# $
Apodo$ )
;) *
} 	
private!! 
void!! 
lookLanguage!! !
(!!! "
int!!" %

idLanguage!!& 0
)!!0 1
{"" 	
switch## 
(## 

idLanguage## 
)## 
{$$ 
case%% 
$num%% 
:%% 
Thread&& 
.&& 
CurrentThread&& (
.&&( )
CurrentUICulture&&) 9
=&&: ;
new&&< ?
CultureInfo&&@ K
(&&K L
$str&&L P
)&&P Q
;&&Q R
break'' 
;'' 
case(( 
$num(( 
:(( 
Thread)) 
.)) 
CurrentThread)) (
.))( )
CurrentUICulture))) 9
=)): ;
new))< ?
CultureInfo))@ K
())K L
$str))L S
)))S T
;))T U
break** 
;** 
case++ 
$num++ 
:++ 
Thread,, 
.,, 
CurrentThread,, (
.,,( )
CurrentUICulture,,) 9
=,,: ;
new,,< ?
CultureInfo,,@ K
(,,K L
$str,,L P
),,P Q
;,,Q R
break-- 
;-- 
}.. 
}// 	
public00 
void00 
ChangeLanguage00 "
(00" #
)00# $
{11 	
changeLanguage22 
=22 
true22 !
;22! "
}33 	
private55 
void55 
WindowClose55  
(55  !
object55! '
sender55( .
,55. /
System550 6
.556 7
ComponentModel557 E
.55E F
CancelEventArgs55F U
e55V W
)55W X
{66 	
if77 
(77 
changeLanguage77 
)77 
{88 
e99 
.99 
Cancel99 
=99 
false99  
;99  !
}:: 
else;; 
{<< 
bool== 
close== 
=== 
Windows== $
.==$ %
DialogWindowManager==% 8
.==8 9"
ShowConfirmationWindow==9 O
(==O P

Properties==P Z
.==Z [
	Resources==[ d
.==d e
LogOutQuestion==e s
)==s t
;==t u
if>> 
(>> 
close>> 
)>> 
{?? 
e@@ 
.@@ 
Cancel@@ 
=@@ 
false@@ $
;@@$ %
JugadorManagerAA "
.AA" #

EndSessionAA# -
(AA- .
playerNicknameAA. <
)AA< =
;AA= >
}BB 
elseCC 
{DD 
eEE 
.EE 
CancelEE 
=EE 
trueEE #
;EE# $
}FF 
}GG 
}HH 	
publicJJ 
voidJJ 
EnableNavigationJJ $
(JJ$ %
)JJ% &
{KK 	
navigateLL 
=LL 
trueLL 
;LL 
}MM 	
privatePP 
voidPP &
NavigationWindowNavigatingPP /
(PP/ 0
objectPP0 6
senderPP7 =
,PP= >%
NavigatingCancelEventArgsPP? X
ePPY Z
)PPZ [
{QQ 	
ifRR 
(RR 
!RR 
navigateRR 
)RR 
{SS 
eTT 
.TT 
CancelTT 
=TT 
trueTT 
;TT  
}UU 
elseVV 
{WW 
eXX 
.XX 
CancelXX 
=XX 
falseXX  
;XX  !
navigateYY 
=YY 
falseYY  
;YY  !
}ZZ 
}[[ 	
}^^ 
}__ ú4
rD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\MenuPages\PrincipalMenu.xaml.cs
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
class 
PrincipalMenu &
:' (
Page) -
{ 
Jugador 
actualPlayer 
; 
public 
PrincipalMenu 
( 
Jugador $
player% +
)+ ,
{ 	
InitializeComponent 
(  
)  !
;! "
DataContext 
= 
player  
;  !
this 
. 
actualPlayer 
= 
player  &
;& '
} 	
private 
void 
UserConfiguration &
(& '
object' -
sender. 4
,4 5
RoutedEventArgs6 E
eF G
)G H
{ 	
Menu 

actualMenu 
= 
App !
.! "
Current" )
.) *
Windows* 1
.1 2
OfType2 8
<8 9
Menu9 =
>= >
(> ?
)? @
.@ A
FirstOrDefaultA O
(O P
)P Q
;Q R

actualMenu 
. 
EnableNavigation '
(' (
)( )
;) *
JugadorManager 
. 
GetActualPlayer *
(* +
DataContext+ 6
as7 9
Jugador: A
)A B
;B C
} 	
private   
void   
DisplayRanking   #
(  # $
object  $ *
sender  + 1
,  1 2
RoutedEventArgs  3 B
e  C D
)  D E
{!! 	
Menu"" 

actualMenu"" 
="" 
App"" !
.""! "
Current""" )
."") *
Windows""* 1
.""1 2
OfType""2 8
<""8 9
Menu""9 =
>""= >
(""> ?
)""? @
.""@ A
FirstOrDefault""A O
(""O P
)""P Q
;""Q R

actualMenu## 
.## 
EnableNavigation## '
(##' (
)##( )
;##) *
RankingManager$$ 
.$$ &
AddRankingPetitionCallback$$ 5
($$5 6
)$$6 7
;$$7 8
}%% 	
private'' 
void'' 
	ShowRules'' 
('' 
object'' %
sender''& ,
,'', -
RoutedEventArgs''. =
e''> ?
)''? @
{(( 	
Menu)) 

actualMenu)) 
=)) 
App)) !
.))! "
Current))" )
.))) *
Windows))* 1
.))1 2
OfType))2 8
<))8 9
Menu))9 =
>))= >
())> ?
)))? @
.))@ A
FirstOrDefault))A O
())O P
)))P Q
;))Q R

actualMenu** 
.** 
EnableNavigation** '
(**' (
)**( )
;**) *
NavigationService++ 
.++ 
Navigate++ &
(++& '
new++' *
	RulesPage+++ 4
(++4 5
)++5 6
)++6 7
;++7 8
},, 	
private.. 
void.. 
ChooseGameMode.. #
(..# $
object..$ *
sender..+ 1
,..1 2
RoutedEventArgs..3 B
e..C D
)..D E
{// 	
Menu00 

actualMenu00 
=00 
App00 !
.00! "
Current00" )
.00) *
Windows00* 1
.001 2
OfType002 8
<008 9
Menu009 =
>00= >
(00> ?
)00? @
.00@ A
FirstOrDefault00A O
(00O P
)00P Q
;00Q R

actualMenu11 
.11 
EnableNavigation11 '
(11' (
)11( )
;11) *
NavigationService22 
.22 
Navigate22 &
(22& '
new22' *
GameMode22+ 3
(223 4
actualPlayer224 @
)22@ A
)22A B
;22B C
}33 	
private55 
void55 
LanguageSelect55 #
(55# $
object55$ *
sender55+ 1
,551 2
RoutedEventArgs553 B
e55C D
)55D E
{66 	
(77 
DataContext77 
as77 
Jugador77 #
)77# $
.77$ %

IdLenguaje77% /
=770 1
LanguageBox772 =
.77= >
SelectedIndex77> K
;77K L
switch88 
(88 
LanguageBox88 
.88  
SelectedIndex88  -
)88- .
{99 
case:: 
$num:: 
::: 
Thread;; 
.;; 
CurrentThread;; (
.;;( )
CurrentUICulture;;) 9
=;;: ;
new;;< ?
CultureInfo;;@ K
(;;K L
$str;;L P
);;P Q
;;;Q R
break<< 
;<< 
case== 
$num== 
:== 
Thread>> 
.>> 
CurrentThread>> (
.>>( )
CurrentUICulture>>) 9
=>>: ;
new>>< ?
CultureInfo>>@ K
(>>K L
$str>>L S
)>>S T
;>>T U
break?? 
;?? 
case@@ 
$num@@ 
:@@ 
ThreadAA 
.AA 
CurrentThreadAA (
.AA( )
CurrentUICultureAA) 9
=AA: ;
newAA< ?
CultureInfoAA@ K
(AAK L
$strAAL P
)AAP Q
;AAQ R
breakBB 
;BB 
}CC 
MenuDD 
menuDD 
=DD 
newDD 
MenuDD  
(DD  !
DataContextDD! ,
asDD- /
JugadorDD0 7
)DD7 8
;DD8 9
menuEE 
.EE 
ShowEE 
(EE 
)EE 
;EE 
MenuFF 

actualMenuFF 
=FF 
AppFF !
.FF! "
CurrentFF" )
.FF) *
WindowsFF* 1
.FF1 2
OfTypeFF2 8
<FF8 9
MenuFF9 =
>FF= >
(FF> ?
)FF? @
.FF@ A
FirstOrDefaultFFA O
(FFO P
)FFP Q
;FFQ R

actualMenuGG 
.GG 
ChangeLanguageGG %
(GG% &
)GG& '
;GG' (

actualMenuHH 
.HH 
CloseHH 
(HH 
)HH 
;HH 
}II 	
}KK 
}LL Î
pD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\MenuPages\RankingList.xaml.cs
	namespace 	
CheckersCliente
 
. 
	MenuPages #
{ 
public 

partial 
class 
RankingList $
:% &
Page' +
{ 
private 
List 
< 
Ranking 
> 
rankingList )
;) *
public 
RankingList 
( 
List 
<  
Ranking  '
>' (
rankings) 1
)1 2
{ 	
InitializeComponent 
(  
)  !
;! "
rankingList 
= 
rankings "
;" #
tableOfRankings 
. 
ItemsSource '
=( )
rankingList* 5
;5 6
} 	
private 
void 
Return 
( 
object "
sender# )
,) *
RoutedEventArgs+ :
e; <
)< =
{ 	
Menu 

actualMenu 
= 
App !
.! "
Current" )
.) *
Windows* 1
.1 2
OfType2 8
<8 9
Menu9 =
>= >
(> ?
)? @
.@ A
FirstOrDefaultA O
(O P
)P Q
;Q R

actualMenu   
.   
EnableNavigation   '
(  ' (
)  ( )
;  ) *
NavigationService!! 
.!! 
GoBack!! $
(!!$ %
)!!% &
;!!& '
}"" 	
}## 
}$$ º
vD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\MenuPages\UserConfiguration.xaml.cs
	namespace 	
CheckersCliente
 
. 
	MenuPages #
{ 
public 

partial 
class 
UserConfiguration *
:+ ,
Page- 1
{ 
public 
UserConfiguration  
(  !
Jugador! (
actualPlayer) 5
)5 6
{ 	
InitializeComponent 
(  
)  !
;! "
DataContext 
= 
actualPlayer &
;& '
switch 
( 
actualPlayer  
.  !

IdLenguaje! +
)+ ,
{ 
case 
$num 
: 
LanguageTextBlock %
.% &
Text& *
=+ ,
$str- 6
;6 7
break 
; 
case 
$num 
: 
LanguageTextBlock %
.% &
Text& *
=+ ,
$str- 6
;6 7
break 
; 
case 
$num 
: 
LanguageTextBlock   %
.  % &
Text  & *
=  + ,
$str  - 7
;  7 8
break!! 
;!! 
}"" 
}## 	
private$$ 
void$$ 
CancelClick$$  
($$  !
object$$! '
sender$$( .
,$$. /
RoutedEventArgs$$0 ?
e$$@ A
)$$A B
{%% 	
Menu&& 

actualMenu&& 
=&& 
App&& !
.&&! "
Current&&" )
.&&) *
Windows&&* 1
.&&1 2
OfType&&2 8
<&&8 9
Menu&&9 =
>&&= >
(&&> ?
)&&? @
.&&@ A
FirstOrDefault&&A O
(&&O P
)&&P Q
;&&Q R

actualMenu'' 
.'' 
EnableNavigation'' '
(''' (
)''( )
;'') *
NavigationService(( 
.(( 
GoBack(( $
((($ %
)((% &
;((& '
})) 	
}** 
}++ ¥
mD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\CheckersCliente\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str *
)* +
]+ ,
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
$str ,
), -
]- .
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
[   
assembly   	
:  	 

	ThemeInfo   
(   &
ResourceDictionaryLocation!! 
.!! 
None!! #
,!!# $&
ResourceDictionaryLocation$$ 
.$$ 
SourceAssembly$$ -
)'' 
]'' 
[44 
assembly44 	
:44	 

AssemblyVersion44 
(44 
$str44 $
)44$ %
]44% &
[55 
assembly55 	
:55	 

AssemblyFileVersion55 
(55 
$str55 (
)55( )
]55) *