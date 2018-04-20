/* UserBean.java - The managed bean for the tempConvertF2 project.
 *                 Provides storage for the Celsius and Fahrenheit
 *                 temperatures and provides the action method to
 *                 convert the Celsius temperature to its equivalent
 *                 Fahrenheit temperature
 */

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

@ManagedBean
@RequestScoped
public class UserBean {
  private String celsius;
  private String fahrenheit;
  
  public void setCelsius(String temperature) {
      this.celsius = temperature;
  }
  
  public String getCelsius() {
      return celsius;
  }
  
  public String getFahrenheit() {
      return fahrenheit;
  }
  
  public void setFahrenheit(String temperature) {
      this.fahrenheit = temperature;
  }
  
  public String convert() {
      fahrenheit = Float.toString(1.8f * 
                   Integer.parseInt(celsius) + 32.0f);
      return fahrenheit;
  }
}
