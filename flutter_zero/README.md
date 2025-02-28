# flutter_application_1

# Flutter Demo Projesi

Bu proje, **Flutter** ile geliştirilmiş basit bir sayac uygulamasıdır. Projede öğrendiğiniz temel kavramları ve Flutter'da kullanılan bazı anahtar kelimeleri içermektedir. Aşağıda projenin ana bileşenlerini ve kullanılan Flutter terimlerini bulabilirsiniz.

## Proje Özeti

Bu uygulama, temel **StatefulWidget** ve **StatelessWidget** kullanımını göstermektedir. Ekranda bir butona basıldıkça sayacın arttığı basit bir uygulamadır.

### Kullanılan Anahtar Kelimeler ve Kavramlar

#### 1. **StatelessWidget**
- **StatelessWidget**, sabit ve değişmeyen widget'lar için kullanılır. Uygulamanın statik öğeleri burada tanımlanır.

#### 2. **StatefulWidget**
- **StatefulWidget**, dinamik öğelerin (değişkenler ve interaktif öğeler gibi) yer aldığı widget'lardır. Bu widget'lar durum bilgilerini saklayabilir ve yeniden render edebilir.
  
#### 3. **build() Metodu**
- **build()** metodu, widget'ların ekranda nasıl görüneceğini tanımlar. **StatelessWidget** ve **StatefulWidget**'larda ortak olarak bulunur. Ekranın yeniden çizilmesi gerektiğinde bu metot tekrar çağrılır.

#### 4. **setState()**
- **setState()** fonksiyonu, widget'ın durumunu değiştirmek için kullanılır. Bu metod, durumu günceller ve ekranın yeniden çizilmesini sağlar.

#### 5. **MaterialApp**
- **MaterialApp**, Flutter uygulamalarının temel iskeletini oluşturur. Tema, başlık ve başlangıç sayfası gibi temel yapı taşlarını burada tanımlarız.

#### 6. **Scaffold**
- **Scaffold**, bir uygulamanın temel yapısını (appBar, body, floatingActionButton vb.) sağlayan bir yapıdır.

#### 7. **AppBar**
- **AppBar**, ekranın üst kısmında yer alan başlık çubuğunu tanımlar. Tema ve başlık ayarları yapılabilir.

#### 8. **FloatingActionButton**
- **FloatingActionButton**, genellikle ekranın sağ alt köşesinde bulunan ve kullanıcı etkileşimi sağlayan bir butondur.

## Nasıl Çalıştırılır?

Bu projeyi çalıştırmak için Flutter'ı bilgisayarınıza kurmanız gerekmektedir. Daha sonra terminalde şu komutları sırasıyla çalıştırabilirsiniz:

```bash
flutter pub get
flutter run
