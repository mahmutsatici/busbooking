# Otobüs Bileti Satış Uygulaması

Bu uygulama, CodeIgniter 3 kullanılarak geliştirilmiş bir otobüs bileti satış platformudur. Otobüs firmalarının bileti satın alabileceği, seferleri yönetebileceği ve müşteri işlemlerini takip edebileceği bir platform sağlar. Ayrıca, yönetici paneli aracılığıyla sistemi yönetmek ve raporlamak mümkündür.

## Kurulum

1. Projeyi klonlayın veya indirin.
2. Sunucunuzda bir veritabanı oluşturun.
3. `application/config/database.php` dosyasını açın ve veritabanı ayarlarınızı yapılandırın.
4. `application/config/config.php` dosyasında `$config['base_url']` ayarını yapılandırın.
5. Veritabanınıza `database.sql` dosyasını kullanarak tabloları oluşturun.
6. Yönetici paneline erişebilmek için `admin` klasörünü sunucunuzun kök dizinine kopyalayın.
7. Yönetici paneline erişmek için `admin/config.php` dosyasında `$config['base_url']` ayarını yapılandırın.

## Yönetici Paneli

Yönetici paneli, sistemi yönetmek ve raporlamak için kullanılır. Aşağıdaki özellikleri içerir:

- **Kullanıcı Yönetimi:** Yeni kullanıcılar ekleyebilir, var olanları düzenleyebilir veya silebilirsiniz.
- **Sefer Yönetimi:** Otobüs seferlerini ekleyebilir, düzenleyebilir veya silebilirsiniz.
- **Bilet Satışları:** Satılan biletleri görüntüleyebilir ve raporlayabilirsiniz.
- **Raporlama:** Satış verilerini filtreleyebilir ve raporlayabilirsiniz.

## Kullanıcı Paneli

Kullanıcı paneli, müşterilerin otobüs bileti satın almasını sağlar. Aşağıdaki özellikleri içerir:

- **Bilet Arama:** Tarih ve varış noktasına göre seferleri arayabilirsiniz.
- **Bilet Satın Alma:** Seçilen sefere ait biletleri satın alabilirsiniz.
- **Bilet İptali:** Satın alınan biletleri iptal edebilirsiniz.

## Katkılar

Katkılar her zaman açıktır. Herhangi bir hata, güvenlik açığı veya öneriniz varsa, lütfen bir konu açarak bize bildirin.

## Lisans

Bu proje MIT lisansı altında lisanslanmıştır. Daha fazla bilgi için [LICENSE](LICENSE) dosyasına bakın.
