package com.sulake.habbo.communication.messages.parser.inventory.badges
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class BadgeAndPointLimit
   {
       
      
      private var var_2071:String;
      
      private var var_1899:int;
      
      public function BadgeAndPointLimit(param1:String, param2:IMessageDataWrapper)
      {
         super();
         this.var_2071 = "ACH_" + param1 + param2.readInteger();
         this.var_1899 = param2.readInteger();
      }
      
      public function get badgeId() : String
      {
         return this.var_2071;
      }
      
      public function get limit() : int
      {
         return this.var_1899;
      }
   }
}
