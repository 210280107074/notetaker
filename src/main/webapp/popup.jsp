<%@include file="plugins.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Popup</title>
    <script>
        function redirectToJSP() {
            // Redirect to the desired JSP page
            window.location.href = "allnotes.jsp";
        }

        // Function to display the modal when the page loads
        window.onload = function() {
            $('#exampleModal').modal('show'); // Show the modal with jQuery
            // Or use pure JavaScript:
            // document.getElementById('exampleModal').style.display = 'block';
        };
    </script>
    <style>
        /* Popup container */
        .popup {
            display: block;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0,0,0,0.4);
        }
        .purple {
            background: rgb(2, 0, 36);
            background: linear-gradient(90deg, rgba(2, 0, 36, 1) 0%, rgba(68, 9, 121, 1) 50%, rgba(0, 212, 255, 1) 100%);
        }
        
        /* Popup content */
        .popup-content {
            background-color: #fefefe;
            margin: 15% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container">
    <%@include file="navigation.jsp" %>
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><img alt="" src="check.png" width="30px">&nbsp;&nbsp;&nbsp;Saved Successfully</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>Your note saved successfully </p>
                </div>
                <div class="modal-footer">
                    <!-- Button to save changes and redirect -->
                    <button type="button" class="btn btn-primary" onclick="redirectToJSP()">View Notes</button>
                    <!-- Button to close the modal -->
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
