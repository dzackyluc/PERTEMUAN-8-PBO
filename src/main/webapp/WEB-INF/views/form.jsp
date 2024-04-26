<!DOCTYPE html>
<html>
<head>
    <title>Mahasiswa</title>
</head>
<body>
<h1>Form Mahasiswa</h1>
<form action="/save">
    <fieldset>
        <p>
            NIM <br>
            <input type="text" name="nim" required>
        </p>
        <p>
            Nama <br>
            <input type="text" name="nama" required>
        </p>
        <p>
            Usia <br>
            <input type="number" name="usia" required>
        </p>
        <p>
            <input type="submit" name="simpan">
            <a href="/">Batal</a>
        </p>
    </fieldset>
</form>
</body>
</html>