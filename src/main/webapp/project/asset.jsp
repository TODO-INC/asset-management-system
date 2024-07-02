<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
String username = request.getParameter("username");

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
List<Map<String, Object>> buildingInfoList = new ArrayList<>();

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "password");
    statement = connection.createStatement();
    String sql = "SELECT * FROM building_details WHERE username = ?";
    PreparedStatement pc = connection.prepareStatement(sql);
    pc.setString(1, username);
    resultSet = pc.executeQuery();
    
    while (resultSet.next()) {
        Map<String, Object> buildingInfo = new HashMap<>();
        buildingInfo.put("buildingName", resultSet.getString("building_name"));
        buildingInfo.put("size", resultSet.getInt("size"));
        buildingInfo.put("cost", resultSet.getInt("building_cost"));
        buildingInfo.put("scheme", resultSet.getString("scheme"));
        buildingInfo.put("inaugurationDate", resultSet.getDate("inauguration_date"));
        buildingInfo.put("totalFloor", resultSet.getInt("total_floors"));
        buildingInfo.put("totalRooms", resultSet.getInt("total_rooms"));
        buildingInfo.put("totalClass", resultSet.getInt("total_classrooms"));
        buildingInfo.put("totalLabs", resultSet.getInt("total_labs"));
        buildingInfo.put("verify", resultSet.getInt("verified"));
        buildingInfoList.add(buildingInfo);
    }
} catch (ClassNotFoundException | SQLException e) {
    e.printStackTrace();
} finally {
    try { if(resultSet != null) resultSet.close(); } catch (Exception e) { e.printStackTrace(); }
    try { if(statement != null) statement.close(); } catch (Exception e) { e.printStackTrace(); }
    try { if(connection != null) connection.close(); } catch (Exception e) { e.printStackTrace(); }
}
%>

<!DOCTYPE html>
<html lang="en" data-bs-theme="auto">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Asset Manager</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link href='https://fonts.googleapis.com/css?family=Reem Kufi' rel='stylesheet'>
    <link href="css/header.css" rel="stylesheet">
    <link href="css/asset.css" rel="stylesheet">
</head>
<body>
    <div class="container custom-common-container">
        <div class="nav"></div>
        <nav class="nav custom-common-header">
            <ul>
                <a class="nav-link" aria-current="page" href="<%= "index.jsp?username=" + request.getParameter("username") %>">ASSET MANAGER</a>
            </ul>
            <ul class="nav ms-auto me-0">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="<%= "index.jsp?username=" + request.getParameter("username") %>">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<%= "asset.jsp?username=" + request.getParameter("username") %>">Asset</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<%= "profile.jsp?username=" + request.getParameter("username") %>">Profile</a>
                </li>
            </ul>
        </nav>
        
        <% for (Map<String, Object> buildingInfo : buildingInfoList) { %>
            <div class="card mt-3 mb-3">
                <div class="card-header">
                    <%= buildingInfo.get("buildingName") %>
                    
                </div>
                <div class="card-body">
                <% if ((int)buildingInfo.get("verify") == 0) { %>
                    	<span class="badge text-bg-danger">Unverified</span>
                    	<%}else{ %>
                    	
                    	<span class="badge text-bg-success">Verified</span>
                    <%} %>
                    <p><strong>Size:</strong> <%= buildingInfo.get("size") %> Sq feet</p>
                    <p><strong>Building cost:</strong> <%= buildingInfo.get("cost") %> INR</p>
                    <p><strong>Scheme:</strong> <%= buildingInfo.get("scheme") %></p>
                    <p><strong>Date of Inauguration:</strong> <%= buildingInfo.get("inaugurationDate") %></p>
                    <p><strong>Total Floor:</strong> <%= buildingInfo.get("totalFloor") %></p>
                    <p><strong>Total Rooms:</strong> <%= buildingInfo.get("totalRooms") %></p>
                    <p><strong>Total Class:</strong> <%= buildingInfo.get("totalClass") %></p>
                    <p><strong>Total Labs:</strong> <%= buildingInfo.get("totalLabs") %></p>
                </div>
            </div>
            <% } %>
            
            <div class="container custom-common-container mt-3 mb-3">
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#editModal"">
    				<i class="bi bi-plus"></i> Add Asset
				</button>

            </div>
        </div>
        
        <div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="editModalLabel">Add Building</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <!-- Add your form here -->
                        <form id="buildingForm">
                            
                            <input type="hidden" name="username" id="username" value="<%= request.getParameter("username") %>">
                            <div class="mb-3">
                                <label for="buildingName" class="form-label">Building Name</label>
                                <input type="text" class="form-control" id="buildingName" name="buildingName">
                            </div>
                            <div class="mb-3">
                                <label for="sizeInput" class="form-label">Size (Sq feet)</label>
                                <input type="number" class="form-control" id="sizeInput" name="size">
                            </div>
                            <div class="mb-3">
                                <label for="costInput" class="form-label">Building Cost (INR)</label>
                                <input type="number" min ="1" class="form-control" id="costInput" name="cost">
                            </div>
                            <div class="mb-3">
                                <label for="schemeInput" class="form-label">Scheme/Fund Name</label>
                                <input type="text" class="form-control" id="schemeInput" name="scheme">
                            </div>
                            <div class="mb-3">
                                <label for="inaugInput" class="form-label">Date of Inauguration</label>
                                <input type="date" class="form-control" id="inaugInput" name="inauguration">
                            </div>
                            <div class="mb-3">
                                <label for="floorInput" class="form-label">Total Floors</label>
                                <input type="number" min="1" class="form-control" id="floorInput" name="floors">
                            </div>
                            <div class="mb-3">
                                <label for="roomsInput" class="form-label">Total Rooms</label>
                                <input type="number"min="1" class="form-control" id="roomsInput" name="rooms">
                            </div>
                            <div class="mb-3">
                                <label for="classInput" class="form-label">Total Classrooms</label>
                                <input type="number" min="1" class="form-control" id="classInput" name="classrooms">
                            </div>
                            <div class="mb-3">
                                <label for="labsInput" class="form-label">Total Labs</label>
                                <input type="number" min="1" class="form-control" id="labsInput" name="labs">
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary" id="saveBuilding">Save</button>
                    </div>
                </div>
            </div>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <script>
    // Function to clear the form fields
    function clearForm() {
        document.getElementById("buildingForm").reset();
    }

    // When the modal is shown, clear the form
    $('#editModal').on('shown.bs.modal', function () {
        clearForm();
    });

    // Handle form submission
    $('#saveBuilding').click(function () {
        // Get form data
        var size = $('#sizeInput').val();
        var cost = $('#costInput').val();
        var scheme = $('#schemeInput').val();
        var inauguration = $('#inaugInput').val();
        var floors = $('#floorInput').val();
        var rooms = $('#roomsInput').val();
        var classrooms = $('#classInput').val();
        var labs = $('#labsInput').val();
        var username = $('#username').val();
        var bname = $('#buildingName').val();

        // Prepare the data to send in the AJAX request
        var formData = {
            size: size,
            cost: cost,
            scheme: scheme,
            inauguration: inauguration,
            floors: floors,
            rooms: rooms,
            classrooms: classrooms,
            labs: labs,
            username: username,
            bname: bname
        };

        // Make an AJAX request to your Java backend
        $.ajax({
            url: "../AssetInsert", // Replace with your actual Java endpoint URL
            type: "POST",
            data: formData,
            success: function(response) {
                // Handle the response from the backend as needed
                console.log("Success:", response);

                // Close the modal
                location.reload();

                // You can also update the card or refresh the page here
            },
            error: function(error) {
                console.error("Error:", error);
            }
        });
    });
</script>
    </body>
    </html>
    