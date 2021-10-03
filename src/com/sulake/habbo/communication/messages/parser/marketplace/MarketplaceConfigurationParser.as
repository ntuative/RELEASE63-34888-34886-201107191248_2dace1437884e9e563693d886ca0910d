package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1456:Boolean;
      
      private var var_2558:int;
      
      private var var_1877:int;
      
      private var var_1876:int;
      
      private var var_2555:int;
      
      private var var_2557:int;
      
      private var var_2556:int;
      
      private var var_2441:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1456;
      }
      
      public function get commission() : int
      {
         return this.var_2558;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1877;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1876;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2557;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2555;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2556;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2441;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1456 = param1.readBoolean();
         this.var_2558 = param1.readInteger();
         this.var_1877 = param1.readInteger();
         this.var_1876 = param1.readInteger();
         this.var_2557 = param1.readInteger();
         this.var_2555 = param1.readInteger();
         this.var_2556 = param1.readInteger();
         this.var_2441 = param1.readInteger();
         return true;
      }
   }
}
