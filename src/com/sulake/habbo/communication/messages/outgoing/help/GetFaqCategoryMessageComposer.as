package com.sulake.habbo.communication.messages.outgoing.help
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class GetFaqCategoryMessageComposer implements IMessageComposer
   {
       
      
      private var var_1627:int;
      
      public function GetFaqCategoryMessageComposer(param1:int)
      {
         super();
         this.var_1627 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_1627];
      }
      
      public function dispose() : void
      {
      }
   }
}
