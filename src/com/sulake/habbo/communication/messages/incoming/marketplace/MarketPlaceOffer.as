package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1365:int;
      
      private var _furniId:int;
      
      private var var_2504:int;
      
      private var var_2265:String;
      
      private var var_1847:int;
      
      private var var_433:int;
      
      private var var_2506:int = -1;
      
      private var var_2347:int;
      
      private var var_1846:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this.var_1365 = param1;
         this._furniId = param2;
         this.var_2504 = param3;
         this.var_2265 = param4;
         this.var_1847 = param5;
         this.var_433 = param6;
         this.var_2506 = param7;
         this.var_2347 = param8;
         this.var_1846 = param9;
      }
      
      public function get offerId() : int
      {
         return this.var_1365;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2504;
      }
      
      public function get stuffData() : String
      {
         return this.var_2265;
      }
      
      public function get price() : int
      {
         return this.var_1847;
      }
      
      public function get status() : int
      {
         return this.var_433;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2506;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2347;
      }
      
      public function get offerCount() : int
      {
         return this.var_1846;
      }
   }
}
