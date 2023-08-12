using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for LoginManager
/// </summary>
public class LoginManager
{
    private static string homepage = "Home.aspx", loginpage = "dologin.aspx";

  public static bool isusernameandpasswordcorrect(object username,object password)
 {
      try 
         {
            DataSet1TableAdapters.usersTableAdapter da = new DataSet1TableAdapters.usersTableAdapter();
            DataSet1.usersDataTable dt = da.GetDataByloginform(""+username,""+password);
            if(dt.Rows.Count<=0)
            return false;
            
            string un, pwd;
            DataSet1.usersRow dr = (DataSet1.usersRow)dt.Rows[0];
            un = dr.username;
            pwd = dr.password;
            if (!un.Equals(username))
                return false;
            if (!pwd.Equals(password))
                return false;
            return true;
           }
    catch(Exception ex)
    {
       return false;
    }
   
 }

  public static string getusertyebyusername(object gulabjamun)
  {
      try
      {
          DataSet1TableAdapters.usersTableAdapter da = new DataSet1TableAdapters.usersTableAdapter();
          string usertypes = "" + da.getusertypeBYusername("" + gulabjamun);
          return usertypes;
      }
      catch (Exception ex)
      {
          return "";
      }
  }
  public static bool dologin(object username, object password, HttpResponse response, System.Web.SessionState.HttpSessionState session)
  {
      bool result = isusernameandpasswordcorrect(username, password);
      if (!result)
          return false;
      session["username"] = username;
      session["usertype"] = LoginManager.getusertyebyusername(username);

      if(session["usertype"].Equals("Admin"))
      response.Redirect("adminhome.aspx");

     
      if (session["usertype"].Equals("Clerk"))
          response.Redirect("clerkhome.aspx");
      if (session["usertype"].Equals("Waiter"))
          response.Redirect("waiterhome.aspx");
      
      response.Redirect("Home.aspx");
      return true;
  
  }

  public static string getcurrentuser(System.Web.SessionState.HttpSessionState session)
  {
      return "" + session["username"];
  }

  public static string getcurrentusertype(System.Web.SessionState.HttpSessionState session)
  {
      return "" + session["usertype"];
  }

  public static void dologout(System.Web.SessionState.HttpSessionState session)
  {
      session.Abandon();
  }
  public static Boolean isuserlogin(System.Web.SessionState.HttpSessionState session)
  {
      if (session["username"] == null)
      return false;
      return true;
  }
  public static Boolean protectpage(System.Web.SessionState.HttpSessionState session, HttpResponse response)
  {
      if (isuserlogin(session))
          return true;
      response.Redirect("dologin.aspx");
      return false;
  }
  
}