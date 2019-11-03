# Lex
Lex es un API escrito en Python que se encargara de:
<br>

![process](img/process.png)
<br>

1. Leer Codigo LMR
2. Transpilar (traducir)
3. LMR a Python


# Routes
Lex sera el API responsable de "Transpilar" su codigo escrito en LMR.

Tendra 2 `@routes` (no esta limitado a estos 2 unicamente, usted puede agregarle mas)

- `/`
- `/lex`

## /root

El root sera endpoint grafico que desplegara: el codigo Python Transpilado y la hora que fue hecho el request.


![lex](img/lex.png)


> note que se muestra el TimeStamp de cuando fue transpilado

## /lex

POST endpoint para Procesar/ Ejecutar el codigo.

`Recibe LMR => [Lex] => Transpile to Python => [Execute to Cozmo]`

El codigo vendra en el request payload <sup>[1](#1footnote)</sup>

```json
{
    "request_timestamp": "Sun Nov  3 01:42:41 CST 2019",
    "lmr": "SAY HI\nMOVE 50 100"
}

```

<br>


Obviamente debe devolver un status code dependiendo del resultado de ejecutar el programa.



<a name="1footnote">1</a>: Ojo que se puede utilizar [Redis](redis.md) para evitar enviar una llamada REST y utilizar canales real-time.




# Extra functions

Cada vez que Lex traduzca un programa debera:

- guardar el archivo generado dentro de un directorio `transpiled/` con el siguiente formato: `lmr_lex_2019_11_3-11_18.py`
- Debe devolver un status code que indique al GUI que se transpilo satisfactoriamente.
- Puede usar asyncio (async /await) para responder y ejecutar de una manera asincrona.


<br><br><br><br>
> **Transpilers**, or source-to-source compilers, are tools that read source code written in one programming language, and produce the equivalent code in another language.
