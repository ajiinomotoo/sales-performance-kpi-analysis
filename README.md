# Sales Performance & KPI Analysis

Project portfolio Data Analyst untuk menganalisis performa penjualan produk health & wellness berdasarkan periode waktu, produk, kategori, platform penjualan, lokasi, discount, dan return.

## 1. Project Overview

Project ini bertujuan untuk menganalisis data penjualan produk health & wellness guna mengevaluasi performa bisnis berdasarkan periode waktu, produk, kategori, platform penjualan, dan lokasi.

Analisis berfokus pada metrik utama seperti revenue, unit terjual, discount, dan return untuk memahami tren performa, mengetahui produk yang memberikan kontribusi terbesar, serta menemukan area bisnis yang memiliki peluang untuk ditingkatkan.

## 2. Business Problem

Perusahaan yang menjual produk health & wellness perlu memahami bagaimana performa penjualan berkembang dari waktu ke waktu serta faktor apa saja yang berkontribusi terhadap revenue.

Tanpa analisis yang terstruktur, perusahaan dapat mengalami kesulitan dalam mengetahui produk dan kategori dengan performa terbaik, platform penjualan yang paling efektif, serta lokasi dengan kontribusi penjualan yang tinggi.

Selain itu, tingginya discount atau tingkat return belum tentu memberikan dampak positif terhadap performa bisnis. Oleh karena itu, diperlukan analisis berbasis data untuk mengevaluasi performa penjualan dan menentukan area yang dapat dioptimalkan.

## 3. Project Objective

Project ini bertujuan untuk:

- Mengevaluasi performa penjualan berdasarkan periode waktu, produk, kategori, platform, dan lokasi.
- Mengidentifikasi tren penjualan.
- Mengetahui produk dan kategori dengan kontribusi revenue terbesar.
- Mengevaluasi performa setiap platform dan lokasi.
- Menganalisis pola discount dan kaitannya dengan revenue serta unit terjual.
- Menganalisis tingkat return berdasarkan produk dan kategori.
- Mengidentifikasi KPI utama.
- Menghasilkan insight dan rekomendasi bisnis berbasis data.

## 4. Stakeholder

Hasil analisis ditujukan kepada tim management dan business team sebagai bahan evaluasi performa penjualan, pemantauan KPI, serta dasar dalam menentukan prioritas dan strategi bisnis.

## 5. Analytical Questions

1. Bagaimana perkembangan revenue dan unit terjual dari waktu ke waktu?
2. Produk apa yang memberikan kontribusi revenue terbesar?
3. Kategori produk mana yang memiliki performa penjualan terbaik?
4. Bagaimana performa penjualan berdasarkan platform?
5. Bagaimana performa penjualan berdasarkan lokasi?
6. Produk dan kategori mana yang memiliki jumlah return tertinggi?
7. Bagaimana pola discount pada produk dan platform yang berbeda, serta bagaimana perbedaannya berkaitan dengan revenue yang dihasilkan?
8. Bagaimana hubungan antara discount dan jumlah unit terjual?
9. Apakah terdapat perbedaan performa penjualan antar platform dan lokasi?
10. Area mana yang menunjukkan peluang peningkatan performa bisnis berdasarkan hasil analisis?

## 6. Dataset

| Informasi | Detail |
|---|---|
| Nama Dataset | Supplement Sales Data |
| Sumber | Supplement Sales Data — Kaggle |
| Periode Data | 6 Januari 2020 – 31 Maret 2025 |
| Jumlah Baris | 4,384 |
| Jumlah Kolom | 10 |

Dataset berisi data transaksi penjualan produk health & wellness dengan informasi:

- Date
- Product Name
- Category
- Units Sold
- Price
- Revenue
- Discount
- Units Returned
- Location
- Platform

## 7. Tools & Technologies

- **Microsoft Excel** — Data cleaning, data preparation, dan exploration analysis.
- **SQL** — Data querying, aggregation, dan business analysis.
- **Power BI** — Data visualization, KPI monitoring, dan dashboard development.
- **Git & GitHub** — Dokumentasi dan publikasi portfolio project.

## 8. Project Scope

### In Scope

- Analisis tren revenue dan unit terjual dari waktu ke waktu.
- Analisis performa produk dan kategori.
- Analisis performa berdasarkan platform penjualan.
- Analisis performa berdasarkan lokasi.
- Analisis discount dan kaitannya dengan revenue serta unit terjual.
- Analisis return berdasarkan produk dan kategori.
- Perhitungan dan monitoring KPI penjualan.
- Identifikasi area bisnis yang memiliki peluang untuk ditingkatkan.
- Pembuatan dashboard untuk memvisualisasikan hasil analisis.

### Out of Scope

- Analisis customer-level karena dataset tidak menyediakan customer ID.
- Analisis profitabilitas karena dataset tidak menyediakan cost dan profit.
- Analisis inventory atau persediaan karena tidak terdapat data stok.
- Analisis efektivitas marketing campaign karena tidak terdapat data campaign dan marketing spend.
- Menyimpulkan hubungan sebab-akibat antara discount dan performa penjualan.

## 9. Data Quality Assessment

Data quality assessment dilakukan untuk memastikan dataset memiliki kualitas yang memadai sebelum digunakan dalam proses analisis.

### 9.1 Completeness

Dataset diperiksa untuk memastikan tidak terdapat missing values pada kolom yang digunakan dalam analisis utama.

Kolom utama meliputi:

- Date
- Product Name
- Category
- Units Sold
- Units Returned
- Price
- Revenue
- Discount
- Platform
- Location

### 9.2 Data Type & Consistency

Tipe data diperiksa untuk memastikan setiap kolom sesuai dengan kebutuhan analisis.

- Date digunakan sebagai informasi waktu.
- Price, Discount, Revenue, Units Sold, dan Units Returned digunakan sebagai data numerik.
- Category, Product Name, Platform, dan Location digunakan sebagai data kategorikal.

### 9.3 Duplicate Records

Dataset diperiksa untuk memastikan tidak terdapat duplicate records yang dapat menyebabkan perhitungan revenue, units sold, atau units returned menjadi tidak akurat.

### 9.4 Data Validity

Nilai pada kolom numerik diperiksa untuk memastikan berada dalam konteks bisnis yang masuk akal, seperti Units Sold dan Units Returned tidak bernilai negatif serta Discount berada pada rentang yang sesuai.

### 9.5 Data Quality Conclusion

Secara keseluruhan, dataset memiliki kualitas yang memadai untuk digunakan dalam analisis sales performance, revenue, discount, dan return.

Namun, terdapat keterbatasan informasi seperti customer ID, cost, profit, inventory, marketing spend, dan return reason yang membatasi jenis analisis yang dapat dilakukan.

## 10. Data Preparation

Data preparation dilakukan untuk memastikan dataset siap digunakan dalam proses analisis dan visualisasi.

Tahapan yang dilakukan meliputi:

- Memeriksa struktur dan tipe data pada setiap kolom.
- Memastikan kolom numerik memiliki tipe data yang sesuai.
- Memeriksa missing values.
- Membuat calculated column **Discount Level** untuk mengelompokkan transaksi berdasarkan tingkat discount.
- Membuat **Sales Month** untuk kebutuhan analisis tren penjualan.
- Membuat measures menggunakan DAX untuk menghitung KPI utama seperti Total Revenue, Total Units Sold, Total Units Returned, dan Return Rate.
- Melakukan validasi hasil perhitungan sebelum digunakan pada dashboard.

## 11. Data Analysis

Analisis dilakukan untuk menjawab analytical questions yang telah ditentukan pada tahap perencanaan project.

### 11.1 Revenue & Sales Trend

Revenue dan unit terjual menunjukkan pola yang relatif fluktuatif dari waktu ke waktu. Meskipun terdapat variasi antarbulan, belum terlihat pola pertumbuhan jangka panjang yang konsisten.

### 11.2 Product Revenue Performance

Biotin menjadi produk dengan revenue tertinggi dengan kontribusi sekitar **$1.49M**, diikuti oleh Zinc dan Pre-Workout dengan revenue sekitar **$1.48M**.

Perbedaan revenue antarproduk dengan performa tertinggi relatif kecil.

### 11.3 Category Performance

Vitamin merupakan kategori dengan revenue tertinggi sekitar **$4.30M**, diikuti Mineral sekitar **$4.28M**.

Kedua kategori tersebut menjadi revenue driver utama dalam dataset.

### 11.4 Platform Performance

iHerb menghasilkan revenue tertinggi sekitar **$7.86M**, diikuti Amazon sekitar **$7.67M** dan Walmart sekitar **$7.39M**.

Perbedaan antarplatform relatif kecil sehingga tidak terdapat ketergantungan yang sangat tinggi terhadap satu platform.

### 11.5 Location Performance

Canada memiliki revenue tertinggi sekitar **$7.85M**, diikuti UK sekitar **$7.70M** dan USA sekitar **$7.36M**.

### 11.6 Return Performance

Total units returned mencapai sekitar **6.7K** dengan overall return rate sebesar **1.02%**.

Vitamin dan Mineral memiliki jumlah return tertinggi secara kategori. Pada level produk, Vitamin C memiliki jumlah return tertinggi.

### 11.7 Discount Pattern

Revenue terbesar berasal dari transaksi dengan discount **1–10%** dan **11–20%**, sedangkan transaksi tanpa discount memberikan kontribusi yang jauh lebih kecil.

### 11.8 Discount & Units Sold

Volume penjualan tertinggi terdapat pada discount **1–10%** dengan sekitar **280K units sold**, diikuti discount **11–20%** dengan sekitar **260K units**.

Namun, hasil ini bersifat observasional dan tidak dapat digunakan untuk menyimpulkan hubungan sebab-akibat antara discount dan peningkatan penjualan.

### 11.9 Platform & Location Comparison

Performa revenue antarplatform dan lokasi menunjukkan distribusi yang relatif seimbang. iHerb dan Canada berada pada posisi tertinggi, sedangkan Walmart dan USA berada pada posisi terendah.

### 11.10 Business Improvement Opportunities

Area yang dapat ditindaklanjuti meliputi:

- Optimalisasi kategori revenue driver.
- Evaluasi performa USA.
- Evaluasi discount strategy.
- Investigasi produk dengan return tinggi.

## 12. Dashboard

Dashboard dikembangkan menggunakan **Power BI** untuk memberikan overview performa penjualan dan return.

Dashboard terdiri dari dua halaman:
<img width="1147" height="876" alt="executive-sales-overview" src="https://github.com/user-attachments/assets/09a68bed-9522-48c2-9ad1-93d3ce5e1ca5" />
<img width="1142" height="902" alt="sales-return-analysis" src="https://github.com/user-attachments/assets/904558de-2ce9-4567-8c27-49321b7a000b" />

### Executive Sales Overview

Menampilkan:

- KPI utama.
- Revenue trend.
- Performa kategori.
- Produk dengan revenue tertinggi.
- Performa platform.
- Performa lokasi.

### Sales & Return Analysis

Menampilkan:

- Units sold.
- Units returned.
- Return rate.
- Discount performance.
- Hubungan performa discount dengan platform dan produk.

Dashboard dilengkapi dengan slicer **Category, Platform, dan Location** untuk memungkinkan stakeholder melakukan interactive analysis.

## 13. Key Insights

### 1. Vitamin dan Mineral menjadi revenue driver utama

Vitamin menghasilkan sekitar **$4.30M** dan Mineral sekitar **$4.28M**. Kedua kategori tersebut menyumbang sekitar **37% dari total revenue sebesar $22.91M**.

### 2. Revenue antarplatform relatif seimbang

iHerb menghasilkan sekitar **$7.86M**, Amazon **$7.67M**, dan Walmart **$7.39M**. Tidak terdapat satu platform yang mendominasi secara ekstrem.

### 3. Canada merupakan market dengan revenue tertinggi

Canada menghasilkan sekitar **$7.85M**, sedangkan USA menghasilkan sekitar **$7.36M**. Perbedaan ini menunjukkan adanya peluang untuk mengevaluasi performa market USA.

### 4. Penjualan terkonsentrasi pada moderate discount

Sebagian besar unit terjual berasal dari transaksi dengan discount **1–20%**, khususnya **1–10%**.

### 5. Overall return rate relatif rendah

Return rate keseluruhan berada di sekitar **1.02%**. Namun, Vitamin dan Mineral memiliki jumlah return absolut tertinggi sehingga perlu diperhatikan karena keduanya juga merupakan revenue driver utama.

## 14. Business Recommendations

### 1. Pertahankan fokus pada revenue driver

Prioritaskan ketersediaan produk dan strategi penjualan pada kategori Vitamin dan Mineral karena memberikan kontribusi revenue terbesar.

### 2. Evaluasi performa market USA

Lakukan investigasi lebih lanjut terhadap product mix, platform, discount, dan return rate di USA untuk memahami faktor yang menyebabkan revenue lebih rendah dibandingkan Canada dan UK.

### 3. Optimalkan discount strategy

Evaluasi efektivitas discount 1–20% dengan membandingkan revenue dan units sold. Tujuannya adalah menemukan tingkat discount yang optimal tanpa memberikan potongan yang tidak diperlukan.

### 4. Investigasi produk dengan return tinggi

Prioritaskan analisis terhadap produk yang memiliki kombinasi volume penjualan dan jumlah return tinggi karena masalah pada produk tersebut berpotensi memberikan dampak bisnis yang lebih besar.

## 15. Project Limitations

Project memiliki beberapa keterbatasan karena informasi yang tersedia pada dataset:

- Dataset tidak menyediakan customer ID sehingga analisis customer-level tidak dapat dilakukan.
- Dataset tidak menyediakan cost dan profit sehingga profitability analysis tidak dapat dilakukan.
- Tidak terdapat informasi inventory atau stock sehingga inventory analysis tidak dapat dilakukan.
- Tidak tersedia data marketing campaign dan marketing spend sehingga campaign effectiveness tidak dapat dianalisis.
- Dataset tidak menyediakan informasi alasan return sehingga penyebab return tidak dapat diidentifikasi.
- Analisis discount bersifat observational sehingga tidak dapat digunakan untuk menyimpulkan causal relationship antara discount dan sales performance.

## 16. Conclusion

Analisis menunjukkan bahwa bisnis memiliki revenue sekitar **$22.91M** dengan **658.5K units sold** dan overall return rate sebesar **1.02%**.

Vitamin dan Mineral menjadi kategori dengan kontribusi revenue terbesar, sementara performa antarplatform dan lokasi relatif seimbang.

Penjualan paling banyak terjadi pada transaksi dengan moderate discount, terutama pada rentang **1–20%**. Namun, hubungan tersebut tidak dapat diinterpretasikan sebagai hubungan sebab-akibat berdasarkan dataset yang tersedia.

Secara keseluruhan, area utama yang dapat menjadi fokus peningkatan adalah optimalisasi revenue-driving categories, evaluasi performa market USA, optimasi discount strategy, serta investigasi produk dengan return tinggi.

Dashboard Power BI digunakan untuk memvisualisasikan hasil analisis dan membantu stakeholder mengevaluasi performa penjualan berdasarkan waktu, produk, kategori, platform, lokasi, discount, dan return.
