[Lista de papers.](https://www.isw2.com.ar/bibliografia-1/papers)


### [State Pattern](1.%20State%20Pattern.pdf)
- Propósito: Dar una buena forma de que un objeto cambie su comportamiento dependiendo de su estado interno.
- La idea es generar una nueva jerarquía polimórfica de clases que representen los estados posibles del objeto, y que el objeto tenga como colaborador interno una instancia de estas. Cuando el objeto tiene que responder a un mensaje que depende del estado, le pregunta a su instancia de estado actual como responder (el libro habla de directamente fowardear la responsabilidad al estado pero en clase dijeron que no les gustaba eso, prefieren que sea un Double Dispatch y que la responsabilidad de ejecutar vuelva al objeto original). Cuando el objeto debe cambiar de estado simplemente cambia la instancia de estado que tiene guardado.
- Estructura y Colaboraciones:
	1) Un objeto base que debe responder a sus mensajes según su estado interno. Posee un colaborador interno para almacenar la instancia de su estado. Cuando recibe un mensaje, le pregunta a su estado como responderlo adecuadamente.
	2) Jerarquía polimórfica de estados. La clase padre (abstracta) define su comportamiento (recibir los pedidos del objeto base). Cada subclase define el comportamiento específico que se debe adoptar en cada caso en ese estado.
- Ventajas: 
	1) Encapsula y separa el comportamiento de cada estado. Nos permite agregar nuevos estados facilmente y sin cambiar nada de lo hecho previamente. No tenemos que lidiar con molestos ifs esparcidos en todos los métodos.
	2) Permite hacer las transiciones entre estados más explicitas (crear una nueva instancia de una clase es mucho más facil de ver que tener asignaciones de flags o de booleanos por cualquier lado).


### [Object Recursion](2.%20Object%20Recursion.pdf)
- El objetivo de este patrón es distribuir la implementación de un método de un objeto con una estructura compleja en cada parte de la estructura. De esta forma para implementar el método el objeto puede pedirle a sus partes que lo resuelvan, y estas a su vez se lo pueden pedir a sus subpartes y asi siguiendo hasta desembocar en "casos bases".
- Estructura y colaboraciones:
    1) Un cliente que inicia el proceso enviandole un mensaje "handleRequest" al objeto con la estructura compleja
    2) El objeto compuesto de otros, que delegue la solución de "handleRequest" enviandole este mismo mensaje a sus partes (puede implementar comportamiento extra además de delegar).
    3) Las partes que componen al objeto anterior, todas deben ser polimórficas con el objeto, osea todas deben implementar "handleRequest". Estas partes pueden tambien ser objetos complejos, por eso lo recursivo.
- Ventajas: Se permite implementar las funcionalidades sin conocer de antemano como esta formada la estructura; delega correctamente las responsabilidades, cada parte se hace cargo de su trabajo; no necesita romper encapsulamiento para implementar nada.
- Desventajas: Puede ser dificil de entender, abusarse del patrón puede volver un sistema mucho más complejo de lo que debería.


### [Modern Software Engineering](10.%20Modern%20Software%20Engineering.pdf)
- La ingeniería del software es la aplicación de un enfoque empírico y científico para conseguir soluciones eficientes y económicas para problemas prácticos del software.
- Para ser buenos ingenieros tenemos que ser expertos en aprender. El verdadero progreso y mejora en nuestros desarrollos se hace cuando aprendemos de ellos y los mejoramos y no solo cuando funcionan. Puntos claves son:
	1) Trabajar iterativamente
	2) Tener feedback rápido y de calidad
	3) Trabajar incrementalmente
	4) Ser experimental (si no probamos cosas nuevas no aprendemos)
	5) Ser empírico (si no probamos con la realidad solo nos quedamos con nuestras propias ideas erróneas)
- Tambien tenemos que ser expertos en manejar la complejidad de nuestros proyectos. Si no aplicamos técnicas para que nuestro problema complejo que queremos resolver se pueda reducir a algo más simple, partirlo en partes y demás e incluso para que se puedan organizar distintos grupos de trabajo que trabajen en el proyecto, nuestro software resultante va a ser muy pobre. Puntos claves son:
	1) Modularidad
	2) Cohesión
	3) Separación de responsabilidades
	4) Abstracción / Information Hiding
	5) Acoplamiento
- La idea de aplicar un enfoque científico a la ingeniería del software es poder tener pensamiento crítico y validar verdaderamente si lo que hacemos esta bueno o no, sin importar si es un práctica ya muy establecida, evitando ser dogmáticos.
- La ingeniería del software no es como "construir puentes", no deberíamos aplicar un pensamiento de una industria de producción como esa al software.
- Nuestra visión de nuestra profesión tendría que ser una de ingeniería en diseño.
- Tenemos que sacar provecho de que somos el único sector en donde podemos testear nuestro producto sin que costruirlo sea un esfuerzo, y poder aprender de ese testeo (TDD are you here?).
- Un problema que tenemos es que es muy dificil medir cuando nuestras formas de trabajar son buenas o no.
- Para esto el libro habla sobre la forma de medirlo que se desarrollo analizando DevOps, que se basa en medir la "estabilidad" y el "rendimiento". La estabilidad se mide según el ratio en el cual introducir un cambia produce errores, y el tiempo que se tarda en corregir los errores en el software. El rendimiento se mide en el tiempo que lleva cambiar el código para que tenga nueva funcionalidad y que tan frecuentemente se llevan a cabo los cambios (la idea es que nos indica que el desarrollo esta teniendo mucho feedback y por lo tanto se aprende más y es mejor).
