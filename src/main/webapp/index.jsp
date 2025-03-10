<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%

    ArrayList<String> todoList = (ArrayList<String>) session.getAttribute("todoList");
    if (todoList == null) {
        todoList = new ArrayList<>();
        session.setAttribute("todoList", todoList);
    }

    // Handle adding tasks
    String task = request.getParameter("task");
    if (task != null && !task.trim().isEmpty()) {
        todoList.add(task);
    }

    // Handle removing tasks
    String removeIndex = request.getParameter("remove");
    if (removeIndex != null) {
        try {
            int index = Integer.parseInt(removeIndex);
            if (index >= 0 && index < todoList.size()) {
                todoList.remove(index);
            }
        } catch (NumberFormatException ignored) { }
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>To-Do List</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
               padding: 20px;
               background-color: #f8f9fa;
}
        header, footer { text-align: center;
                         padding: 15px;
                         background-color: #007bff;
                         color: white;
                         font-weight: 600; }
        h2 {
            text-align: center;
             color: #333; }
        form {
            text-align: center;
               margin-bottom: 20px; }
        ul {
            list-style-type: none;
             padding: 0;
            min-height: 500px;}
        li {
            padding: 8px;
             background: #f4f4f4;
             margin: 5px 0; display: flex;
             justify-content: space-between;
             border-radius: 5px; }
        button {
            cursor: pointer;
                 background-color: #dc3545;
                 color: white; border: none;
                 padding: 5px 10px; border-radius: 3px; }
        button:hover {
            background-color: #c82333; }
    </style>
</head>
<body>
    <header>To-Do List</header>
    <h2>Add Your Tasks</h2>
    <form method="post">
        <input type="text" name="task" placeholder="Enter a task" required>
        <button type="submit">Add</button>
    </form>
    <ul>
        <% for (int i = 0; i < todoList.size(); i++) { %>
            <li>
                <%= todoList.get(i) %>
                <form method="post" style="display:inline;">
                    <input type="hidden" name="remove" value="<%= i %>">
                    <button type="submit">Remove</button>
                </form>
            </li>
        <% } %>
    </ul>
    <footer>&copy; 2025 To-Do List App</footer>
</body>
</html>