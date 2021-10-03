package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NoSuchFlatMessageParser implements IMessageParser
   {
       
      
      private var var_424:int;
      
      public function NoSuchFlatMessageParser()
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
         return true;
      }
      
      public function get flatId() : int
      {
         return this.var_424;
      }
   }
}
