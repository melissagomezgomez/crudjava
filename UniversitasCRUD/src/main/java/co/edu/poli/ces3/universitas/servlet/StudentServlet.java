package co.edu.poli.ces3.universitas.servlet;

import java.io.*;
import java.util.ArrayList;

import co.edu.poli.ces3.universitas.models.Student;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.ServletException;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;


@WebServlet(name = "studentServlet", value = "/student")
public class StudentServlet extends MyServletAbstract {
    private String message;
    private Gson gson;
    private GsonBuilder gsonBuilder;
    private ArrayList<Student> students;

    public void init() {
        gsonBuilder = new GsonBuilder();
        gson = gsonBuilder.create();

        students = new ArrayList<>();
        Student student1 = new Student();
        student1.id = 10;
        student1.setName("Pedro");
        student1.setDocument("45787");

        students.add(student1);

        for (int i = 0; i < students.size(); i++) {
            System.out.println(students.get(i).getName());
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("application/json");
        String studentId = request.getParameter("studentId");
        PrintWriter out = response.getWriter();

        if (studentId == null) {
            out.println(gson.toJson(students));
        } else {
            Student studentSearch = null;
            for (Student s : students) {
                if (s.getId() == Integer.parseInt(studentId)) {
                    studentSearch = s;
                    break;
                }
            }
            out.println(gson.toJson(studentSearch));
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletOutputStream out = resp.getOutputStream();
        resp.setContentType("application/json");
        JsonObject body = this.getParamsFromPost(req);
        Student std = new Student(
                body.get("id").getAsInt(),
                body.get("document").getAsString(),
                body.get("name").getAsString()
        );
        this.students.add(std);
        out.println(gson.toJson(std));
        out.flush();
    }


    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletOutputStream out = resp.getOutputStream();
        resp.setContentType("application/json");

        StringBuilder buffer = new StringBuilder();
        BufferedReader reader = req.getReader();
        String line;

        while ((line = reader.readLine()) != null) {
            buffer.append(line);
        }

        String payload = buffer.toString();
        JsonObject body = JsonParser.parseString(payload).getAsJsonObject();

        int studentId = body.get("id").getAsInt();
        Student existingStudent = findStudentById(studentId);

        if (existingStudent != null) {
            existingStudent.setDocument(body.get("document").getAsString());
            existingStudent.setName(body.get("name").getAsString());
            out.println(gson.toJson(existingStudent));
        } else {
            resp.setStatus(HttpServletResponse.SC_NOT_FOUND);
        }

        out.flush();
    }


    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletOutputStream out = resp.getOutputStream();
        resp.setContentType("application/json");

        StringBuilder buffer = new StringBuilder();
        BufferedReader reader = req.getReader();
        String line;

        while ((line = reader.readLine()) != null) {
            buffer.append(line);
        }

        String payload = buffer.toString();
        JsonObject body = JsonParser.parseString(payload).getAsJsonObject();

        int studentId = body.get("id").getAsInt();
        Student existingStudent = findStudentById(studentId);

        if (existingStudent != null) {
            students.remove(existingStudent);
            out.println(gson.toJson(existingStudent));
        } else {
            resp.setStatus(HttpServletResponse.SC_NOT_FOUND);
        }

        out.flush();
    }


    private Student findStudentById(int studentId) {
        for (Student s : students) {
            if (s.getId() == studentId) {
                return s;
            }
        }
        return null;
    }

    public void destroy() {
    }
}
