//Aca empezamos con la segunda ventana la cual es para que las matrices se puedan llenar los datos

//Vamos a iniciar con la matriz A la cual es una funcion que esta es la que esta desordenada y deja numeros al azar 
void llenarMatrizA() {
  for (int i = 0; i < tamanoMatriz; i++) { //Para eso vamos a poner ciclos que con estosnos va a permitir que mire las filas es decir que mire que cada una tiene su numero
    for (int j = 0; j < tamanoMatriz; j++) { //Es lo mismo con el anterior pero en este caso es con las columnas
      matrizA[i][j] = int(random(1, 10)); //En este arreglo lo que hacemos es dejar los ciclos anteriores que son el i y j para que despues podamos dejar que deje numeros random del 1 al 9 en todas las filas y columnas 
    }
  }
}

//Ahora vamos a seguir con la matriz B que tambien es una funcion que esta es un poco mas sencilla debido a que esta es con los numeros en orden
void llenarMatrizB() {
  float contador = 1; //Aca añadimos una variable que esta es la qeu nos va ayudar a que sume +1 para que esat matriz pueda ir en orden 
  for (int i = 0; i < tamanoMatriz; i++) { // Haremos lo mismo que con el anterior un ciclo para que este pueda recorrer la fila 
    for (int j = 0; j < tamanoMatriz; j++) { //Y este para que pueda mirar las columnas
      matrizB[i][j] = contador; //Este = nos ayuda a que guarde la suma 
      contador = contador + 1; //Y este es el que hace la suma y va avanzando 
    }
  }
}

//Y ahora vamos con la ultima funcion que es para que los vectores se puedan llenar de datos 
void llenarVectores() {
  for (int i = 0; i < tamanoMatriz; i++) { //Dejamos este ciclo para que este pueda recorrer la columna (en este caso)
    vectorUno[i] = int(random(1, 11)); //En este arreglo es dejalo con el ciclo de i que va a ser la columna para qeu este pueda dejar numeros al azar en el vector 1
    vectorDos[i] = int(random(1, 11)); //En este arreglo es dejalo con el ciclo de i que va a ser la columna para qeu este pueda dejar numeros al azar en el vector 2
  }
}
