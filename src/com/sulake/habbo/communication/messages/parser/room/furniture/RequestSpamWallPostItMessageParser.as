package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RequestSpamWallPostItMessageParser implements IMessageParser
   {
       
      
      private var var_1993:int;
      
      private var var_475:String;
      
      public function RequestSpamWallPostItMessageParser()
      {
         super();
      }
      
      public function get itemId() : int
      {
         return this.var_1993;
      }
      
      public function get location() : String
      {
         return this.var_475;
      }
      
      public function flush() : Boolean
      {
         this.var_1993 = -1;
         this.var_475 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1993 = param1.readInteger();
         this.var_475 = param1.readString();
         return true;
      }
   }
}
