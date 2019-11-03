# Love my Robot 💙 ![robot](img/robot.png)


En este proyecto usted utilizara todo su conocimiento aprendido durante el curso, quemocion !

- Python Flask
- Nodejs
- Javascript
- Redis*
- REST
- Docker
---

# Description

Usted estara encargado de enseñar aquello por lo cual usted aqui, programar, a niños !

![kids](img/kids.jpg)


Los niños aprenderan a programar a [Cozmo](https://www.youtube.com/watch?v=DHY5kpGTsDE), "The smartest, cutest AI-powered robot you’ve ever seen".

Utilizaremos nuestro propio lenguaje interpreteado llamado LMR (love-my-robot) que estara compuesto de un set de instrucciones limitado por el SDK de Cozmo; algunas categorias de este instruction set seran:

- Drive: controlaran en que direccion se movera cozmo y qué tan rapido.
- Actions: para controlar su cara y expresiones, su levanta carga


# Architecture Overview


![robot](img/arobot.png)


## Services

- [GUI](gui.md)
- [LEX](lex.md)
- [Redis (Opcional)](redis.md)

## Flow

- Un GUI para que los niños puedan programar en LMR
- Una vez estan listos para que el robot ejecute su programa, el programa se envia REST hacia LEX
- Cozmo Ejecuta el codigo.