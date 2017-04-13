## 9.1 Research Questions

>Status codes are three-digit numbers. A 200 code is the most common and represents a successful response.

## Some common ones include 
 1. 404 Not Found - This is the most common error code. The status code
 means the requested resource is no longer available or possibly just
 doesn't exist anymore.
 2. 403 Forbidden - This is another common client-side status code. Getting
 this code back from a request means that access to the resource is forbidden
 3. 500 Internal Server Error - 500 error is the catchall error for when
 other 500 errors don't make sense.
 4. 503 Service Unavailable - Like many of the 500 level error cores, the 503
 error could be a temporary problem. Due to reasons unknown, this means that
 the web server isn't available.
 5. 504 Gateway Timeout - This indicates that a proxy servr needs to 
 communicate with a secondary web server, such as an apache server, and 
 access to that server timed out.

>GET and POST request

Get and Post can be used in HTML to determine how form data is submitted to
the server. When the method is GET, it's intended purpose is to retrieve 
some data, and is expected to repeat the query without any side effects. 
However, Get can only send limited amounts of parameter data to the server.
Post method requests that a web server accept the data enclosed in the body
of the request message, most likely storing it. It is often used when uploading a file or when submitting a completed web form.

>HTTP Cookie

A cookie is a small piece of data that a server sends to the user's web browser, that may store it and send it back together with the next request to the same server. Typically, it's used to know if two requests came from the same browser allowing to keep a user logged-in. For example, it remembers stateful information for the stateless HTTP protocol.

Main three purpose of a cookie.
    * Session management(user logins, shopping carts)
    * Personalization(User customization)
    * Tracking(analyzing user behavior)