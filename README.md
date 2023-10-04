# InstagramClone
## Maquetando Instagram con SwiftUI

#### 👋🏼Hola a todos soy Chris, un JS Web Developer, que sueña en convertirse en un Apple Developer.

En esta oportunidad les comparto el último proyecto con el cual estuve practicando para el desarrollo en **#iOS**, con el framework **#SwiftUI**. Cosas maravillosas estoy aprendiendo con este nuevo framework, aunque vengo de aprender **#UIKit** de la serie de tres libros [**Develop In Swift** *de Apple Education*](https://developer.apple.com/learn/curriculum/), debo confesar que me siento mucho más cómodo desarrollando en el marco de SwiftUI.

##### Los datos
![](https://i.ibb.co/41cthzB/Captura-de-pantalla-2023-10-03-a-la-s-21-24-51.png)
Si bien estoy trabajando con datos hardcodeados, la idaea es poner en práctica todo lo aprendido con el lenguaje Swift para este marco. Para lograr este cometido, creé los siguientes modelos (los cuales se entucentran en la carpeta Model): 
- UserModel
- StoryModel
- TimelineModel
- CommentModel

##### Manos a la obra
Ya con los datos en su lugar... es hora de empezar a jugar con el maquetado de nuestra app. Tomando como referencia el siguiente **figma** [Instagram UI Screens by Pixsellz
](https://www.figma.com/community/file/874574625832268971)

![](https://i.ibb.co/g37tk2G/Captura-de-pantalla-2023-10-03-a-la-s-21-56-21.png)

Como con todo desafío, el modo de llegar a conquistar la victoria, es dividiendo al adversario.

Por eso dividí la UI en 4 partes:

###### ToolBar: 
Este componente se encuentra definido en el ContentView, en él nos encontramos con el logo (que funciona como un home), y los botónes para **sacar una foto**, ver **los vivos** y enviar un **DM** 
![ToolBar](https://i.ibb.co/4fcvhKq/Captura-de-pantalla-2023-10-03-a-la-s-22-10-54.png)

###### StoryView: 
Se trata de un componente con el cual se accede a los stories, dicho componente consta de un **Image** y un **Text** envuelto en un *ZStack*. Y condicionalmente se agrega una etiqueta **LIVE**, dependiendo si el usuario se encuentra transmitiendo un #enVivo
![StoryView](https://i.ibb.co/F8H1MWb/Captura-de-pantalla-2023-10-03-a-la-s-22-30-14.png)
El StoryView es llamado dentro del ContentView, donde es iterado para cargar un arreglo de StoryModel, al cual denomino *storyList*

###### TimelineViw: 
Sin duda alguna esta pieza del layout es la más importante, ya que es la que ocupa una mayor porción de la UI, es por ello quie posee una mayor complejidad, dividiendo la información que muestra en varios componentes (headerView, postImage, actionIcons, likedSection y commentSection). 
![TimelineView](https://i.ibb.co/yX5C44s/Captura-de-pantalla-2023-10-03-a-la-s-22-06-14.png)

###### TabViewCustom: 
Por último nos encontramos con el elemento donde se conjugan todos los componentes (y el que es llamado dentro del @main de este instagramApp). Para el cual creé el enum para las opciones de Home, Búsqueda, Agregar Nuevo Posteo, Favoritos y el nuestro perfíl para manejar los estados a traves de definir la variable @State selectedTab, con el cual puedo acceder a las diferentes vistas de la aplicación.

![TabViewCustom](https://i.ibb.co/Wk9gJ1J/Captura-de-pantalla-2023-10-03-a-la-s-22-07-25.png)



###



<footer style="textAlign=center">Made with 🩵 by Christian Manzaraz 👨🏽‍💻 </footer>





