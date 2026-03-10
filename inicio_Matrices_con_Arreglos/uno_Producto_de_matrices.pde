//Aqui ya vamos a iniciar con el primer problema que nos piden el cual es la multiplicacion entre la matriz A x B

//Creamos la funcion
void matrizMultiplicacion() {
  //Lo que vamos haciendo aca es ordenando por puntos en este caso es el 1 ya que es el de multiplicacion que es multiplicar la matriz A x B y esta nos da C
  println("              ");
  println("1. Producto de matrices");
  
  float[][] matrizC = new float[tamanoMatriz][tamanoMatriz]; //Creamos la matriz para que esta pueda crear la matriz C y le dejamos lo que realizamos con las primeras que es (Que se estan multiplicando por tamañoMatriz x este mismo esto es para que su dimension cambie segun el numero que esta en esa variable)
  
  //Empezamos ya con los ciclos 
  for (int i = 0; i < tamanoMatriz; i++) { //Este nos ayuda a elegir la fila de la matriz A
    for (int j = 0; j < tamanoMatriz; j++) { //Este nos ayuda a elegir la columna de la Matriz B
      matrizC[i][j] = 0; //Dejamos la casilla en 0 para poder empezar la sumar
      for (int k = 0; k < tamanoMatriz; k++) { //Aca creamos la variante k para que este se pueda mover en la fila de la matriz A como en la columna de la matriz B
        matrizC[i][j] += (matrizA[i][k] * matrizB[k][j]); //Dejamos el += para que este vaya sumando ya que matrizC es 0 y esto hace para que vaya guardando la informacion 
       // Aca ya vamos a empezar con la multiplicacion y es que dejamos la i lo que va a ser es fijar la fila en este caso es el de la matrizA y la k recorre las columnas de esta matrizA
       //Y lo mismo pasa pero al revez y con la matrizB es decir que dejamos la k para recorrer las filas de la matrizB y la j fija las columnas  de la matrizB
      }
    }
  }
  imprimirMatriz(matrizC); //ACa ya nos muestra el resultado de este
}
