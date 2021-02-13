<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
        <title>Voter registration</title>
    </head>
    <body class="text-center">
        <form method="POST" action="submitRegisterVoter">
            <div class="container">
                <div class="py-5 text-center">
                    <h2>Voter registration</h2>
                </div>
                <h5>Kindly provide your name:</h5>
                <label for="first_name" class="sr-only">First name</label>
                <input type="text" id="first_name" name="firstName" class="form-control" placeholder="First name"/>
                <label for="last_name" class="sr-only">Last name</label>
                <input type="text" id="last_name" name="lastName" class="form-control" placeholder="Last name"/>
                <h5>We would also like to know your residence:</h5>
                <label for="first_addr" class="sr-only">First address line</label>
                <input type="text" id="first_addr" name="firstAddr" class="form-control" placeholder="First line" />
                <label for="second_addr" class="sr-only">Second address line</label>
                <input type="text" id="second_addr" name="secondAddr" class="form-control" placeholder="Second line" />
                <label for="city" class="sr-only">City</label>
                <input type="text" id="city" name="city" class="form-control" placeholder="City" />
                <label for="county" class="sr-only">Country</label>
                <input type="text" id="county" name="county" class="form-control" placeholder="Country" />
                <label for="postcode" class="sr-only">Postcode</label>
                <input type="text" id="postcode" name="postCode" class="form-control" placeholder="Post code" />
                <h5>Kindly supply your photo id:</h5>
                <input type="file" id="photo-id" name="photoId" class="form-control" />

                <input type="submit" value="Register" class="btn btn-block btn-primary" />
            </div>
        </form>
    </body>
</html>
