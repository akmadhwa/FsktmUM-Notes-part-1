// Converter - a bean for the tempConvertB application that
//             converts Celsius temperatures to Fahrenheit.
package org.mypackage.convert;

public class Converter {

    private String celsius;
    private String fahrenheit;

    public Converter() {
        celsius = null;
        fahrenheit = "777";
    }

    public void setCelsius(String celsius) {
        this.celsius = celsius;
    }
    
    public String getCelsius() {
        return celsius;
    }

    public String getFahrenheit() {
        return fahrenheit;
    }

    public void setFahrenheit(String fahrenheit) {
         this.fahrenheit = Float.toString(1.8f * Integer.parseInt(celsius) + 32.0f);
    }
}