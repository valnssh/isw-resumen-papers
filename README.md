[Lista de papers.](https://www.isw2.com.ar/bibliografia-1/papers)


### [Double Dispatch](https://www.dropbox.com/s/f00ujuvfgqnkm55/A%20simple%20technique%20for%20handling%20multiple%20polymorphism%20-%20double%20dispatch.pdf?dl=0) (Clase 17/09):
- Situacion: Tenemos un objeto de una primera jerarquia polimorfica que recibe un mensaje de un metodo que toma como argumento un segundo objeto de una segunda jerarquia polimorfica.
- Problema: tener unos ifs en cada implementacion del metodo que hardcodean codigo para evaluar segun el tipo del argumento.
- Solucion: crear una nueva familia de mensajes dentro de la segunda jerarquia polimorfica (la del argumento) que contenga un mensaje por cada tipo posible de la primera jerarquia polimorfica, y que en ellos se encuentre el codigo que antes estaba en el if.
- De esta forma en el metodo original ya no tendriamos un if, solamente le enviariamos el mensaje correcto de los que acabamos de crear al argumento.


### [Method Object](http://ptgmedia.pearsoncmg.com/images/9780134769042/samplepages/013476904X.pdf) (Clase 24/09): 
- El problema que queremos resolver es que tenemos un metodo muy grande pero que hace uso de muchas variables temporales y parametros.
- Esto es malo porque si queremos extraer parte de ese largo codigo a otros metodos nuevos tendriamos que pasarle todas las variables temporales y demas cosas como parametros, resultando en metodos auxiliares que reciben como 8 parametros, osea un quilombo total.
- La solucion que se sugiere es crear un objeto que sea la abstraccion del metodo en cuestion, que tenga como colaboradores internos todas estas variables auxiliares y parametros. De esta forma el codigo gigante que antes teniamos se lo podemos pasar al objeto nuevo, y este si puede separarlo en submetodos que no necesiten tomar todos los parametros que antes necesitaban porque directamente acceden a los colaboradores internos.
- Instrucciones: 
  1) Crear una clase nombrada en base al metodo que abstraemos.
  2) Los colaboradores internos de las instancias tienen que ser todos los que tenia el objeto original + todos los parametros que recibia el metodo + todas las variables temporales del metodo.
  3) El constructor tiene que recibir todo lo anterior.
  4) Pasamos el codigo gigante que teniamos a un metodo #compute en el Method Object (y ya lo podemos mejorar).
  5) Reemplazamos en el metodo original, ahora solamente vamos a crear una instancia del Method Object y le vamos a enviar #compute.
