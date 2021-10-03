package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2347:int;
      
      private var var_2348:int;
      
      private var var_2349:int;
      
      private var _dayOffsets:Array;
      
      private var var_1770:Array;
      
      private var var_1769:Array;
      
      private var var_2346:int;
      
      private var var_2345:int;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2347 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2348 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2349 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1770 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1769 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2346 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2345 = param1;
      }
   }
}
