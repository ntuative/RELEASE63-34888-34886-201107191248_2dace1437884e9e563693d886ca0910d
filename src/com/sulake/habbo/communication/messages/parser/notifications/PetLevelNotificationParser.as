package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1908:int;
      
      private var var_2625:String;
      
      private var var_1183:int;
      
      private var var_1277:int;
      
      private var var_1901:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1908 = param1.readInteger();
         this.var_2625 = param1.readString();
         this.var_1183 = param1.readInteger();
         this.var_1277 = param1.readInteger();
         this.var_1901 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1908;
      }
      
      public function get petName() : String
      {
         return this.var_2625;
      }
      
      public function get level() : int
      {
         return this.var_1183;
      }
      
      public function get petType() : int
      {
         return this.var_1277;
      }
      
      public function get breed() : int
      {
         return this.var_1901;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
