<#
cogigo de programacion para automatizar una tarea 
#>
Get-ExecutionPolicy
Set-ExecutionPolicy RemoteSigned
$consulta = "SELECT NUM_ABONADO, NUM_CELULAR, COD_CENTRAL, COD_SITUACION FROM GA_ABOCEL WHERE NUM_CELULAR IN ("
$rutaArchivoImportar = "C:\Users\Desarrollo_Optecom\Documents\Automa" #creamos una variable en donde guardamos la ruta del cvs
Set-Location $rutaArchivoImportar 
$archivoImportar= Import-Csv "Libro.csv"#importamos el archivo que vamos a usar
$prueba5 =$archivoImportar | Where-Object NUM_CELULAR | Select-Object -Property NUM_CELULAR # filtramos los numero de los calulares y lo guardamos en un objeto 
$celulares = @()#  Declaramos la Variable la cual guarda los celulares en un string
for ($i = 0; $i -le $prueba5.Count; $i++)  {  $celulares = $prueba5.NUM_CELULAR  }
$consulta + ($celulares -join ',') + ");" | Out-File C:\Users\Desarrollo_Optecom\Documents\ExpoAutoma\proceso.txt



write-output $consulta + $celulares 

$prueba5[0].NUM_CELULAR

$celulares.GetType().Name


$prueba5 -is [array] #comprobamos si es un alrray
$prueba5.count #numero de elementos del array


for ($i = 0; $i -le  1; $i++) {  Write-Output $prueba2  }

Write-Output $numeroDeTelefonos 
File C:\Users\Desarrollo_Optecom\Documents\ExpoAutoma\proceso.txt

$archivoImportar | Where-Object Num_celular | Select-Object -Property Num_celular | Format-Table | Out-File C:\Users\Desarrollo_Optecom\Documents\ExpoAutoma\proceso.txt

Import-Csv "hojaDeCalculo.csv" | Where-Object { $_.'cod_situacion' -eq ('AAA' )  }  | Select-Object -Property Num_abonado | Format-Table | Out-

Import-Csv "hojaDeCalculo.csv" -Header 'Numero1', 'Numero2'

Get-childitem | Where-Object Status -eq Numero1
Set-Location "C:\Users\Desarrollo_Optecom\Documents\ExpoAutoma"
Get-Content proceso.txt