package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2347:int;
      
      private var var_2348:int;
      
      private var var_2349:int;
      
      private var _dayOffsets:Array;
      
      private var var_1770:Array;
      
      private var var_1769:Array;
      
      private var var_2346:int;
      
      private var var_2345:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2347;
      }
      
      public function get offerCount() : int
      {
         return this.var_2348;
      }
      
      public function get historyLength() : int
      {
         return this.var_2349;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1770;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1769;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2346;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2345;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2347 = param1.readInteger();
         this.var_2348 = param1.readInteger();
         this.var_2349 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1770 = [];
         this.var_1769 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1770.push(param1.readInteger());
            this.var_1769.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2345 = param1.readInteger();
         this.var_2346 = param1.readInteger();
         return true;
      }
   }
}
