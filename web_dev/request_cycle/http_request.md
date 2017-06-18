9.1
Release 0
1.) What are some common HTTP status codes?
404 Not Found- requested resource is no longer available or unable to be found. Common cause would be typos in the domain.
403 Forbidden- This happens when access to the resource is forbidden. Common cause is when the server doesn't recognize the machine being used to access the system.
500 Internal Server Error- Catchall when other 500 error codes make sense
503 Service unavailable- Web server is not available  
504 Gateway Timeout- when a proxy or cache web server cannot reach the actual webserver 

2.)What is the difference between a GET request and a POST request? When might each be used?
GET is when you need to retrieve  data. POST is for inserting or modifying data.
3.)Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
A cookie is data that the server sends to the user's browser to keep track of the user. Browser can interact and store it or send it back for the server. 