package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1765:int;
      
      private var var_2706:String;
      
      private var var_337:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1765 = param1.readInteger();
         this.var_2706 = param1.readString();
         this.var_337 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1765;
      }
      
      public function get nodeName() : String
      {
         return this.var_2706;
      }
      
      public function get visible() : Boolean
      {
         return this.var_337;
      }
   }
}
