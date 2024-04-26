<%@ page import="java.util.List" %>
<%@ page import="org.pbo.pertemuan8.models.Mahasiswa" %>
<% List<Mahasiswa> d = (List<Mahasiswa>) request.getAttribute("data"); %>
<!DOCTYPE html>
<html>
    <head>
        <title>Mahasiswa</title>
    </head>
    <body>
        <h1>Mahasiswa</h1>
        <p>
            Status Connection: <b>${connStatus == "Connected" ? "<font color='green'>Connected</font>" : "<font color='red'>Disconected</font>"}</b>
        </p>
        <p>
            Error Message: <font color="red">${connMessage}</font>
        </p>
        <p>
            Jumlah Data: ${data.size()}
        </p>
        <p>
            <a href="/add">Tambah</a>
        </p>
        <table width="100%" border="1" rules="all" cellpadding="5">
            <thead>
                <tr bgcolor="#e6e6fa">
                    <th>No.</th>
                    <th>NIM</th>
                    <th>Nama</th>
                    <th>Usia</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
            <% for (int i = 0; i < d.size(); i++) { %>
                <tr>
                    <td><%= i + 1 %></td>
                    <td><%= d.get(i).getNim() %></td>
                    <td><%= d.get(i).getNama() %></td>
                    <td><%= d.get(i).getUsia() %></td>
                    <td>
                        <a href="/edit?nim=<%= d.get(i).getNim() %>">edit</a> | <a href="/delete?nim=<%= d.get(i).getNim() %>">delete</a>
                    </td>
                </tr>
            <% } %>

            <% if (d.size() == 0) { %>
                <tr>
                    <td colspan="5" align="center">Tidak Ada Data</td>
                </tr>
            <% } %>
            </tbody>
        </table>
    </body>
</html>