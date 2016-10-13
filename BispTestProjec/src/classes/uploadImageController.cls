public class uploadImageController{
      
    public Contact objContact{get;set;}
    public string contactID{get;set;}
    public string stringid{get;set;}
    
   public uploadImageController(ApexPages.StandardController controller) {
     objContact = new Contact();
      contactID = ApexPages.currentPage().getParameters().get('id'); 
    }
    
    public Attachment attach = new Attachment();
    public Blob bl {get; set;} 
    public String contentType {get; set;} 
    public String fileName {get; set;}
    
    public PageReference save(){
        attach.OwnerId = UserInfo.getUserId();
        attach.ParentId = contactID;
        attach.Name = fileName;
        attach.Body = bl;
        attach.ContentType = contentType;
        
       
        try {
             insert attach;
            if(attach.id!=null)
            {
              objContact = new Contact(id = contactID);
              objContact.Department= attach.id; // add Attach Id in Department field
            }
            update objContact;
   
        }
        
         catch (DMLException e) {
            ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Error Choose File Name'));
            return null;
        } 
        
        finally {
        attach = new Attachment(); 
        }
        
      
         PageReference p= new PageReference('/' + contactID);
          p.setRedirect(true);
        
        return p;
    }

}