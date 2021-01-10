ˆ 
aD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\LogicaCliente\ValidatorText.cs
	namespace 	
LogicaCliente
 
{ 
public

 
static

 
class

 
ValidatorText

 )
{ 	
private 
const 
int 
MINIMUM_LENGHT ,
=- .
$num/ 0
;0 1
public 
static 
bool 

AreNumbers )
() *
string* 0
numbers1 8
)8 9
{ 
Regex #
numberRegularExpression -
=. /
new0 3
Regex4 9
(9 :
$str: G
)G H
;H I
return #
numberRegularExpression .
.. /
IsMatch/ 6
(6 7
numbers7 >
)> ?
;? @
} 
public 
static 
bool 
IsEmail &
(& '
string' -
email. 3
)3 4
{ 
Regex !
emailRegularExpresion +
=, -
new. 1
Regex2 7
(7 8
$str	8 õ
+
ú ù
$str }
)} ~
;~ 
return !
emailRegularExpresion ,
., -
IsMatch- 4
(4 5
email5 :
): ;
;; <
} 
public 
static 
bool 

IsQuestion )
() *
string* 0
question1 9
)9 :
{ 
Regex   $
questionRegularExpresion   *
=  + ,
new  - 0
Regex  1 6
(  6 7
$str  7 G
)  G H
;  H I
return"" $
questionRegularExpresion"" +
.""+ ,
IsMatch"", 3
(""3 4
question""4 <
)""< =
;""= >
}## 
public%% 
static%% 
bool%% 
IsRightExpression%% 0
(%%0 1
string%%1 7
text%%8 <
)%%< =
{&& 
Regex'' "
rightRegularExpression'' ,
=''- .
new''/ 2
Regex''3 8
(''8 9
$str''9 V
)''V W
;''W X
return)) "
rightRegularExpression)) -
.))- .
IsMatch)). 5
())5 6
text))6 :
))): ;
;)); <
}** 
public,, 
static,, 
bool,, 

IsNickname,, )
(,,) *
string,,* 0
name,,1 5
),,5 6
{-- 
Regex.. !
nameRegularExpression.. +
=.., -
new... 1
Regex..2 7
(..7 8
$str..8 E
)..E F
;..F G
return00 !
nameRegularExpression00 ,
.00, -
IsMatch00- 4
(004 5
name005 9
)009 :
;00: ;
}11 
public33 
static33 
bool33 
	IsANumber33 (
(33( )
string33) /
number330 6
)336 7
{44 
Regex55 #
numberRegularExpression55 -
=55. /
new550 3
Regex554 9
(559 :
$str55: G
)55G H
;55H I
return77 #
numberRegularExpression77 .
.77. /
IsMatch77/ 6
(776 7
number777 =
)77= >
;77> ?
}88 
public;; 
static;; 
bool;; 
IsTextRight;; *
(;;* +
string;;+ 1
textToValidate;;2 @
);;@ A
{<< 
bool== 
isTextRight==  
===! "
false==# (
;==( )
if?? 
(?? 
IsRightExpression?? %
(??% &
textToValidate??& 4
)??4 5
&&??6 8
textToValidate??9 G
.??G H
Length??H N
>??O P
MINIMUM_LENGHT??Q _
)??_ `
{@@ 
isTextRightAA 
=AA  !
trueAA" &
;AA& '
}BB 
returnDD 
isTextRightDD "
;DD" #
}EE 
}HH 	
}II ñ
kD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\CheckersClient\LogicaCliente\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str (
)( )
]) *
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
$str *
)* +
]+ ,
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
]##) *