<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Tambah Data Mahasiswa</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/main.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h2 class="mt-4">Form Tambah Data Mahasiswa</h2>
        <form action="{{ route('store') }}" method="POST">
            @csrf
            <div class="form-group">
                <label for="nama">Nama:</label>
                <input name="nama" type="text" class="form-control" id="nama" required>
            </div>

            <div class="form-group">
                <label for="nim">NIM:</label>
                <input name="nim" type="text" class="form-control" id="nim"  required>
            </div>

            <div class="form-group">
                <label for="jurusan">Jurusan:</label>
                <input name="jurusan" type="text" class="form-control" id="jurusan"  required>
            </div>

            <div class="form-group">
                <label for="alamat">Alamat:</label>
                <input name="alamat" type="text" class="form-control" id="alamat"  required>
            </div>
            
            <div class="form-group">
                <label for="no_identitas">Nomor Identitas:</label>
                <input name="no_identitas" type="text" class="form-control" id="no_identitas"  required>
            </div>

            <button type="submit" class="btn btn-primary mt-3">Tambah</button>
        </form>
    </div>

    <!-- Bootstrap JS (optional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
