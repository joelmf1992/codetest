FROM scratch 
COPY ./codetest /codetest
COPY ./json/response.json /json/response.json
ENTRYPOINT ["/codetest"]
