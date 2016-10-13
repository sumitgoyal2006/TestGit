public class ErrorMessage
{
public string accountname{get;set;}
public string accountnumber{get;set;}

public ErrorMessage(apexpages.standardcontroller controller){}

public void updateaccount()
{
if(accountname=='' || accountname==null)
{
apexpages.addmessage(new apexpages.message(apexpages.severity.error,'please Enter Account Name'));
}

if(accountnumber=='' || accountnumber==null)
{
apexpages.addmessage(new apexpages.message(apexpages.severity.warning,'please Enter Account Number'));
}

}

}