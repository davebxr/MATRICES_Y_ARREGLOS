//Para el 4 punto que es la transpuesta de una matriz (en esta se puede usar la matrizA o la matrizB)

//Iniciamos con una funcion
void matrizTranspuesta() {
  
  //Aca es para organizar  los puntos
  println("                           ");
  println("4. Transpuesta de una matriz");

  float[][] transpuesta = new float[tamanoMatriz][tamanoMatriz]; //Se crea una nueva matriz para poder guardar los nuevos datos el cuales son los transpuesta y lo dejamos con el tamanoMatriz debido a que va a tener el mimo tamaño que se este usando en este momento

  //AHora vamos a empezar con los ciclos
  for (int i = 0; i < tamanoMatriz; i++) { //Este ciclo lo que hace es recorrer las filas de la matriz que se alla escogido (en este caso la matrizA)
    for (int j = 0; j < tamanoMatriz; j++) { //Y este ciclo lo que hace es recorrer las columnas de la matriz que se alla escogido (en este caso la matrizA)
      transpuesta[j][i] = matrizB[i][j]; //Ahora si vamos a empezar con lo que hace la transpuesta y lo que hace esta es que tenemos que intercambiar los arreglos que tienen ellas por ejemplo en [j][i] a [i][ij
      //Lo que hace esto es que pasa las filas a columnas y las columnas a filas
    }
  }
  imprimirMatriz(transpuesta); // Muestra la matriz volteada
}
