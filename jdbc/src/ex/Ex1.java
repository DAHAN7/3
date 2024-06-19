package ex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Ex1 {
//jdbc 데이터베이스 users 테이블에 INSERT문으로 users 정보를 삽입하는 코드를 작성하세요.
public static void main(String[] args) {
    //데이터베이스 연결정보
    String url = "jdbc:mysql://127.0.0.1:3306/jdbc";
    String user = "root";
    String password = "1234";

    String userId="winter";
    String userName="한겨울";
    String userPassword = "12345";
    int userAge = 25;
    String UserEmail = "winter@abc.com";
    Connection connection = null;
    PreparedStatement preparedStatement = null;

    try {
        connection = DriverManager.getConnection(url, user, password);
        String sql = "INSERT INTO users (userId, username, password, age, email) VALUES (?, ?, ?, ?, ?)";
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, userId);
        preparedStatement.setString(2, userName);
        preparedStatement.setString(3, userPassword);
        preparedStatement.setInt(4, userAge);
        preparedStatement.setString(5, UserEmail);

        int rowsAffected = preparedStatement.executeUpdate();
        System.out.println("Rows inserted: " + rowsAffected);

    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        try {
            if (preparedStatement != null) {
                preparedStatement.close();
            }
            if (connection != null) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
}