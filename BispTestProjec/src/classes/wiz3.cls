public class wiz3 
{
public Account account{get;set;}

public wiz3()
{
Id id =apexpages.currentpage().getparameters().get('Id');
account=[select Id,name,phone from Account where Id=:id];
}


}