package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_2205:int = 0;
      
      private var var_2206:int = 0;
      
      private var var_2132:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_2205;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_2206;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2132;
      }
      
      public function flush() : Boolean
      {
         this.var_2205 = 0;
         this.var_2206 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2205 = param1.readInteger();
         this.var_2206 = param1.readInteger();
         this.var_2132 = param1.readInteger();
         return true;
      }
   }
}
