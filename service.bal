import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + currencyCode - the input string name
    # + return - string name with hello message or error
    resource function get price(string currencyCode) returns string|error {
        // Send a response back to the caller.
        if currencyCode is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + currencyCode;
    }
}
