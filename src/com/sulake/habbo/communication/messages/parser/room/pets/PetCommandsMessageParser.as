package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetCommandsMessageParser implements IMessageParser
   {
       
      
      private var var_1908:int;
      
      private var var_1692:Array;
      
      private var var_1355:Array;
      
      public function PetCommandsMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1908;
      }
      
      public function get allCommands() : Array
      {
         return this.var_1692;
      }
      
      public function get enabledCommands() : Array
      {
         return this.var_1355;
      }
      
      public function flush() : Boolean
      {
         this.var_1908 = -1;
         this.var_1692 = null;
         this.var_1355 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1908 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1692 = new Array();
         while(_loc2_-- > 0)
         {
            this.var_1692.push(param1.readInteger());
         }
         var _loc3_:int = param1.readInteger();
         this.var_1355 = new Array();
         while(_loc3_-- > 0)
         {
            this.var_1355.push(param1.readInteger());
         }
         return true;
      }
   }
}
