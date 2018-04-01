
package model;


public class Users {
    private long ID;
    private String Name;
    private String Email;
    private String Pass;
    private boolean Role;

    public Users() 
    {
    }

    public Users(long ID, String Name, String Email, String Pass, boolean Role) {
        this.ID = ID;
        this.Name = Name;
        this.Email = Email;
        this.Pass = Pass;
        this.Role = Role ;
    }

    public long getID() {
        return ID;
    }

    public void setID(long ID) {
        this.ID = ID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getPass() {
        return Pass;
    }

    public void setPass(String Pass) {
        this.Pass = Pass;
    }

    public boolean isRole() {
        return Role;
    }

    public void setRole(boolean Role) {
        this.Role = Role;
    }
    
    
    
}
