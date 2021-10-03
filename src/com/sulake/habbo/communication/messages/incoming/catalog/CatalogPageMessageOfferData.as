package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_1365:int;
      
      private var var_2133:String;
      
      private var var_1360:int;
      
      private var var_1359:int;
      
      private var var_2132:int;
      
      private var var_2102:int;
      
      private var var_1249:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1365 = param1.readInteger();
         this.var_2133 = param1.readString();
         this.var_1360 = param1.readInteger();
         this.var_1359 = param1.readInteger();
         this.var_2132 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1249 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1249.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
         this.var_2102 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1365;
      }
      
      public function get localizationId() : String
      {
         return this.var_2133;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1360;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1359;
      }
      
      public function get products() : Array
      {
         return this.var_1249;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2132;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2102;
      }
   }
}
