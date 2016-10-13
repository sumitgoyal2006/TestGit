public class wiz1
{

public Account account{get;set;}

public wiz1()
{

account=new Account();
}

public pagereference save()
{

insert account;
pagereference pr=new pagereference('/apex/wiz2?id='+account.Id);
return pr;
}


}