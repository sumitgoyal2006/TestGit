trigger phoneupdateoncontact on Account (after update)
{
    for(Account acc:Trigger.new)
    {
        list<contact> listcon=[select phone from contact where AccountId=:acc.id];
        
        for(contact con:listcon)
        {
            con.phone=acc.phone;
        }
        update listcon;
    }

}