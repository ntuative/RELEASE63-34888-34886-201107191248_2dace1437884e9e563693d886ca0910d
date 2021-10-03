package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FavouriteChangedMessageParser implements IMessageParser
   {
       
      
      private var var_424:int;
      
      private var var_2798:Boolean;
      
      public function FavouriteChangedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_424 = param1.readInteger();
         this.var_2798 = param1.readBoolean();
         return true;
      }
      
      public function get flatId() : int
      {
         return this.var_424;
      }
      
      public function get added() : Boolean
      {
         return this.var_2798;
      }
   }
}
