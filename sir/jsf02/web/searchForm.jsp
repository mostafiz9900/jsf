<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
  <%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>

<html>
  <f:view>
  <head>                  
    <title>Freedom Airlines Online Flight Reservation System</title>
    <link rel="stylesheet" href="css/bootstrap.css">
  </head>
  <body>
      <div class="container-fluid">
      <div class="row">
          <div class="col-lg-12"><h1>Search Flight</h1></div>
      </div>
          
          
    <h:form>
      <h2>Search Flights</h2>
      What type of flight do you need?
      <h:selectOneRadio layout="lineDirection"
                        value="#{flight.tripType}">
        <f:selectItems value="#{types.tripTypes}"/>
      </h:selectOneRadio>
      <p/>            
      <table class="table-responsive">
        <tr><td colspan="4">Where and when do you want to travel?</td></tr>
        <tr>
          <td colspan="2">Leaving from:</td>
          <td colspan="2">Going to:</td>
        </tr>
        <tr>
          <td colspan="2">
            <h:inputText value="#{flight.origination}" size="35"/>
          </td>
          <td colspan="2">
            <h:inputText value="#{flight.destination}" size="35"/>
          </td>
        </tr>
        <tr>
          <td colspan="2">Departing:</td>
          <td colspan="2">Returning:</td>
        </tr>
        <tr>
          <td>
            <h:inputText value="#{flight.departDate}"/>
          </td>
          <td>
            <h:selectOneMenu value="#{flight.departTime}">
              <f:selectItems value="#{times.times}"/>
            </h:selectOneMenu>
          </td>
          <td>
            <h:inputText value="#{flight.returnDate}"/>
          </td>
          <td>
            <h:selectOneMenu value="#{flight.returnTime}">
              <f:selectItems value="#{times.times}"/>
            </h:selectOneMenu>
          </td>
        </tr>
      </table>
      <p>
      <h:commandButton value="Search" action="submit"/>
      </p>
    </h:form>
                  
      </div>
   </body>
   </f:view>
</html>