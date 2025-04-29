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

float[] batteyDrain;
float[] numberOfappsInstalled;

void setup() {
  size(1000, 1000);

  //Cargar los datos
  table = loadTable("user_behavior_dataset.csv", "header");
  //println(table.getRowCount());

  //Guardar el número de filasen la tabla
  nSamples = table.getRowCount();

  //Inicializamos los arrays
  appUsageTime = new float[nSamples];
  screenOnTime = new float[nSamples];

  //Ejemplo mio
  batteyDrain = new float[nSamples];
  numberOfappsInstalled = new float[nSamples];


  //Asignamos los datos

  for (int i = 0; i < nSamples; i++) {
    appUsageTime[i] = table.getFloat(i, "App Usage Time (min/day)");
    screenOnTime[i] = table.getFloat(i, "Screen On Time (hours/day)");

    batteyDrain[i] = table.getFloat(i, "Battery Drain (mAh/day)");
    numberOfappsInstalled[i] = table.getFloat(i, "Number of Apps Installed");
  }
}

void draw() {
  background(0);

  for (int i = 0; i < nSamples; i++) {
    //                value         start1   stop1            start2   stop2
    float x = map(appUsageTime[i], 0, max(appUsageTime), 0, width);
    float y = map(screenOnTime[i], 0, max(screenOnTime), height, 0);

    float rectWidth = 10;
    float rectHeight = 10;

    fill(random(100, 255), random (0, 100), random(50, 80));
    rect(x, y, rectWidth, rectHeight);
  }

//Ejemplo bio
  for (int h = 0; h < nSamples; h++) {
    float x1 = map(batteyDrain[h], 0, max(batteyDrain), 0, width);
    float y1 = map(numberOfappsInstalled[h], 0, max(numberOfappsInstalled), height, 0);
  
   float rectWidth1 = 10;
    float rectHeight1 = 10;
  
  fill(random(0, 150), random (0, 200), random(90, 175));
    ellipse(x1, y1, rectWidth1, rectHeight1);
  
  
  }
}
