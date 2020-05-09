/*
Automatic Reference Counting (ARC)

Es lógico que a medida que vamos escribiendo código de una aplicación o programa todas la instancias de objectos que vayamos creando de variables y constantes, hacen que la memoria que vayamos utilizando sea superior ya que cada vez está almacenando más referencias.

Estas referencias que en cierto momento ya no queremos utilizar, por ejemplo que nosotros definamos una clase, la instanciemos, la usemos y después esa clase pase a ser nula, lo que se espera es que Swift sea capaz de eliminar esa referencia y liberar la memoria ocupada.

Esto se necesita ya que si nunca se eliminara los objectos en memoria, llegaríamos a un punto donde nuestro dispositivo físico no tendría más memoria y terminaría dando un error.

Esto es un mecanismo que en muchos lenguajes se llama el Garbage Collector, el cual se encarga de comprobar periodicamente si hay objectos que pueden eliminarse de memoria.
 
 En Swift esta tarea se llevará acabo de otra forma gracias al ARC. ARC lo hará de una forma más rápida y optima.
 
 Lo importante es conocer cómo funciona: En español significa Contador Automático de Referencias. Esto quiere decir que Swift va a llevar un contador interno de las veces que estamos utilizando una instancia, llamado Retain Count.
 
 Puede existir un problema, y es que Swift sea incapaz de liberar memoria porque no puede acceder a alguna referencia.
 
 Este problema se llama Memory Leak. Se da cuando hay una Referencia Circular Fuerte.
 
 Una Referencia Circular Fuerte se puede solucionar creando una de las Referencias implicadas como Débil (Weak).

 Una Referencia Débil (Weak) es la cual no incrementa su contador a la hora de instanciarse. Así cuando veamos que crearemos una Referencia Circular Fuerte, lo que debemos hacer es crear una de las Referencias implicadas como Weak. Y así será solucionado el Memory Leak.
 */

// Crear referencia débil:
// weak var myVariable: MyClass?


/*
 Cómo hacer nuestras aplicaciones seguras:
 
 1. Evitar accesos de escritura simultáneos: No intentar modificar el valor de una variable desde diferentes puntos.
 2. Accesos concurrentes a la misma dirección de memoria. Si se realizan varios accesos concurrentes a la misma dirección de memoria el riesgo puede ser que en un momento dado esa dirección de memoria ya no se encuentre disponible porque el objecto ha desaparecido porque ARC lo ha eliminado de la memoria.
 3. Duración asíncrona del acceso.
 */
