import ballerina/http;

// Add name as a configurable
configurable string name = "World";

// Pricing service is used to calculate the price of a product.
service /foo on new http:Listener(9090) {

    resource function get hello() returns string {
        return "Hello, " + name + "!";
    }
}
