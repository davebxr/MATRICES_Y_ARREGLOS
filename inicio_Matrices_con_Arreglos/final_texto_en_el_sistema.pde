// imprimir las matrices en la consola
void imprimirMatriz(float[][] m) {
  for (int i = 0; i < tamanoMatriz; i++) { // recoore por las dilas
    print("[ "); // este abre el corchete de la fila
    for (int j = 0; j < tamanoMatriz; j++) { // recorre por las columnas
      print(m[i][j] + "  "); // imprime el numero y un espacio
    } 
    println("]"); // cierra el corchete y salta de línea
  } 
}

// imprime los vectores en la consola 
void imprimirVector(float[] v) {
  print("[ "); // abre corchete
  for (int i = 0; i < tamanoMatriz; i++) { // recorre desde la posicion 0 hasta la ultima 
    print(v[i] + "  ");//imprime el contenido de ia celda
  } 
  println("]"); // cierra corchete y salta de línea
}
