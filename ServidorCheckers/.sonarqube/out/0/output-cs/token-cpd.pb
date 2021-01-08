�
]D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\Dominio\Administrador.cs
	namespace 	
Dominio
 
{ 
class		 	

 
{

 
public 
int 
IdAdministrador "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 

ApodoAdmin  
{! "
get# &
;& '
set( +
;+ ,
}- .
public
string
Contrasenia
{
get
;
set
;
}
public 
string 
CorreoElectronico '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} �
WD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\Dominio\Jugador.cs
	namespace 	
Dominio
 
{ 
public		 

class		 
Jugador		 
{

 
public 
int 
	IdJugador 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Apodo 
{ 
get !
;! "
set# &
;& '
}( )
public
string
Contrasenia
{
get
;
set
;
}
public 
string 
CorreoElectronico '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
Status 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string !
RespuestaConfirmacion +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
string  
PreguntaRecuperacion *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
string 
PinConfirmacion %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
int 

IdLenguaje 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
	IdCreador 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} �
^D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\Dominio\LanguageNumber.cs
	namespace 	
Dominio
 
{ 
public		 

enum		 
LanguageNumber		 
{

 
Ingles 
= 
$num 
, 
Español 
= 
$num 
, 
Italiano
=
$num
} 
} �	
WD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\Dominio\Partida.cs
	namespace 	
Dominio
 
{ 
public		 

class		 
Partida		 
{

 
public 
int 
	IdPartida 
{ 
get "
;" #
set$ '
;' (
}) *
public 
TimeSpan 
Tiempo 
{ 
get  #
;# $
set% (
;( )
}* +
public
string
	ModoJuego
{
get
;
set
;
}
public 
int 
Turno 
{ 
get 
; 
set  #
;# $
}% &
public 
int 
	IdGanador 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 

IdPerdedor 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} �

WD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\Dominio\Ranking.cs
	namespace 	
Dominio
 
{ 
public		 

class		 
Ranking		 
{

 
public 
int 
	IdRanking 
{ 
get "
;" #
set$ '
;' (
}) *
public 
Jugador 
Duenio 
{ 
get  #
;# $
set% (
;( )
}* +
public
DateTime
FechaRegistracion
{
get
;
set
;
}
public 
int 
NumeroVictorias "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
int 
PartidasJugadas "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
int 
Rank 
{ 
get 
; 
set "
;" #
}$ %
public 
int 
NumeroPerdidas !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} �
gD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\Dominio\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 


( 
$str "
)" #
]# $
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
$str $
)$ %
]% &
[
assembly
:

AssemblyCopyright
(
$str
)
]
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
]$$) *�
aD:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\Dominio\SendMessageResult.cs
	namespace 	
Dominio
 
{ 
public 

enum 
SendMessageResult !
{		 
MESSAGE_SENT

 
=

 
$num

 
,

 
MESSAGE_NOT_SENT 
= 
$num 
} 
}
]D:\ProyectosVisualStudio\SistemaDistribuidoCheckers\ServidorCheckers\Dominio\RankingResult.cs
	namespace 	
Dominio
 
{ 
public 

enum 

{		 

NO_RANKING

 
=

 
$num

 
,

 
RANKING_EXISTS 
= 
$num 
} 
}