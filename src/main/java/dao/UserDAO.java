package dao;

import model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/sakila?useSSl=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "3301";
    private String Driver = "com.mysql.cj.jdbc.Driver";

    private static final String INSERT_USERS_SQL = "INSERT INTO users" + " (name, email, contract, password, balance, role) VALUES "
            + " (?, ?, ?, ?, ?, ?)";
    private static final String SELECT_USER_BY_ID = "select id, name, email, contract, password, balance, role from users where id = ?";
    private static final String SELECT_ALL_USERS = "select * from users";
    private static final String DELETE_USERS_SQL = "delete from users where id = ?;";
    private static final String UPDATE_USERS_SQL = "update users set name = ?, email = ?, contract = ?, password = ?, balance = ?, role = ? where id = ?;";

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName(Driver);
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    //Create user
    public void insertUser(User user)  throws SQLException {
        try(Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getContract());
            preparedStatement.setString(4, user.getPassword());
            preparedStatement.setString(5, String.valueOf(user.getBalance()));
            preparedStatement.setString(6, user.getRole());
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    //Select user by id
    public User selectUser(int id) {
        User user = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);) {
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                String email = rs.getString("email");
                String contract = rs.getString("contract");
                String password = rs.getString("password");
                int balance = rs.getInt("balance");
                String role = rs.getString("role");
                user = new User(id, name, email, contract, password, balance, role);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
    //Select users
    public List<User> selectAllUsers() {
        List<User> users = new ArrayList<>();
        try(Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);) {
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String contract = rs.getString("contract");
                String password = rs.getString("password");
                int balance = rs.getInt("balance");
                String role = rs.getString("role");
                users.add(new User(id, name, email, contract, password, balance, role));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }
    //Delete user
    public boolean deleteUser(int id) throws SQLException {
        boolean rowDeleted;
        try(Connection connection = getConnection();
            PreparedStatement statement = connection.prepareStatement(DELETE_USERS_SQL)) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }
    //Update user
    public boolean updateUser(User user) throws SQLException {
        boolean rowUpdated;
        try(Connection connection = getConnection();
            PreparedStatement statement = connection.prepareStatement(UPDATE_USERS_SQL)) {
            statement.setString(1, user.getName());
            statement.setString(2, user.getEmail());
            statement.setString(3, user.getContract());
            statement.setString(4, user.getPassword());
            statement.setInt(5, user.getBalance());
            statement.setString(6, user.getRole());
            statement.setInt(7, user.getId());

            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }
}
