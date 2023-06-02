import ballerina/http;

// Pricing service is used to calculate the price of a product.
service /foo on new http:Listener(9090) {

    // Return the price of a product from the product code and the currency code.
    // + productCode - The product code
    // + currencyCode - The currency code
    // + return - Product details
    resource function get hello() returns error {
        return "Hello, world";
    }
}
