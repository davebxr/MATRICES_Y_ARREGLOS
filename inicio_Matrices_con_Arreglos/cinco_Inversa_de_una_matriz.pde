// aqui podremos hallar la matriz inverza con el metodo de Gauss Jordan
void matrizInversa() {
  println("             ");
  println("5. Inversa de una matriz");
  
  // creamos una matriz de (3 filas x 6 columnas)
  float[][] matrizTrabajo = new float[tamanoMatriz][tamanoMatriz*2]; 
 //aqui se crea una matriz para los resultados
  float[][] matrizResultado = new float[tamanoMatriz][tamanoMatriz];   
  
  // ahora llenamos la matriz trabajo poniendo la identidad en el dalo derecho 
  for (int i = 0; i < tamanoMatriz; i++) { // van las filas
    for (int j = 0; j < tamanoMatriz; j++) { //van las columnas
      matrizTrabajo[i][j] = matrizB[i][j]; // pasa a copiar los datos de A a la izquierda
      
      // en la matriz identidad dibujamos en la diagonal 1
      if (i == j) { 
        matrizTrabajo[i][j+tamanoMatriz] = 1; // ponemos un 1 en la diagonal 
      } else { 
        matrizTrabajo[i][j+tamanoMatriz] = 0; // ponemos 0 en lo demas 
      }
    } 
  }
  //aca vamos ha hacer que columna por columna i aparezca en la parte izquierda 
  for (int i = 0; i < tamanoMatriz; i++) {
    // la variable q denominamos como pivote venedria siendo el numero q esta en la diagonal A
    float pivote = matrizTrabajo[i][i]; 
    
    // en este caso si el pivote es 0, la division marca un error y asi la matriz no tiene inversa
    if (pivote == 0) { 
      println("No existe inversa porque un pivote es cero.");
      return; // aqui se detiene y se sale 
    }
    
    // se divide toda la fila actual por el pivote para que ese n° se vuelva 1
    for (int j = 0; j < tamanoMatriz*2; j++) {
      matrizTrabajo[i][j] = matrizTrabajo[i][j] / pivote;
    }
    
    // esto se hace para q tanto como arriba como abajo del 1 haya solo ceros
    for (int k = 0; k < tamanoMatriz; k++) {
      if (k != i) { // no se hace nada ya que es la fila donde acabamos de poner el 1
        float factor = matrizTrabajo[k][i]; // este es el numero q queremos eliminar de las demas filas
        for (int j = 0; j < tamanoMatriz*2; j++) { 
          // Restamos a la fila del pivote la fila del pivote y multiplicamos por el factor
          matrizTrabajo[k][j] = matrizTrabajo[k][j] - (factor * matrizTrabajo[i][j]);
        }
      }
    }
  }
  
//aqui podemos ver como el lado izquierdo se volvio identidad y el derecho inversa
  for (int i = 0; i < tamanoMatriz; i++) {
    for (int j = 0; j < tamanoMatriz; j++) {
      // se toman los valores de la columna 3, 4, 5 y los pasamos a la matiz limpia 
      matrizResultado[i][j] = matrizTrabajo[i][j+tamanoMatriz];
    }
  }
  
  //se deja ver al usuario 
  imprimirMatriz(matrizResultado);
}
