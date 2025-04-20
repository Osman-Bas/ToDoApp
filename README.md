# To-Do Uygulaması (SwiftUI + Firebase)

Bu proje, iOS platformu için SwiftUI ile geliştirilmiş ve Firebase ile entegre edilmiş bir To-Do (Yapılacaklar Listesi) uygulamasıdır. Kullanıcılar görev ekleyebilir, düzenleyebilir, silebilir ve tamamlanmış olarak işaretleyebilir.


## Özellikler

- ✅ Firebase Authentication ile kullanıcı girişi (Email/Şifre veya Google Sign-In)
- ✅ Firebase Firestore ile gerçek zamanlı veri senkronizasyonu.
- ✅ SwiftUI ile modern ve kullanıcı dostu arayüz.
- ✅ Görev ekleme, düzenleme, silme ve tamamlama işlemleri..
- ✅ Kategorilere göre görev filtreleme.
- ✅ Karanlık/Aydınlık tema desteği.

## Teknolojiler ve Kütüphaneler

- **SwiftUI** - UI geliştirme
- **Firebase** - Backend servisleri (Auth, Firestore)
- **Swift Package Manager** - Bağımlılık yönetimi

## Kurulum

### Ön Koşullar

- Xcode 14 veya üzeri
- iOS 16+ (SwiftUI 4.0 desteği için)
- Firebase hesabı (Firestore ve Auth kullanımı için)

### Adımlar

1. **Projeyi klonlayın:**
   ```bash
   git clone https://github.com/kullaniciAdiniz/todo-app-ios.git

2. **Firebase Ayarları:**

   - Firebase Console'da yeni proje oluştur
   - iOS uygulaması ekle
   - GoogleService-Info.plist'i indir
   -Dosyayı Xcode proje dizinine sürükle

3. **Bağımlılıklar:**

# CocoaPods kullanıyorsanız:
pod install

# SPM kullanıyorsanız:
xcodebuild -resolvePackageDependencies
4. **Build ve Çalıştırma**

# Build:
xcodebuild -workspace TodoApp.xcworkspace -scheme TodoApp

# Veya Xcode'da:
Command + B (Build)
Command + R (Run)

## 🤝 Katkı

1. Fork oluştur
2. Yeni branch aç:
   git checkout -b yeni-ozellik
3. Değişiklikleri ekle:
   git add .
4. Commit yap:
   git commit -m "yeni özellik eklendi"
5. Pushla:
   git push origin yeni-ozellik
6. GitHub'da Pull Request aç
