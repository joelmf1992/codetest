I didn't manage to set up the go/docker component (read bottom of readme for problems & my plan for if I was able to get the environment set up correctly). So anyway I decided to just complete the front-end component of the test. Setup steps assuming you already have node & npm installed:

npm install http-server

http-server -p 8080

Visit http://localhost:8080


go/docker environment config setup issues:

I think my $GOPATH isn't configured correctly. I couldn't use the command "go run main.go" for debugging as it produced this permission error: "listen tcp :80: bind: permission denied". Couldn't run "go get -v" either as it complained about the $GOPATH.

Here is what I would have done had I got the go/docker config set up correctly (this plan could be incorrect as I haven't used go before):

- Get the baseHandler method to serve the HTML file (where my view logic would live)
- Add another route that just serves the JSON which is accessible from "/getJSON" (full URL: http://localhost:8080/getJSON)
- From there I could just AJAX request the JSON from the HTML page with the URL above.
