<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
        <title>Voter casts a vote</title>
        <script>
            function selectCandidate(i) {
                alert("User clicked this candidate ("+i+")");
                var formEle = document.getElementById("cast_vote");
                var formHiddenEle = document.getElementById("vote_value");
                formHiddenEle.value = i;
                formEle.submit();
            }
        </script>
    </head>
    <body class="text-center">
        <form method="POST" action="cast_vote" id="cast_vote">
            <h2>Cast your vote</h2>
            <div class="row" onclick="selectCandidate(0)">
                <div class="col-md-3">
                    <img src="Face_01.jpg" />
                </div>
                <div class="col-md-3">
                    <img src="logo01.jpg" />
                </div>
                <div class="col-md-3">
                    <p>Candidate 1 name</p>
                </div>
            </div>
            <div class="row" onclick="selectCandidate(1)">
                <div class="col-md-3">
                    <img src="Face02.jpg" />
                </div>
                <div class="col-md-3">
                    <img src="logo02.jpg" />
                </div>
                <div class="col-md-3">
                    <p>Candidate 2 name</p>
                </div>
            </div>
            <div class="row" onclick="selectCandidate(1)">
                <div class="col-md-3">
                    <img src="Face02.jpg" />
                </div>
                <div class="col-md-3">
                    <img src="logo02.jpg" />
                </div>
                <div class="col-md-3">
                    <p>Candidate 2 name</p>
                </div>
            </div>
            <input type="hidden" id="vote_value" name="vote_value" value="-1" />
        </form>
    </body>
</html>