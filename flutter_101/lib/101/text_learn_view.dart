  import 'package:flutter/material.dart'; // Flutter'in temel bilesenlerini ice aktarir.

class TextLearnView extends StatelessWidget { // StatelessWidget kullanarak degismeyen bir widget tanimlar.
  const TextLearnView({Key? key}) : super(key: key); // Kurucu metot, key parametresini ust sinifa iletir.

  final String name = "User";


  @override
  Widget build(BuildContext context) { // Widget'in arayuzunu olusturan build metodu.
    return Scaffold( // Sayfanin temel yapisini olusturan Scaffold bileseni.
      backgroundColor: Color.fromARGB(255, 233, 150, 122),  // arkaplan rengi
      body: Center( // Icerigi ekranda ortalar.
        child: Text( // Metin gosteren bir widget olusturur.
       ('Welcome $name\n') // String çarpma işlemi doğrudan burada çalışır.
        + 'Name Length: ${name.length}', // name'in uzunluğunu ekrana yazdırır.
          maxLines: 2, // En fazla 2 satir gosterilir.
          overflow: TextOverflow.ellipsis, // Fazla metin varsa "..." ile gosterilir.
          textAlign: TextAlign.right, // Metni saga hizalar.
          style: ProjectStyles.welcomeStyle,
        ),
      ),
    );
  }
}

class ProjectStyles{
  static TextStyle welcomeStyle = TextStyle(
    wordSpacing: 2, // Kelimeler arasindaki boslugu artirir.
    decoration: TextDecoration.underline, // Metni alti cizili yapar.
    fontStyle: FontStyle.italic, // Metni italik yapar.
    letterSpacing: 2, // Harfler arasindaki boslugu artirir.
    fontSize: 16, // Yazi boyutunu 16 piksel yapar.
    fontWeight: FontWeight.w600, // Yazi kalinligini yari kalin yapar.
    color: Colors.deepPurple, // Yazi rengi
  );
}