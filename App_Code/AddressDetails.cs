using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for AddressDetails
/// </summary>
public class AddressDetails
{
	public AddressDetails()
	{
    }

    public string getBranches()
    {     
          string address =
            "<World>"
                + "<Continent ContinentName='North America'><Country CountryName='USA'>"
                    + "<City CityName='Washington'></City>"
                    + "<City CityName='Detroit'></City>"
                + "</Country></Continent>"
                + "<Continent ContinentName='Europe'>"
                    + "<Country CountryName='Italy'>"
                        + "<City CityName='Rome'></City>"
                        + "<City CityName='Milano'></City>"
                    + "</Country>"
                    + "<Country CountryName='Spain'>"
                        + "<City CityName='Madrid'></City>"
                        + "<City CityName='Bacelona'></City>"
                    + "</Country>"
                + "</Continent>" 
                + "</World>";

        return address;
    }

   
    public string getAddress(string City)
 
    {
        string sAddress;
        switch (City)
        {
            case "Washington":
                {
                    sAddress="1600 Pennsylvania Ave NW Washington DC ";

               }
                break;

            case "Detroit":
                {
                    sAddress = "550 W. Lafayette, Detroit";
                }
                break;

            case "Rome":
                {
                    sAddress = "Via Olivella, 21 Albano, Rome";
                }
                break;

            case "Milano":
                {
                    sAddress = "Via Piemonte 61/63, Milano";
                }
                break;

            case "Madrid":
                {
                    sAddress = "Parque Tecnólogico de Madrid, Calle Isaac Newton, Tres Cantos/Madrid";
                }
                break;

            case "Bacelona":
                {
                    sAddress = "Germans Desvalls, Barcelona, 08035";
                }
                break;

            default:
                {
                    sAddress = "";
                }
                break;
        }
       return sAddress;
    }
}
