# Aplikasi Manufaktur

## Deskripsi Project
Aplikasi Manufaktur adalah aplikasi desktop berbasis **Java Swing** yang dibuat menggunakan **NetBeans IDE** dan database **MySQL**.  
Aplikasi ini digunakan untuk membantu pengelolaan data pada perusahaan manufaktur, mulai dari data barang, data karyawan, hingga data produksi.

Project ini dibuat untuk memenuhi tugas/UAS mata kuliah Pemrograman II

---

## Tools yang Digunakan
- Java (NetBeans IDE)
- Java Swing
- MySQL
- Laragon
- Git & GitHub

---

## Fitur Aplikasi

### 1. Login
User harus login terlebih dahulu untuk masuk ke aplikasi.

### 2. Dashboard
Halaman utama untuk navigasi ke semua menu.

### 3. CRUD Barang
Mengelola data barang/produk:
- Tambah barang
- Edit barang
- Hapus barang
- Reset form

### 4. CRUD Karyawan
Mengelola data karyawan:
- Tambah karyawan
- Edit karyawan
- Hapus karyawan
- Reset form

### 5. CRUD Produksi
Mengelola data produksi:
- Tambah data produksi
- Edit data produksi
- Hapus data produksi
- Reset form

---

# Struktur Database
Database yang digunakan adalah:

```sql
manufaktur_db
```

Tabel yang digunakan:
- user
- produk
- karyawan
- produksi

---

# Cara Menjalankan Project

## 1. Clone Repository
Clone project dari GitHub.

## 2. Import Database
Import file database berikut ke MySQL:

```sql
manufaktur_db.sql
```

Langkah:
- Buka Laragon / phpMyAdmin / HeidiSQL
- Buat database baru dengan nama:
```sql
manufaktur_db
```
- Import file:
```sql
manufaktur_db.sql
```

---

## 3. Buka Project di NetBeans
- Open Project
- Pilih folder project `AplikasiManufaktur`

---

## 4. Jalankan Project
Klik Run Project di NetBeans.

---

# Login Default
Gunakan akun berikut untuk login:

Username:
```text
admin
```

Password:
```text
123
```

---

# Tujuan Project
Project ini dibuat untuk:
- Memenuhi tugas/UAS
- Menerapkan konsep Java CRUD
- Menerapkan koneksi Java dengan MySQL
- Memahami penggunaan GitHub untuk version control

---

# Author
Nama: M.Bimo Tri Nugroho
NIM : 231011402859
KELAS : 06TPLE013
Project: Aplikasi Manufaktur
