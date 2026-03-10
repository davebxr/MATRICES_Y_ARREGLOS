//Ahora vamos a iniciar con el punto 3 que este se trata sobre Producto punto de dos arreglos y consiste en que el vector 1 y el vector 2 (que sean del mismo tamaño) se multiplican y se suman 

//Creamos una funcion 
void matrizProductoPunto() {
  
  //Vamos ordenando los puntos
  println("                ");
  println("4. Producto punto de dos arreglos");
  
  float sumaTotal = 0; //Creamos esta variable y la dejamos en 0 para que esta se pueda sumar
  
  //Iniciamos con los ciclos :D
  for (int i = 0; i < tamanoMatriz; i++) { ////Este nos sirve ya que recorre por los vectores (en este caso que es en columna)
    sumaTotal +=(vectorUno[i] * vectorDos[i]); //Y ya para terminar con este lo que se hacer es que se multiplican los numeros que estan en la misma posicion y al final se suma 
  }
  
  println("Resultado: " + sumaTotal); //Ya para terminar dejamos 
}
