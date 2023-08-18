using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for LoginManager
/// </summary>
public class LoginManager
{
    private static string homepage = "Home.aspx", loginpage = "Dologins.aspx";

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
      if(session["usertype"].Equals("Customer"))
          response.Redirect("customerhome.aspx");
      
     
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

  public static void dologout(System.Web.SessionState.HttpSessionState session,HttpResponse response)
  {
      session.Abandon();
      response.Redirect(loginpage);
  }
  public static bool isuserlogin(System.Web.SessionState.HttpSessionState session)
  {
      if (session["username"] == null)
      return false;
      return true;
  }
  public static Boolean protectpage(System.Web.SessionState.HttpSessionState session, HttpResponse response)
  {
      if (isuserlogin(session))
          return true;
      response.Redirect("Dologins.aspx");
      return false;
  }
  public static void protectAdmin(System.Web.SessionState.HttpSessionState session, HttpResponse response)
  {
      if (!getcurrentusertype(session).Equals("Admin"))

          response.Redirect("Dologins.aspx");
  }
  public static Boolean isAdminlogin(System.Web.SessionState.HttpSessionState session)
  {
      if (!getcurrentusertype(session).Equals("Admin"))
          return true;
      return false;
  }

  public static void protectClerk(System.Web.SessionState.HttpSessionState session, HttpResponse response)
  {
      if (!getcurrentusertype(session).Equals("Clerk"))
          response.Redirect("Dologins.aspx");

  }
  public static Boolean isClerklogin(System.Web.SessionState.HttpSessionState session)
  {
      if(!getcurrentusertype(session).Equals("Clerk"))
          return false;
         return true;
  }
  public static void protectWaiter(System.Web.SessionState.HttpSessionState session, HttpResponse response)
  {
      if(!getcurrentusertype(session).Equals("Waiter"))
          response.Redirect("Dologins.aspx");
  }
  public static Boolean isWaiterlogin(System.Web.SessionState.HttpSessionState session)
  {
      if (!getcurrentusertype(session).Equals("Waiter"))
      return false;
      return true;
  }
  public static void protectCustomer(System.Web.SessionState.HttpSessionState session, HttpResponse response)
  {
      if (!getcurrentusertype(session).Equals("Customer"))
          response.Redirect("Dologins.aspx");
          
  }
  public static Boolean isCustomerlogin(System.Web.SessionState.HttpSessionState session)
  {
      if (!getcurrentusertype(session).Equals("Customer"))
          return false;
      return true;
  }
}