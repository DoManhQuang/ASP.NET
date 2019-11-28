using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for NextPage
/// </summary>
public class NextPage
{
    private String nextweb;
    public NextPage()
    {

    }

    public NextPage(string nextweb)
    {
        this.nextweb = nextweb;
    }

    public void setNextWeb(string nweb)
    {
        this.nextweb = nweb;
    }
    public String getNextWeb()
    {
        return this.nextweb;
    }
}