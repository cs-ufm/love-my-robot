# Redis (Opcional)

## Hashes

Redis puede almacenar diferentes objetos, quizas podrian almacenar el diccionario/JSON de funciones LMR desde LEX

`LEX (funciones) => REDIS => GUI`

De esa forma LEX y GUI tendra el mismo set de funciones LMR.

## Pub/Sub

Redis es capaz de brindar una experiencia para aplicaciones real-time usando algo que se conoce como Pub/Sub (publish/subscribe)

Algunos documentos:
- [1](https://kb.objectrocket.com/redis/basic-redis-usage-example-part-1-exploring-pub-sub-with-redis-python-583)
- [Docu](https://redis.io/topics/pubsub)
- [Redis Labs](https://redislabs.com/ebook/part-2-core-concepts/chapter-3-commands-in-redis/3-6-publishsubscribe/)

Para que podria usar PubSub?

- para desde el GUI publicar hacia un canal en donde Lex API este subscrito y asi poder mandar el codigo en LMR de una manera facil.


## Resources
les ejo algunos recursos que les podrian servir

- [redisworks](https://github.com/seperman/redisworks)