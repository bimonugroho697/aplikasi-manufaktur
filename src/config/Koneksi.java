package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Koneksi {
    static Connection conn;

    public static Connection getKoneksi() {
        try {
            String url = "jdbc:mysql://localhost:3306/manufaktur_db?useSSL=false&serverTimezone=UTC";
            String user = "root";
            String pass = "";

            conn = DriverManager.getConnection(url, user, pass);

            System.out.println("Koneksi Berhasil");

        } catch (SQLException e) {
            System.out.println("Koneksi Gagal");
            System.out.println(e.getMessage());
        }

        return conn;
    }
}