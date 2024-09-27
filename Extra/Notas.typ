= ¿Cómo sacar código repetido? _("Pseudoalgoritmo")_
+ Mover lo repetido a una nueva abstracción.
+ Parametrizar lo que cambia.
+ Poner nombre a la nueva abstracción. \
  *^ LO MÁS IMPORTANTE ^*
+ Reemplazar código repetido por uso de la nueva abstracción.

= Polimorfismo
*Def.*: Todos los objetos de un conjunto son polimórficos entre si respecto de un conjunto de mensaje, si los objetos del primero responden semánticamente igual a los mensajes del segundo.

== _"Pseudoalgoritmo"_ de polimorfismo
+ Crear jerarquía polimórfica con una clase por cada condición de if _(opcional)_.
+ Mover el cuerpo del if a cada nueva clase usando el mismo nombre de mensaje.
+ Nombrar las abstracciones.
+ Nombrar el mensaje del item 2).
+ Reemplazar ifs por el envío del mensaje polimórfico.
+ Buscar el objeto polimórfico _(opcional)_.

= Heurísticas
+ Crear objetos completos.
+ Crear objetos válidos.
+ Favorecer el uso de objetos inmutables.
+ No usar nil / null.
+ Evitar getters y settes _(aka. no romper el encapsulamiento)_.
+ Modificaciones atómicas.
