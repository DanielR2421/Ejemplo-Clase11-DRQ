//BASES DE DATOS:

//Variables:
//CUalitativas:
//NOminales: Clasificar
//Ordinales: Jerarquizar

/*
Bases de datos
 Hay 2 formatos: wide format y Long format
 
 Tipos de datos:
 EStructurados: tabla de excel
 No estructurados: Datos que no tienes forma concreta de organizarse(la mayoria son asi)
 Estos permiten armar la inteligencia artificial
 
 Semi-estructurada: Esta en la mitad de ambos
 
 Processing no sirve para procesar datos
 Pero es posible al ser mas creativo hay mas formas de visualizar esos datos
 
 Formato para mostrar los datos: CSV es el mas comun
 y el otro es el formato JSON
 
 Hoy vamos a usarlo en CSV
 
 */

Table table;
int nSamples;
float[] appUsageTime;
float[] screenOnTime;

void setup() {
  size(1000, 1000);
  background(0);

  //Cargar los datos
  table = loadTable("user_behavior_dataset.csv", "header");
  //println(table.getRowCount());

  //Guardar el número de filasen la tabla
  nSamples = table.getRowCount();

  //Inicializamos los arrays
  appUsageTime = new float[nSamples];
  screenOnTime = new float[nSamples];

  //Asignamos los datos: el for loop hace esto mas rapido y varias veces del totazo
  //appUsageTime[0] = table.getFloat(i, "App Usage Time (min/day)");
  //appUsageTime[1] = table.getFloat(i, "App Usage Time (min/day)");
  //appUsageTime[1] = table.getFloat(i, "App Usage Time (min/day)");
  //...
  
  //Asignamos los datos
  
  for (int i = 0; i < nSamples; i++) {
    appUsageTime[i] = table.getFloat(i, "App Usage Time (min/day)");
    screenOnTime[i] = table.getFloat(i, "Screen On Time (hours/day)");
  }
}
