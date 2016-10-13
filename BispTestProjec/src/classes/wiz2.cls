public class wiz2 {

public Account account{get;set;}

public wiz2()
{
Id id =apexpages.currentpage().getparameters().get('Id');
account=[select Id,name,phone from Account where Id=:id];
}

public pagereference save()
{

update account;
pagereference pr=new pagereference('/apex/wiz3?id='+account.Id);
return pr;
}



}