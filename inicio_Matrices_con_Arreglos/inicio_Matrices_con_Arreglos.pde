//Curso: Programacion I | Actividad: Matrices y Arreglos | Fecha: 10/03/26
//Nombres: Edgar David Acosta Bernal y Cristian Felipe Ortiz Cucunuba
 
//Primeramente empezamos declarando las variables y arreglos
int tamanoMatriz = 3; //Este es el tamaño de la matrix en este caso seria 3 ya que nuestra matriz va de ser de 3x3

//Estas xon las matrices las cuales las cuales son A y B (Las matrices estan multiplicadas por tamañoMatriz x este mismo esto es para que su dimension cambie segun el numero que esta en esa variable)
float[][] matrizA = new float[tamanoMatriz][tamanoMatriz]; //Matriz A
float[][] matrizB = new float[tamanoMatriz][tamanoMatriz]; //Matriz B

//Aca dejamos lo que son vectores (Lo mismo que arriba que se multiplican tamañoMatriz entre si)
float[] vectorUno = new float[tamanoMatriz]; //Vector 1
float[] vectorDos = new float[tamanoMatriz]; //Vector 2

//Luego empezamos a configurar su ajuste inicial y este es para que muestre un avis de que el procedimiento se esat realizando en la consola
void setup() {
  size(700, 200); //Ajustamos la dimension que queremos para esta ventana de aviso
  
  //Dejamos las funciones que se van a cargar
  llenarMatrizA(); //En la matriz A estaran los numeros aleatorios y haran que se llenen
  llenarMatrizB(); //En la matriz B estaran los numeros en orden y haran que se llenen
  llenarVectores(); //Y aca es la que llena los vectores tanto el 1 como el 2
  
//Aqui lo que haremos es imprimir las matrices como los vectores uno x uno 
  println("Matriz A:"); //Iniciamos con la matriz A 
  imprimirMatriz(matrizA); //Estas son mas funciones que hacen que llame a la matriz que se le indico en este caso la matriz A
  
  println("Matriz B:"); //luego con la matriz B 
  imprimirMatriz(matrizB); //Estas son mas funciones que hacen que llame a la matriz que se le indico en este caso la matriz B
  
  println("              ");
  
  println("Vector 1:"); //Despues con el vector 1
  imprimirVector(vectorUno);//Estas son mas funciones que hacen que llame a la matriz que se le indico en este caso el vector 1
  
  println("Vector 2:"); // Y para terminar con esat parte el vector 2
  imprimirVector(vectorDos); //Estas son mas funciones que hacen que llame a la matriz que se le indico en este caso el vector 2
  
  //Seguimos con las funciones y estas tienen la funcion de realizar las operaciones que tienen que realizar (mas adelante se mostrara el proceso de cada una)
  matrizMultiplicacion();
  matrizProductoMatrizVector();
  matrizProductoPunto();
  matrizTranspuesta();
  matrizInversa(); 
}

//Creamos una ventana para que se pueda avisar que las matrices se estan ejecutando en la consola 
void draw() {
  background(0); //Dejamos un color en el fondo este caso negro
  fill(96, 23, 212); //Dejamos el color de la letra que en este caso es el morado
  //Y para acabar con esta pestaña dejamos un mensaje en el que este este lo que es el cusro,actividad,fecha y los nombres como lo decia el pdf
  textSize(20); //Tamaño de la letra
  text("Curso: Programacion I | Actividad: Matrices y Arreglos | Fecha: 10/03/26", width/10, height/6.1); //El mensaje y lo otro son las dimensiones que son en donde queremos ese texto
  text("Nombres: Edgar David Acosta Bernal y Cristian Felipe Ortiz Cucunuba", width/10, height/1.9); //El mensaje y lo otro son las dimensiones que son en donde queremos ese texto
  text("El procesamiento esta en la consola :v", width/10, height/1.2); //El mensaje y lo otro son las dimensiones que son en donde queremos ese texto
}
