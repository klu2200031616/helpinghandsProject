<%@ page import="java.util.*, com.project.jfsd.model.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Manage Events</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 20px;
        padding: 20px;
    }

    h2 {
        color: #333;
        text-align: center;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
        background-color: #fff;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        overflow: hidden;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 12px;
        text-align: left;
        font-size: 0.9em;
    }

    th {
        background-color: #007BFF;
        color: white;
        font-weight: bold;
    }

    tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    tr:hover {
        background-color: #f1f1f1;
    }

    .action-icons {
        display: inline-block;
        margin-right: 10px;
    }

    .action-icons img {
        width: 18px;
        height: 18px;
    }

    .del-link {
        color: #d9534f;
        font-weight: bold;
    }

    .del-link:hover {
        color: #c9302c;
    }

    .edit-link {
        color: #0275d8;
        font-weight: bold;
    }

    .edit-link:hover {
        color: #025aa5;
    }

    a {
        text-decoration: none;
    }

    .no-events {
        text-align: center;
        color: #888;
        padding: 20px;
    }

    .back-link {
        display: inline-block;
        margin-top: 20px;
        padding: 10px 20px;
        background-color: #007BFF;
        color: white;
        text-align: center;
        border-radius: 5px;
        font-weight: bold;
        text-decoration: none;
    }

    .back-link:hover {
        background-color: #0056b3;
    }

    td a {
        padding-left: 4px;
        cursor: pointer;
    }
</style>
</head>
<body>

    <h2>Manage Events</h2>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Description</th>
                <th>Amount</th>
                <th>Resource Person</th>
                <th>Registered Users</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <%
            @SuppressWarnings("unchecked")
            List<Event> allEvents = (List<Event>) request.getAttribute("allEvents");
            if (allEvents != null && !allEvents.isEmpty()) {
                for (Event event : allEvents) {
            %>
            <tr>
                <td><%=event.getId()%></td>
                <td><%=event.getTitle()%></td>
                <td><%=event.getDescription()%></td>
                <td><%=event.getAmnt()%></td>
                <td><%=event.getResourcePerson().getName()%></td>
                <td>
                    <%
                    List<User> registeredUsers = event.getRegisteredUsers();
                    if (registeredUsers == null) {
                        registeredUsers = new ArrayList<>();
                    }
                    if (registeredUsers != null && !registeredUsers.isEmpty()) {
                        for (User user : registeredUsers) {
                    %>
                    <span><%=user.getName()%></span><br />
                    <%
                        }
                    } else {
                    %>
                    No registered users.
                    <%
                    }
                    %>
                </td>
                <td>
                    <a class="edit-link" href="<%=request.getContextPath()%>/editEvent/<%=event.getId()%>">Edit</a>
                    <a class="del-link" href="<%=request.getContextPath()%>/deleteEvent/<%=event.getId()%>"
                        onclick="return confirm('Are you sure you want to delete this event?');">Delete</a>
                </td>
            </tr>
            <%
                }
            } else {
            %>
            <tr>
                <td colspan="7" class="no-events">No events found.</td>
            </tr>
            <%
            }
            %>
        </tbody>
    </table>

    <a class="back-link" href="<%=request.getContextPath()%>/admin-dashboard">Back to Dashboard</a>

</body>
</html>
