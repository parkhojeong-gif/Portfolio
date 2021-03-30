<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href='resources/fullcalendar/examples/lib/main.css' rel='stylesheet' />
<link href='resources/fullcalendar/examples/lib/main.css' rel='stylesheet' />
<script src='resources/fullcalendar/examples/lib/main.js'></script>
<script src='resources/fullcalendar/examples/lib/main.js'></script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
      var calendarEl = document.getElementById('calendar');
    
      var calendar = new FullCalendar.Calendar(calendarEl, {
        plugins: [ 'dayGrid' ]
      });
    
      calendar.render();
    });
</script>
</head>
<body>
 
<div id='calendar'></div>
 
</body>
</html>
