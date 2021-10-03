package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1169:int;
      
      private var var_2323:String;
      
      private var var_2322:int;
      
      private var var_2658:String;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1169 = param1.readInteger();
         this.var_2323 = param1.readString();
         this.var_2658 = param1.readString();
         this.var_2322 = this.var_1169;
      }
      
      public function get requestId() : int
      {
         return this.var_1169;
      }
      
      public function get requesterName() : String
      {
         return this.var_2323;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2322;
      }
      
      public function get figureString() : String
      {
         return this.var_2658;
      }
   }
}
