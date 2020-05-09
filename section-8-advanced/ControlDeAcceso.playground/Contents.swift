/*
 El control de acceso:
 
 Nos sirve para restringir el acceso a diferentes partes de nuestro código. Acceso que podremos restringir a nivel de Archivo o a nivel del Modulo donde se está ejecutando.
 
 Esta caracteristica nos sirve para ocultar detalles de la implementación. Cosas que no todo el código de una App debe conocer.
 
 Esto nos permite mejorar la estabilidad de nuestra App.
 
 Existen diferentes controles de acceso:
 - open: Define que podamos acceder al objeto desde cualquier parte de nuestro código. Menos restrictivo.
 - public: Define que podamos acceder al objeto desde cualquier parte de nuestro código.
 - internal: Define que podamos acceder a ese objeto solo dentro de nuestro modulo.
 - fileprivate: Define que podamos acceder a ese objeto solo dentro de nuestro archivo.
 - private: Restringe el uso del objeto únicamente al contexto donde está definido. (Scope). Más restrictivo.
 
 Se pueden aplicar los controles de acceso en:
 - class
 - struct
 - enum
 - var
 - let
 - func
 
 Cuando definimos un objeto, Swift lo crea como Internal.
 
 */
