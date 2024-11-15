[Lista de papers.](https://www.isw2.com.ar/bibliografia-1/papers)


### [Programming As Theory Building](1.%20Programming%20As%20Theory%20Building.pdf) (Clase 23/08):
- Se nos presenta el *Theory Building* como una forma diferente de entender la programación, en contraposición con la percepción clásica de que es solamente escribir código y otros textos.
- En *Theory Building* entendemos la programación como la construcción de conocimiento por parte de los programadores sobre lo que estan construyendo, y como la realidad que intentan modelar se corresponde con su modelo.
- Se define Teoria como el conocimiento para hacer ciertas cosas, pero con la habilidad de entenderlo, poder explicarlo, justificarlo y responder preguntas al respecto.
- Se nos cuenta el ejemplo del compilador desarrollado por el grupo A, que más tarde pasó a manos del grupo B. Estos en su intento de mejorarlo y extenderlo lo unico que lograron fue implementar todo esto de forma erronea, como parcheando el código, destruyendo su simplicidad y eficiencia, todo por carecer del conocimiento necesario.
- Según Naur, el programador que construyo esa teoría es superior a la documentacion en:
    1) Responder como el programa modela la realidad.
    2) Justificar porque el modelo es como es y no se hizo diferente.
    3) Poder modificar el programa para adaptarse a los cambios en la realidad.
- Peter Naur considera que este ultimo punto es el más supera a la percepción clásica de escribir codigo.
- Tambien considera que si los desarrolladores de un programa se disuelven, la teoría se pierde y por lo tanto el programa "muere", y que solo se puede revivir por un equipo en contacto con los desarrolladores originales que puedan heredar la teoría.
- Se concluye que lo más importante de la programación es el programador.


### [The Design of Everyday Things](2.%20The%20Design%20of%20Everyday%20Things.pdf) (Clase 27/08):
- El libro analiza el diseño de los objetos de uso diario y como estos pueden enseñarnos a usarlos o confundirnos por completo.
- Por ejemplo una puerta puede tener una manija y eso nos da la idea de que debemos tirar para abrir, o puede tener una parte plana donde apoyar la mano y darnos la idea de que hay que empujar, todo solo con el diseño y sin ninguna otra explicación.
- El ejemplo anterior ilustra uno de los conceptos más importantes: la Visibilidad. Se deben ver las partes correctas del diseño (solo las que el usuario necesita), y deben transmitir el mensaje correcto.
- *Feedback*: El feedback es devolver información como resultado de nuestras acciones. Por ejemplo apretar un botón y que se prenda una luz nos da garantías de que nuestra acción se ejecutó correctamente. Gracias a eso podemos aprender a utilizar las cosas.
- *Affordances*: los objetos y los materiales de lo que estan hechos se pueden usar para ciertas cosas, y para otras no. El cerebro tiene una idea intuitiva de esto. Cuando se usa esto a favor el diseño mejora enormemente. El ejemplo de la puerta nos sirve, una manija nos permite tirar y nos resulta natural, pero si no hay manija no nos queda otra que empujar. Lo que se nos permite hacer son *Affordances*, lo que se nos prohibe son *Constraints*.
- *Conceptual Models*: Es nuestro entendimiento de como "funciona" un objeto en cuestión, es la relacion entre los controles o las formas de interactuar con el objeto y los resultados que produce. Nos permite predecir el resultado de nuestras acciones, por ende poder usarlo a gusto.
- *Mapping*: El mapeo es la relación entre dos cosas. En este caso, debemos poder mappear el diseño con lo que hace. Por ejemplo si tenemos un solo botón que realiza cosas opuestas dependiendo de si lo apretamos o lo mantenemos va a ser inentendible, debe realizar una sola acción que podamos asignarle.


### [No Silver Bullet](3.%20No%20Silver%20Bullet%20%E2%80%93%20Essence%20and%20Accident%20in%20Software%20Engineering.pdf) (Clase 30/08):
- Se distingue entre dos dificultades en el desarrollo de software: las esenciales, osea el diseño de estructuras conceptuales complejas que componen las entidades abstractas del software, y las accidentales, osea la representación de estos conceptos en la computadora.
- Las dificultades accidentales son las que se han solucionado enormemente en el último tiempo, con mejores lenguajes de programación y mejor hardware.
- En las dificultades esenciales no hay nada que pueda mejorar sustancialmente el desarrollo de software (por eso *No Silver Bullet*).
- Se divide la dificultades esenciales en:
    1) Complejidad: Las entidades de software son complejas, ya que no se construye mediante la repeticion de elementos ya creados, sino mediante la creación de nuevos con propiedades diferentes. En un edificio agrego tres pisos iguales a los anteriores y tengo un edificio mejor, más alto; en software agrego tres funciones iguales a la anterior y tengo el mismo software con código repetido.
    2) Capricho: El software no sigue leyes de la naturaleza, sino que tiene que cumplir con los "caprichos" de sus usuarios, decisiones totalmente arbitrarias que varían de software a software.
    3) Modificabilidad: Al ser software un producto del pensamiento, se puede modificar rapida y baratamente, lo que termina siendo una exigencia, ya que siempre se le querra añadir nueva funcionalidad para satisfacer más usuarios.
    4) Invisibilidad: No se puede ver el software, lo que lo hace más dificil de razonar.
- El paper da ejemplos de cosas de la época que el no espera que solucionen más que dificultades accidentales, o que sean solo de un área muy específica, como la OOP, la IA, o el testeo automático.
- Por otro lado piensa que lo siguiente puede combatir las dificultades esenciales:
    1) Comprar el software ya hecho. Simple, no reinventar la rueda, pararse arriba de lo ya construido.
    2) Tener una metodología de desarrollo ágil, que pueda tener muchas iteraciones de contacto con los usuarios para refinar durante el desarrollo como debería ser el software final, especialemte valiendose de un rápido prototipado. 
    3) Deberiamos desarrollar el software de forma iterativa incremental, haciendolo crecer, en contraposición con simplemente tratar de construirlo como si fuera a salir bien al primer intento.
    4) Educar a los programadores en las buenas prácticas de diseño.


### [Self-The Power Of Simplicity](4.%20Self%3A%20The%20Power%20Of%20Simplicity.pdf) (Clase 03/09):
- Este paper define el lenguaje *Self*, un lenguaje de prototipado, y explica sus pros y contras. Lo más parecido que usamos en la materia fueron los Denotative Objects.
- *Self* se basa en prototipos: Todo en *Self* es un objeto, pero estos no son instanciados de una clase, sino que son clonados de otro objeto, al que muchas veces se lo llama objeto prototípico y que contiene comportamiento e información compartida.
- En los prototipos la única relación que hay es la de parentezco, donde un objeto hijo puede "heredar" los slots de su objeto padre.
- Al no tener clases, sino que se puede crear objetos "de la nada", *Self* soporta excepcionalmente bien la creación de objetos con características únicas, sin tener que definir una clase entera para crear un solo objeto muy particular.
- Principios de *Self*:
    1) La operación fundamental es el envio de mensajes. No solo los métodos de un objeto se acceden así, sino también los colaboradores internos, ambos almacenandose en los "slots" de un objeto.
    2) Ser económico conceptualmente, *Self* se construye en muy pocos conceptos con mucho poder expresivo como el envío de mensajes.
    3) Ser concreto, no diferenciar entre clase e instancia, todos los objetos pueden cumplir esos roles.
- *Self*, al igual que *SmallTalk*, soporta el uso de closures. Cuando se debe ejecutar un método o un closure, lo que se hace es clonar el código respectivo en un nuevo objeto y establecerle de padre el objeto receptor del método en cuestión, de esta forma puede resolverse cual es el contexto de ejecución solo con herencia.


### [Design Principles Behind Smalltalk](5.%20Design%20Principles%20Behind%20Smalltalk.pdf) (Clase 06/09):
- El propósito de *SmallTalk* es proveer soporte computacional al espíritu creativo de las personas. Para esto se enfocaron tanto en diseñar un lenguaje de descripción (el lenguaje de *SmallTalk* en si), como un lenguaje de interacción (la interfaz gráfica).
- Si un sistema es para servir al espíritu creativo, debe ser completamente entendible para un individuo solitario.
- Un sistema debería ser construido con un mínimo conjunto de partes no modificables; esas partes debieran ser tan generales como sea posible. Si no, se atentaría contra la entendibilidad del sistema.
- El propósito de un lenguaje es proveer un esquema para la comunicación, y en particular los lenguajes de programación deberían proveer un esquema para la comunicación con la computadora, modelando los lenguajes humanos.
- Un lenguaje de computación debe soportar el concepto de "objeto" y proveer una manera uniforme de referise a los objetos del universo, ya que sobre ellos es como pensamos.
- Para que un lenguaje sea auténticamente OO un sistema debe proveer administración automática del almacenamiento, ya que se modela la realidad y la realidad no tiene "administración de memoria".
- La transmisión de mensajes debe ser el único proceso de control del sistema, y definir como funcionan desde los elementos más básicos hasta los más complejos.
- Un lenguaje debería ser diseñado alrededor de una metáfora poderosa que pueda ser aplicada uniformemente en todas las áreas.
- Un sistema debe ser modular, ningún componente debe depender de los detalles internos de otro componente.
- Un lenguaje debe proveer un medio para clasificar objetos similares, y de agregar clases propias al mismo nivel que las centrales del sistema.
- Un programa solo debería especificar el comportamiento esperado de los objetos, no su representación, osea debe soportar polimorfismo.
- Cada componente independiente de un sistema sólo debería aparecer en un sólo lugar, osea no debería haber código repetido. Si se cumple esto, un gran reaprovechamiento estará disponible para los usuarios.
- Cada componente accesible al usuario debería ser capaz de presentarse de una manera entendible para ser observado y manipulado, osea a través de la GUI.
- Un sistema operativo es una colección de cosas que no encajan dentro de un lenguaje. No debería existir.


### [Polymorphic Hierarchy](6.%20Polymorphic%20Hierarchy.pdf) (Clase 13/09):
- Una subimplementación de un método debería siempre hacer lo mismo que su superimplementación, osea la superimplementación define el "qué" hace la subimplementación. Solo debería variar el "como".
- La descripción de un método se puede separar en propósito e implementación. El próposito tendría que estar definido unicamente en la superimplementación, y la implementación solo tendría que estar definido en la subimplementación (WOW).
- Cuando todos los implementadores de ciertos métodos en una jerarquía responden estos de la misma forma, con los mismos efectos secundarios, haciendo el mismo "que", teniendo el mismo propósito entonces son polimórficos.
- Cuando construimos una jerarquía, arriba de todo deberia estar la *Template Class*, que sea bien abstracta y defina el "que" de todas las clases que la subclasifican.


### [Double Dispatch](7.%20A%20Simple%20Technique%20for%20Handling%20Multiple%20Polymorphism%20(double%20dispatch).pdf) (Clase 17/09):
- Situacion: Tenemos un objeto de una primera jerarquia polimorfica que recibe un mensaje de un metodo que toma como argumento un segundo objeto de una segunda jerarquia polimorfica.
- Problema: tener unos ifs en cada implementacion del metodo que hardcodean codigo para evaluar segun el tipo del argumento.
- Solucion: crear una nueva familia de mensajes dentro de la segunda jerarquia polimorfica (la del argumento) que contenga un mensaje por cada tipo posible de la primera jerarquia polimorfica, y que en ellos se encuentre el codigo que antes estaba en el if.
- De esta forma en el metodo original ya no tendriamos un if, solamente le enviariamos el mensaje correcto de los que acabamos de crear al argumento.


### [Null Object Pattern](8.%20Null%20Object%20Pattern.pdf) (Clase 20/09):
- La motivación es poder representar colaboradores que no hacen nada, osea son vacíos, pudiendo tratarlos de la misma forma que los colaboradores con comportamiento.
- Lo que normalmente haríamos es representarlo con nil/null, esto es muy poco efectivo ya que es propenso a errores y nos obliga a escribir un montón de código para gestionar que hacer ante este caso directamente en nuestros métodos en forma de "ifNil" y otras variantes.
- La forma de solucionarlo es definir una nueva clase que encapsule la forma de "hacer nada" del colaborador que esperamos.
- Esto se logra haciendo que la clase respete el mismo protocolo que el del colaborador que quiere "nullificar", pero que sus implementaciones no hagan nada apropiadamente. La clave aquí es tener una super clase abstracta que defina el protocolo polimorfico del colaborador.
- Así podemos tener un *Null Object* como colaborador, enviarle todos los mensajes que queramos, y obtener el comportamiento esperado, que es ninguno, sin código adicional ni errores.


### [Method Object](9.%20Method%20Object.pdf) (Clase 24/09): 
- El problema que queremos resolver es que tenemos un metodo muy grande pero que hace uso de muchas variables temporales y parametros.
- Esto es malo porque si queremos extraer parte de ese largo codigo a otros metodos nuevos tendriamos que pasarle todas las variables temporales y demas cosas como parametros, resultando en metodos auxiliares que reciben como 8 parametros, osea un quilombo total.
- La solucion que se sugiere es crear un objeto que sea la abstraccion del metodo en cuestion, que tenga como colaboradores internos todas estas variables auxiliares y parametros. De esta forma el codigo gigante que antes teniamos se lo podemos pasar al objeto nuevo, y este si puede separarlo en submetodos que no necesiten tomar todos los parametros que antes necesitaban porque directamente acceden a los colaboradores internos.
- Instrucciones: 
  1) Crear una clase nombrada en base al metodo que abstraemos.
  2) Los colaboradores internos de las instancias tienen que ser todos los que tenia el objeto original + todos los parametros que recibia el metodo + todas las variables temporales del metodo.
  3) El constructor tiene que recibir todo lo anterior.
  4) Pasamos el codigo gigante que teniamos a un metodo #compute en el *Method Object* (y ya lo podemos mejorar).
  5) Reemplazamos en el metodo original, ahora solamente vamos a crear una instancia del *Method Object* y le vamos a enviar #compute.
