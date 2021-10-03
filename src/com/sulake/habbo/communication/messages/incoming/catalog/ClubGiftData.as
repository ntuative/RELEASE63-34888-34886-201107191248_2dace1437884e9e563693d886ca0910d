package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1365:int;
      
      private var var_3040:Boolean;
      
      private var var_2320:Boolean;
      
      private var var_3039:int;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1365 = param1.readInteger();
         this.var_3040 = param1.readBoolean();
         this.var_3039 = param1.readInteger();
         this.var_2320 = param1.readBoolean();
      }
      
      public function get offerId() : int
      {
         return this.var_1365;
      }
      
      public function get isVip() : Boolean
      {
         return this.var_3040;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2320;
      }
      
      public function get daysRequired() : int
      {
         return this.var_3039;
      }
   }
}
