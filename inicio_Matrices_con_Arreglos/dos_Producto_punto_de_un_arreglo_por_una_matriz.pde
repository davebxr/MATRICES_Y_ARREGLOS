//Aqui ya en el 2 punto el cual es Producto punto de un arreglo por una matriz

// horizonatl
void matrizProductoMatrizVector() {
  println("      ");
  println("2. Producto punto de un arreglo por una matriz");
  
  float[] r = new float[tamanoMatriz]; // se crea para guardar los 3 resultados 
  
  for (int i = 0; i < tamanoMatriz; i++) { // elige fila de toda la matriz   A vamos a estar trabajando 
    r[i] = 0; // se pone es 0 para que inicie limpio 
    for (int j = 0; j < tamanoMatriz; j++) { // recorre la matriz y el vertor al tiempo
      r[i] = r[i] + (matrizA[i][j] * vectorUno[j]); //suma lo que ya teniamos guardado
    } 
  } 
  imprimirVector(r); // nos imprime el vector resultante
}
