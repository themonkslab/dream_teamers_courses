# Nuestro primer programa

Como les contamos en el artículo anterior, queremos que aprendan a crear __tests primero__ que nada, ejecuten el programa, el programa se rompa y sepan qué código tienen que escribir.

## Requerimientos?

Como ahora estamos __utilizando _Dartpad_, no contamos con herramientas específicas de testing__. Por ello, vamos a ir creando aproximaciones a lo que serían los tests. Y el primer paso para ello, es saber escribir y entender correctamente los _requirements_.

Qué son? Son una lista de enunciados (o solo uno ellos) que dice qué esperamos que nuestro programa haga. Luego, en el futuro cercano (parte intermedia de este curso), vamos a utilizar herramientas de automatización (🤤) que se basarán en dichos requerimientos.

Por ahora, vamos pasito a pasito, saludando a este nuevo mundo en el que nos metemos!

## Hello world u hola mundo

Es el programa más sencillo de todos y es casi una _convention_ o convención empezar con él: imprimir en pantalla "Hola mundo!" y he allí nuestro requerimiento primero:

__Requirement__: imprimir en pantalla "Hola mundo".

Para ello, vamos a escribir las siguientes líneas de código:

```dart
void main() {
    print('hola mundo')
}
```

Qué pudieron ver en _Dartpad_? Algo así?

![Falta punto y coma](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/3.1_falta_punto_y_coma.png)

Prueben correr el programa sin solucionar el error como _Dartpad_ se los recomienda.

![Programa no corre](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/3.2_programa_no_corre_falta_punto_y_coma.png)

En este caso, pudieron ver que no tuvimos que crear ningún test para asegurarnos de que la línea tiene que estar escrita de cierta manera, siguiendo [ciertas reglas](https://dart.dev/guides/language/language-tour)?: Dart lo hace él mismo.

Si ustedes agregan dicha línea y lo corren, deberíamos ver el resultado esperado... verdad? 🤔 Qué imprimió la consola? Cuál era el requerimiento? Mientras piensan esto inconscientemente, les contamos algo más.

## Formato

Si ustedes copiaron el código de la misma forma que yo lo escribí, habrían hecho esto:

1. void main () {}
2. Entraron dentro de los {}
3. Dentro teclearon _enter_

Qué pasó? Si no lo hicieron, borren todo y háganlo de vuelta así pueden notar ustedes mismos qué sucede: Dart cuenta con un sistema que __además de corregir los errores, puede corregir cómo escribimos, el estilo__.

Así, agrega espacios para indicar más claramente que un pedazo de código está dentro de otro pedazo, o colores para diferenciar palabras clave y mucho más.

Prueben también qué sucede si borran esos espacios y lo corren. Pudieron ver que funciona perfectamente salvo que es apenas más difícil de leer? Y ustedes dirán 'son dos espacios, no es más difícil'. Pero compruébenlo ustedes mismos: qué código les parece más fácil y placentero de ver? 🤨

![Formato o no formato](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/3.4_no_formateado_vs_formateado.png)

 y luego hacen click en _Format_ y voilà!

![Formato automático de Dart](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/3.3_formato.png)

## Tests?

Podrían decir que la tarea está terminada? Como dijimos, no tenemos forma de automatizar el proceso de testing sino que tendremos que hacerlo nosotros mismos por ahora. Vuelvan a los _requirements_, revisen su código, luego el _output_ en la consola. Encuentran alguna diferencia? __Logramos exactamente lo que estaba pedido?__

Si no pudieron aun notar la diferencia, busquen un ratito más.

🤔

🤷🏻‍♂️

🤦🏻‍♂️

Ok! El requerimiento decía imprimir "Hola mundo" y el código que escribimos imprime "hola mundo", siendo la primer letra en minúscula cuando debiera ser en mayúscula.

Nuevamente nos encontramos con un caso super simple y pensamos que no genera mucha diferencia pero a veces, en el trabajo cotidiano pensamos de la misma forma dejando de lado lo que la persona que escribió el requerimiento pensó con mucho esfuerzo.

De ser así, lo mejor sería contactarte con esa persona y sugerirle que nuestro código puede solucionar mejor su problema o que no hace mucha falta marcar la diferencia.

__Tratamos de que no solamente aprendan a escribir código de calidad sino también absorban buenas prácticas__ para con ustedes y sus compañeros y compañeras y tengan la oportunidad de amar esta profesión como nosotros lo hacemos!
