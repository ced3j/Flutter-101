import 'package:flutter/material.dart';
// Flutter'in material design kutuphanesini dahil ettim
// UI widget'larini kullanabiliriz.

// Widget nedir? 
/*
Flutter'da her sey bir widget
Ekranda gorunen veya gorunmeyen bilesenlerdir. Butonlar, metinler, gorseller, sayfalar...

Iki tur widget vardir: 

- Stateless Widget ( Degismeyen widget )
  Bir kez olusturulur ve bir daha degismez. Ornegin sabit metin: Text("Merhaba")

- Stateful Widget ( Degisebilen widget )
  Ornegin bir sayac uygulamasinda sayi degistikce ekranda guncellenmesi
*/

void main() {
  runApp(const MyApp());
}

// runApp: verilen Widget'i calistirir ve ekranda gosterir
// MyApp adli sinif olusturulur ve baslatilir

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
} 

/*

MyApp sinifi StatelessWidget'tan miras alir
Stateless degismeyen arayuz icindir yani bu widget icinde degisen bir veri yok
MyApp uygulamanin temel yapisini belirler

const MyApp({super.key});  Nedir?
    Bu bir constructor. Bu satir MyApp nesnesi olusturulurken anahtar gibi key bilgileri
    alabilir.  

Widget build(BuildContext context)  
    Her Flutter widget'inda build() metodu vardir
    Arayuzde hangi widget'larin gorunecegini belirler
    Ekrani tekrar cizmesi gerektiginde build() tekrar calisir

        Eger Stateful Widget kullaniyorsak ve setState() cagirirsak, 
        Flutter build() metodunu yeniden calistirir.
        Ama Stateless Widget'larda build() sadece bir kez calisir ve bir daha degismez.

return MaterialApp(...)
    MaterialApp uygulamanin ana iskeletini olusturur
    title: uygulamanin basligi (genelde cihazda gozukmez)
    theme: uygulamanin temasini belirler renk, yazi vs.
          ColorScheme.fromSeed(seedColor: Colors.deepPurple) --> renk duzeni ve ana renk
    home: MyHomePage(...) → Açilis sayfasi olarak MyHomePage widget'ini kullaniyor.
          Uygulama acildiginda gosterilecek sayfayi belirler
          Burada MyHomePage adli widget kullaniliyor
          MyHomePage icinde degismeyen veriler oldugu icin const
*/

class MyHomePage extends StatefulWidget {
  // MyHomePage, bir StatefulWidget'tir.
  // Yani, durumu degisebilen bir widget olusturuyoruz.

  const MyHomePage({super.key, required this.title});
  // Yapici (constructor) metod.
  // `title` parametresi zorunlu (`required`) olarak aliniyor.

  final String title;
  // `title` adinda bir degisken tanimladik.
  // `final` oldugu icin sadece baslangicta atanabilir, sonradan degistirilemez.

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  // `createState()` metodu, StatefulWidget icin bir "state" (durum) nesnesi dondurur.
  // Burada `_MyHomePageState` sinifi cagriliyor ve widget'in durumu bu sinif tarafindan yonetilecek.
}

class _MyHomePageState extends State<MyHomePage> {
  // Sayac degiskeni, baslangicta 0 olarak ayarlanmis
  int _counter = 0;

  // Bu fonksiyon, butona basildiginda cagrilir
  void _incrementCounter() {
    setState(() {
      // Sayac degerini 1 artirir
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Uygulamanin ust cubugu (AppBar)
      appBar: AppBar(
        // Temanin birincil renginin tersini arka plan rengi olarak ayarlar
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Uygulama cubuguna (AppBar) baslik ekler
        title: Text(widget.title),
      ),
      
      // Uygulamanin govde kismi (body)
      body: Center(
        child: Column(
          // Elemanlari dikeyde ortalar
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Sabit bir bilgilendirme metni
            const Text('You have pushed the button this many times:'),
            
            // Sayac degerini gosteren metin
            Text(
              '$_counter', // Sayac degeri burada gosterilir
              style: Theme.of(context).textTheme.headlineMedium, // Tema stilini uygular
            ),
          ],
        ),
      ),
      
      // Ekranin sag alt kosesinde yusen buton (FAB)
      floatingActionButton: FloatingActionButton(
        // Butona basildiginda _incrementCounter fonksiyonunu cagirir
        onPressed: _incrementCounter,
        // Butonun uzerine gelindiginde gorunen ipucu
        tooltip: 'Increment',
        // Butonun icindeki + simgesi
        child: const Icon(Icons.add),
      ), 
    );
  }
}
