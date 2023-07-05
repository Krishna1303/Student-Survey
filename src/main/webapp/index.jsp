<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Survey version 1.0.0</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body style="background-image: linear-gradient(#33adff, #7300e6);">
<div class="container" style="color: white;text-align: center;margin-top: 50px">
    <h1>Student Survey</h1>
</div>
<div class="container" style="background-color: rgba(0, 0, 0, 0.6);border-radius: 10px;color: white;margin-top: 25px;margin-bottom: 50px">
    <form action="${pageContext.request.contextPath}/thanks.jsp" method="post" style="margin-bottom: 50px;margin-top: 25px">
        <div class="form-group">
            <label for="firstName">First Name</label>
            <input type="text" class="form-control" name="firstName" id="firstName" required>
        </div>
        <div class="form-group">
            <label for="lastName">Last Name</label>
            <input type="text" class="form-control" name="lastName" id="lastName" required>
        </div>
        <div class="form-group">
            <label for="address">Street Address</label>
            <input type="text" class="form-control" name="address" id="address" required>
        </div>
        <div class="form-group">
            <label for="city">City</label>
            <input type="text" class="form-control" name="city" id="city" required>
        </div>
        <div class="form-group">
            <label for="state">State</label>
            <input type="text" class="form-control" name="state" id="state" required>
        </div>
        <div class="form-group">
            <label for="zip">ZIP</label>
            <input type="text" class="form-control" name="zip" id="zip" required>
        </div>
        <div class="form-group">
            <label for="telephone">Telephone Number</label>
            <input type="tel" class="form-control" name="telephone" id="telephone" required>
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" class="form-control" name="email" id="email" required>
        </div>
        <div class="form-group">
            <label for="surveyDate">Date of Survey</label>
            <input type="date" class="form-control" name="surveyDate" id="surveyDate" required>
        </div>
        <div class="form-group">
            <label>What did you like most about the campus?</label>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="likedMost" value="Students" id="likedStudents">
                <label class="form-check-label" for="likedStudents">Students</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="likedMost" value="Location" id="likedLocation">
                <label class="form-check-label" for="likedLocation">Location</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="likedMost" value="Campus" id="likedCampus">
                <label class="form-check-label" for="likedCampus">Campus</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="likedMost" value="Atmosphere" id="likedAtmosphere">
                <label class="form-check-label" for="likedAtmosphere">Atmosphere</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="likedMost" value="Dorm Rooms" id="likedDormRooms">
                <label class="form-check-label" for="likedDormRooms">Dorm Rooms</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="likedMost" value="Sports" id="likedSports">
                <label class="form-check-label" for="likedSports">Sports</label>
            </div>
        </div>
        <div class="form-group">
            <label>How did you become interested in the university?</label>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="interest" value="Friends" id="interestFriends">
                <label class="form-check-label" for="interestFriends">Friends</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="interest" value="Television" id="interestTV">
                <label class="form-check-label" for="interestTV">Television</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="interest" value="Internet" id="interestInternet">
                <label class="form-check-label" for="interestInternet">Internet</label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="interest" value="Other" id="interestOther">
                <label class="form-check-label" for="interestOther">Other</label>
            </div>
        </div>
        <div class="form-group">
            <label for="recommendation">Likelihood of Recommending this School</label>
            <select class="form-control" name="recommendation" id="recommendation">
                <option>Very Likely</option>
                <option>Likely</option>
                <option>Unlikely</option>
            </select>
        </div>
        <div class="form-group">
            <label for="raffle">Raffle</label>
            <input type="text" class="form-control" name="raffle" id="raffle">
            <small class="form-text text-muted">Enter at least ten comma separated numbers ranging from 1 through 100.</small>
        </div>
        <div class="form-group">
            <label for="comments">Additional Comments</label>
            <textarea class="form-control" name="comments" id="comments" rows="3"></textarea>
        </div>
        <button type="submit" class="btn btn-primary" style="padding-right: 15px;margin-right: 25px">Submit</button>
        <button type="button" class="btn btn-secondary" style="padding-right: 15px;margin-right: 25px;color: black">Cancel</button>
    </form>
</div>
</body>
</html>
