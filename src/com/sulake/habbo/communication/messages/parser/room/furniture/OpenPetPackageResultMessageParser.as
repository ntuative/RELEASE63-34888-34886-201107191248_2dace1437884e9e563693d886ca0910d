package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageResultMessageParser implements IMessageParser
   {
       
      
      private var var_238:int = 0;
      
      private var var_2203:int = 0;
      
      private var var_2149:String = null;
      
      public function OpenPetPackageResultMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_238;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_2203;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_2149;
      }
      
      public function flush() : Boolean
      {
         this.var_238 = 0;
         this.var_2203 = 0;
         this.var_2149 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_238 = param1.readInteger();
         this.var_2203 = param1.readInteger();
         this.var_2149 = param1.readString();
         return true;
      }
   }
}
