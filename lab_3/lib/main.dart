import 'package:flutter/material.dart';//импортирует библиотеку,для создания пользовательского интерфейса 

void main() { //входа в приложение,гл функция 
  runApp(const MyApp()); //запускает пр,создавая виджет MyApp
}
class MyApp extends StatefulWidget { //наследуется от StatefulWidget
  const MyApp({super.key});//супер ключ от рд
 
  @override //белгілеу,нақтылау
  State<MyApp> createState() => _MyAppState(); }//управляет состоянием прилож create
class _MyAppState extends State<MyApp> {
 
  @override //анотация,проверяет и испл 
  Widget build(BuildContext context) { //метод,создает и возвращает пользовательский интерфейс build
    return MaterialApp(  //MaterialApp гл виджет и шаблон флаттер, ретурн результатын қайтару 
      home: Scaffold ( //основной контейнер экрана
        appBar:AppBar( // верхняя панель с заголовком лаб 
          title: Text("Lab_3"),
        ),
        
        body: SingleChildScrollView( //основное содержимое экрана,Single позволяет прокручивать содержимое
           child: Column( //виджет,который располагает элементы вертикально
            children: [  //1-2 виджетті тізімге біріктіру    //нетворк загружает изображение из интернета 
             Image.network("https://avatars.mds.yandex.net/get-mpic/11401947/2a0000018c290d016b0a965f9320efce73e5/orig",
             width: 300,height: 300,),
             Image.asset("assets/images/1.ijpeg.jpg",width: 300,height: 300,), //загружает изображение из лк файлов
        buildStack(),  //метод,создающий стек с текстом поверх изображения
        buildTypesButton() //метод,создающий набор кнопок 
      ],
      ),
     ), 
    ),
  );
 }
   Widget buildStack(){  //накладывает виджеты друг на друга 
    return Stack( 
      alignment: Alignment.center,// центрирует текст поверх изображения 
      children: [
        Image.asset("assets/images/1.ijpeg.jpg",width: 300,height: 300),
        Text("Welcome to Flutter",
        style: TextStyle(color: Colors.red),
        ),
      ],
    );
  }
   Widget buildTypesButton (){ //метод 3 кнопки 
   return Column( //размещает кнопки вертикально
   mainAxisAlignment: MainAxisAlignment.center, //центрирует кнопки 
   children: [
 //1 ші кнопка 
  ElevatedButton(onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
          fixedSize: const Size(200, 50),
    ),
       child: const Text (
        "Show SnackBar",
          style: TextStyle(fontSize: 16, color: Colors.white),
       ),
      ),

//2 ші кнопка 
      TextButton( //кнопка с текстом 
         onPressed: (){},//выполняется при нажатии 
          style: TextButton.styleFrom(
            fixedSize: const Size(200, 50), //задает размер кнопки 
      ),
       child: const Text ('Go to Second Screen', //текст кнопки 
         style: TextStyle(fontSize: 16,color: Colors.green),
       ),
       ),
    
//3 ші кнопка 
      OutlinedButton(  //кнопка с рамкой 
       onPressed: () {},
         style: OutlinedButton.styleFrom(
           fixedSize: const Size(200, 50),
            side: const BorderSide( //делает границу черной 
              color: Colors.black),
      ),
      child:const Text('Toggle Image',
        style: TextStyle(
          fontSize: 16,
           color: Colors.black),
          ),
        ),
      ],
    );
  }
}
