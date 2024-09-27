[Lista de papers.](https://www.isw2.com.ar/bibliografia-1/papers)


### [Programming As Theory Building](https://github.com/valnssh/isw-resumen-papers/blob/main/1er%20Parcial/1.%20Programming%20As%20Theory%20Building.pdf) (Clase 23/08):
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


### [The Design of Everyday Things](https://github.com/valnssh/isw-resumen-papers/blob/main/1er%20Parcial/2.%20The%20Design%20of%20Everyday%20Things.pdf) (Clase 27/08):
- El libro analiza el diseño de los objetos de uso diario y como estos pueden enseñarnos a usarlos o confundirnos por completo.
- Por ejemplo una puerta puede tener una manija y eso nos da la idea de que debemos tirar para abrir, o puede tener una parte plana donde apoyar la mano y darnos la idea de que hay que empujar, todo solo con el diseño y sin ninguna otra explicación.
- El ejemplo anterior ilustra uno de los conceptos más importantes: la Visibilidad. Se deben ver las partes correctas del diseño (solo las que el usuario necesita), y deben transmitir el mensaje correcto.
- *Feedback*: El feedback es devolver información como resultado de nuestras acciones. Por ejemplo apretar un botón y que se prenda una luz nos da garantías de que nuestra acción se ejecutó correctamente. Gracias a eso podemos aprender a utilizar las cosas.
- *Affordances*: los objetos y los materiales de lo que estan hechos se pueden usar para ciertas cosas, y para otras no. El cerebro tiene una idea intuitiva de esto. Cuando se usa esto a favor el diseño mejora enormemente. El ejemplo de la puerta nos sirve, una manija nos permite tirar y nos resulta natural, pero si no hay manija no nos queda otra que empujar. Lo que se nos permite hacer son *Affordances*, lo que se nos prohibe son *Constraints*.
- *Conceptual Models*: Es nuestro entendimiento de como "funciona" un objeto en cuestión, es la relacion entre los controles o las formas de interactuar con el objeto y los resultados que produce. Nos permite predecir el resultado de nuestras acciones, por ende poder usarlo a gusto.
- *Mapping*: El mapeo es la relación entre dos cosas. En este caso, debemos poder mappear el diseño con lo que hace. Por ejemplo si tenemos un solo botón que realiza cosas opuestas dependiendo de si lo apretamos o lo mantenemos va a ser inentendible, debe realizar una sola acción que podamos asignarle.


### [Polymorphic Hierarchy](https://github.com/valnssh/isw-resumen-papers/blob/main/1er%20Parcial/6.%20Polymorphic%20Hierarchy.pdf) (Clase 13/09):
- Una subimplementación de un método debería siempre hacer lo mismo que su superimplementación, osea la superimplementación define el "qué" hace la subimplementación. Solo debería variar el "como".
- La descripción de un método se puede separar en propósito e implementación. El próposito tendría que estar definido unicamente en la superimplementación, y la implementación solo tendría que estar definido en la subimplementación (WOW).
- Cuando todos los implementadores de ciertos métodos en una jerarquía responden estos de la misma forma, con los mismos efectos secundarios, haciendo el mismo "que", teniendo el mismo propósito entonces son polimórficos.
- Cuando construimos una jerarquía, arriba de todo deberia estar la *Template Class*, que sea bien abstracta y defina el "que" de todas las clases que la subclasifican.


### [Double Dispatch](https://github.com/valnssh/isw-resumen-papers/blob/main/1er%20Parcial/7.%20A%20Simple%20Technique%20for%20Handling%20Multiple%20Polymorphism%20(double%20dispatch).pdf) (Clase 17/09):
- Situacion: Tenemos un objeto de una primera jerarquia polimorfica que recibe un mensaje de un metodo que toma como argumento un segundo objeto de una segunda jerarquia polimorfica.
- Problema: tener unos ifs en cada implementacion del metodo que hardcodean codigo para evaluar segun el tipo del argumento.
- Solucion: crear una nueva familia de mensajes dentro de la segunda jerarquia polimorfica (la del argumento) que contenga un mensaje por cada tipo posible de la primera jerarquia polimorfica, y que en ellos se encuentre el codigo que antes estaba en el if.
- De esta forma en el metodo original ya no tendriamos un if, solamente le enviariamos el mensaje correcto de los que acabamos de crear al argumento.


### [Method Object](https://github.com/valnssh/isw-resumen-papers/blob/main/1er%20Parcial/9.%20Method%20Object.pdf) (Clase 24/09): 
- El problema que queremos resolver es que tenemos un metodo muy grande pero que hace uso de muchas variables temporales y parametros.
- Esto es malo porque si queremos extraer parte de ese largo codigo a otros metodos nuevos tendriamos que pasarle todas las variables temporales y demas cosas como parametros, resultando en metodos auxiliares que reciben como 8 parametros, osea un quilombo total.
- La solucion que se sugiere es crear un objeto que sea la abstraccion del metodo en cuestion, que tenga como colaboradores internos todas estas variables auxiliares y parametros. De esta forma el codigo gigante que antes teniamos se lo podemos pasar al objeto nuevo, y este si puede separarlo en submetodos que no necesiten tomar todos los parametros que antes necesitaban porque directamente acceden a los colaboradores internos.
- Instrucciones: 
  1) Crear una clase nombrada en base al metodo que abstraemos.
  2) Los colaboradores internos de las instancias tienen que ser todos los que tenia el objeto original + todos los parametros que recibia el metodo + todas las variables temporales del metodo.
  3) El constructor tiene que recibir todo lo anterior.
  4) Pasamos el codigo gigante que teniamos a un metodo #compute en el *Method Object* (y ya lo podemos mejorar).
  5) Reemplazamos en el metodo original, ahora solamente vamos a crear una instancia del *Method Object* y le vamos a enviar #compute.
