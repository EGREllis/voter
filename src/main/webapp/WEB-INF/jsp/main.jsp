<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
        <title>Smart vote landing page</title>
    </head>
    <body>
        <main role="main" class="inner cover">
            <div class="cover-container d-flex h-100 p-3 mx-auto flex-column">
                <img src="project_image.png" />
                <div class="row">
                    <div class="col">
                        <p class="lead">
                            <a href="registerVoter" class="btn btn-lg btn-secondary" style="width:100%">Register</a>
                        </p>
                    </div>
                    <div class="col">
                        <p class="lead">
                            <a href="castVote" class="btn btn-lg btn-secondary" style="width:100%">Vote</a>
                        </p>
                    </div>
                </div>
            </div>
        </main>
    </body>
</html>
