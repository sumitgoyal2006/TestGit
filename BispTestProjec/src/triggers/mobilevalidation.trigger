trigger mobilevalidation on Lead (before insert, before update) 
{

lead l=trigger.new[0];
if(l.mobilephone==null)
{
l.adderror('Mobile Number is Required');
}

}