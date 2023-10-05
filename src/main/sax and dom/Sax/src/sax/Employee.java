/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sax;
public class Employee {
    private int id;
    private String name;
    private String gender;
    private String age;
    private String role;
    public int getId(){
        return id;
    }
    public void setId(int id){
        this .id=id;
    }
    public String getName(){
        return name;
    }
    public void setName(String name){
        this.name = name;
    }
    public String getGender(){
        return gender;
    }
    public void setGender(String gender){
        this.gender = gender;
    }
    public String getAge()
    {
        return age;
    }
    public void setAge(String age){
        this.age = age;
    }
    public String getRole(){
        return role;
    }
    public void setRole(String role){
        this.role= role;
    }
    @Override
    public String toString(){
        return "Employce ::ID="+this.id+"Name ="+this.name+"Age="+this.age+"Gender="+this.gender +"Role =" +this.role;
    }
}
