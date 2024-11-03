<%@ page import="java.util.*, com.project.jfsd.model.*, org.springframework.web.util.HtmlUtils"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<html>
<head>
<title>Edit Event</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f0f0f0;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    h2 {
        color: #333;
        text-align: center;
    }

    .form-container {
        background-color: #fff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        max-width: 600px;
        width: 100%;
    }

    label {
        display: block;
        margin-bottom: 8px;
        color: #555;
        font-size: 1.1em;
    }

    input[type="text"],
    input[type="number"],
    textarea,
    select {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 1em;
    }

    button {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 1.1em;
        transition: background-color 0.3s ease;
        width: 100%;
    }

    button:hover {
        background-color: #45a049;
    }

    .message {
        background-color: #f8d7da;
        color: #721c24;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #f5c6cb;
        border-radius: 5px;
    }

    a {
        display: inline-block;
        margin-top: 20px;
        color: #4CAF50;
        text-decoration: none;
        font-size: 1.1em;
        text-align: center;
        width: 100%;
    }

    a:hover {
        color: #45a049;
    }
</style>
</head>
<body>
    <div class="form-container">
        <h2>Edit Event</h2>

        <%
        String message = (String) request.getAttribute("message");
        if (message != null && !message.isEmpty()) {
        %>
        <div class="message"><%=HtmlUtils.htmlEscape(message)%></div>
        <%
        }
        %>

        <%
        @SuppressWarnings("unused")
        Event event = (Event) request.getAttribute("event");
        List<User> allUsers = (List<User>) request.getAttribute("allUsers");
        %>

        <form action="<%=request.getContextPath()%>/editEvent/<%=event.getId()%>" method="post">
            <input type="hidden" name="id" value="<%=event.getId()%>"/>

            <label for="title">Event Title:</label>
            <input type="text" name="title" id="title" value="<%=event.getTitle()%>" required="true"/>

            <label for="description">Description:</label>
            <textarea name="description" id="description" rows="4" required="true"><%=event.getDescription()%></textarea>

            <label for="amount">Amount:</label>
            <input type="number" name="amnt" id="amount" value="<%=event.getAmnt()%>" required="true"/>

            <label for="resourcePerson">Resource Person:</label>
            <select name="resourcePerson.id" id="resourcePerson" class="select2">
                <option value="" disabled>Select a user</option>
                <%
                if (allUsers != null && !allUsers.isEmpty()) {
                    for (User user : allUsers) {
                %>
                <option value="<%=user.getId()%>" <%= event.getResourcePerson() != null && event.getResourcePerson().getId() == user.getId() ? "selected" : "" %>>
                    <%=user.getName()%>
                </option>
                <%
                    }
                }
                %>
            </select>

            <button type="submit">Update Event</button>
        </form>

        <a href="<%=request.getContextPath()%>/manage-events">Back to Manage Events</a>
    </div>
</body>
</html>
