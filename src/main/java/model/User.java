package model;

public class User {
    private int id;
    private String name;
    private String email;
    private String contract;
    private String password;
    private int balance;
    private String role;

    public User(int id, String name, String email, String contract) {
        super();
        this.id = id;
        this.name = name;
        this.email = email;
        this.contract = contract;
    }

    public User(int id, String name, String email, String contract, String password, int balance) {
        super();
        this.id = id;
        this.name = name;
        this.email = email;
        this.contract = contract;
        this.password = password;
        this.balance = balance;
    }

    public User(String name, String email, String contract, String password, int balance) {
        super();
        this.name = name;
        this.email = email;
        this.contract = contract;
        this.password = password;
        this.balance = balance;
    }

    public User(String name, String email, String contract) {
        super();
        this.name = name;
        this.email = email;
        this.contract = contract;
    }

    public User(String email, String password) {
        super();
        this.email = email;
        this.password = password;
    }

    public User() {

    }

    public User(String name, String email, String contract, String password, int balance, String role) {
        super();
        this.name = name;
        this.email = email;
        this.contract = contract;
        this.password = password;
        this.balance = balance;
        this.role = role;
    }

    public User(int id, String name, String email, String contract, String password, int balance, String role) {
        super();
        this.id = id;
        this.name = name;
        this.email = email;
        this.contract = contract;
        this.password = password;
        this.balance = balance;
        this.role = role;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContract() {
        return contract;
    }

    public void setContract(String contract) {
        this.contract = contract;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getBalance() {
        return balance;
    }

    public void setBalance(int balance) {
        this.balance = balance;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String password) {
        this.role = role;
    }
}
