public class newlogin 
{
public string name{get;set;}
public string password{get;set;}

public pagereference login()
{
    pagereference pr=new pagereference('http://www.google.com');
    return pr;
}


}