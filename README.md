# Tutorial Game Development 🎮
Nama  : Nisrina Annaisha Sarnadi  
NPM   : 2306275960

## Tutorial 2
### Latihan: Playtest
- Apa saja pesan _log_ yang dicetak pada panel Output?
```
Godot Engine v4.6.stable.official.89cea1439 - https://godotengine.org
Vulkan 1.3.217 - Forward+ - Using Device #0: AMD - AMD Radeon(TM) Graphics

Platform initialized
```

- Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan _log_ yang dicetak pada panel Output?   
```
Godot Engine v4.6.stable.official.89cea1439 - https://godotengine.org
Vulkan 1.3.217 - Forward+ - Using Device #0: AMD - AMD Radeon(TM) Graphics

Platform initialized 
Reached objective!
Reached objective!
```

- Buka _scene_ MainLevel dengan tampilan _workspace_ 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan _log_ yang dicetak pada panel Output pada percobaan sebelumnya?

Ya, keduanya memiliki kaitan. _Log_ akan dicetak ketika objek pesawat memiliki _collision_ dengan area ObjectiveArea dan ketika tidak berada di ObjectiveArea, maka ObjectiveArea tidak akan ter-_trigger_ dan tidak ada pesan _log_ muncul.

### Latihan: Memanipulasi Node dan Scene
- _Scene_ BlueShip dan StonePlatform sama-sama memiliki sebuah _child_ _node_ bertipe Sprite2D. Apa fungsi dari _node_ bertipe Sprite2D?    

_Node_ bertipe Sprite2D berfungsi sebagai elemen yang menampilkan visual berupa gambar atau Texture objek dan menyediakan pengaturan tampilan seperti posisi, skala, rotasi, dan transparansi agar objek terlihat sesuai kebutuhan di _scene_.

- _Root node_ dari _scene_ BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe _node_?

Perbedaannya terletak pada perilakunya. RigidBody2D adalah objek yang bisa bergerak secara otomatis karena dipengaruhi gaya gravitasi dan tabrakan, seperti BlueShip yang dapat jatuh atau terdorong sedangkan StaticBody2D adalah objek yang tetap diam dan hanya berfungsi sebagai penghalang atau lantai tempat objek lain bertabrakan, seperti StonePlatform yang tidak bergerak meskipun disentuh objek lain.

- Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di _scene_ BlueShip, lalu coba jalankan _scene_ MainLevel. Apa yang terjadi?

Ketika nilai Mass pada RigidBody2D diubah, perilaku BlueShip juga berubah. Jika Mass diperbesar, BlueShip terasa lebih berat dan lebih sulit bergerak atau terdorong. Jika Mass diperkecil, BlueShip menjadi lebih ringan dan lebih mudah bergerak. Namun, karena gerakan BlueShip terbatas hanya naik dan turun, perubahan yang terlihat tidak terlihat.

- Ubah nilai atribut Disabled milik _node_ CollisionShape2D pada _scene_ StonePlatform, lalu coba jalankan _scene_ MainLevel. Apa yang terjadi?

Ketika atribut Disabled pada node CollisionShape2D diaktifkan, maka _collision_ pada StonePlatform tidak aktif sehingga BlueShip tidak lagi tertahan oleh platform dan akan langsung jatuh ke bawah karena tidak ada permukaan yang menahannya.

- Pada _scene_ MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik _node_ BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?

Ketika atribut Position, Rotation, dan Scale milik node BlueShip dimanipulasi, tampilan visual pesawat di Viewport akan berubah. Manipulasi Position akan memindahkan lokasi objek, misalnya menjadi di pojok kiri atas (100.000, 70.000). Manipulasi Rotation akan memutar orientasi objek, misalnya mengubahnya menjadi 180 derajat membuat BlueShip menghadap ke bawah. Terakhir, manipulasi Scale mengubah ukuran tampilan objeknya, misalnya membuat pesawat lebih besar.

- Pada _scene_ MainLevel, perhatikan nilai atribut Position _node_ PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position _node_ StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam _scene_ (menurut Inspector) namun visualisasinya berada di posisi yang tepat?

Nilai Position pada StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene karena yang ditampilkan di Inspector adalah posisi lokal terhadap _parent_, bukan posisi sebenarnya di _scene_. Walaupun angkanya tampak tidak sesuai, secara visual objek tetap berada di posisi yang benar karena mengikuti posisi _parent_-nya.
