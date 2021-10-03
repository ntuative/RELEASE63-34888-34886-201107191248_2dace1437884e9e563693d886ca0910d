package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityTimeMessageParser implements IMessageParser
   {
       
      
      private var var_1460:Boolean;
      
      private var var_2046:int;
      
      public function AvailabilityTimeMessageParser()
      {
         super();
      }
      
      public function get isOpen() : Boolean
      {
         return this.var_1460;
      }
      
      public function get minutesUntilChange() : int
      {
         return this.var_2046;
      }
      
      public function flush() : Boolean
      {
         this.var_1460 = false;
         this.var_2046 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1460 = param1.readInteger() > 0;
         this.var_2046 = param1.readInteger();
         return true;
      }
   }
}
