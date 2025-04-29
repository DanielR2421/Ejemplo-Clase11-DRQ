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

void setup() {
  table = loadTable("user_behavior_dataset.csv", "header");
  //println(table.getRowCount());

  for (TableRow row : table.rows()) {
    int userId = row.getInt("User ID");

    println("User " + userId);
  }
}
