public with sharing class PopupScreenController 
{
public string textReason{get;set;}
    public string textComment{get;set;}

    public PopupScreenController ()
    {
        textReason= '';
        textComment='';
    }
    
    public void submitStandardPopup()
    {
        string statusval= ApexPages.currentPage().getParameters().get('status');
        string reasonval=  ApexPages.currentPage().getParameters().get('reason');
        string commentval=  ApexPages.currentPage().getParameters().get('comment');
        
        if((reasonval!=null && reasonval.trim().length()>0)&&(commentval!= null && commentval.trim().length()>0))
        {
        
             ApexPages.addMessage( new ApexPages.Message(ApexPages.Severity.info,'Record Saved'));
        }
    }


}