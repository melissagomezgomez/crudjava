
package co.edu.poli.ces3.universitas.models;

public class Student {
    public int id;
    String document;
    String name;

    public Student(int id, String document, String name) {
        this.id = id;
        this.document = document;
        this.name = name;
    }

    public Student(String document) {
        this.document = document;

    }

    public Student() {

    }

    public int getId() {
        return this.id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDocument() {
        return document;
    }

    public void setDocument(String document) {
        this.document = document;
    }

    private void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return super.toString();
    }
}




