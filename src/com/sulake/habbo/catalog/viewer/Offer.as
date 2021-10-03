package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1908:String = "pricing_model_unknown";
      
      public static const const_424:String = "pricing_model_single";
      
      public static const const_457:String = "pricing_model_multi";
      
      public static const const_599:String = "pricing_model_bundle";
      
      public static const const_1916:String = "price_type_none";
      
      public static const const_862:String = "price_type_credits";
      
      public static const const_1409:String = "price_type_activitypoints";
      
      public static const const_1269:String = "price_type_credits_and_activitypoints";
       
      
      private var var_892:String;
      
      private var var_1361:String;
      
      private var var_1365:int;
      
      private var var_2133:String;
      
      private var var_1360:int;
      
      private var var_1359:int;
      
      private var var_2132:int;
      
      private var var_251:ICatalogPage;
      
      private var var_728:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_2102:int = 0;
      
      private var var_2898:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:ICatalogPage)
      {
         super();
         this.var_1365 = param1;
         this.var_2133 = param2;
         this.var_1360 = param3;
         this.var_1359 = param4;
         this.var_2132 = param5;
         this.var_251 = param8;
         this.var_2102 = param6;
         this.analyzePricingModel(param7);
         this.analyzePriceType();
         this.createProductContainer(param7);
      }
      
      public function get clubLevel() : int
      {
         return this.var_2102;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_251;
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
      
      public function get activityPointType() : int
      {
         return this.var_2132;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_728;
      }
      
      public function get pricingModel() : String
      {
         return this.var_892;
      }
      
      public function get priceType() : String
      {
         return this.var_1361;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2898;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2898 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1365 = 0;
         this.var_2133 = "";
         this.var_1360 = 0;
         this.var_1359 = 0;
         this.var_2132 = 0;
         this.var_251 = null;
         if(this.var_728 != null)
         {
            this.var_728.dispose();
            this.var_728 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_892)
         {
            case const_424:
               this.var_728 = new SingleProductContainer(this,param1);
               break;
            case const_457:
               this.var_728 = new MultiProductContainer(this,param1);
               break;
            case const_599:
               this.var_728 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_892);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_892 = const_424;
            }
            else
            {
               this.var_892 = const_457;
            }
         }
         else if(param1.length > 1)
         {
            this.var_892 = const_599;
         }
         else
         {
            this.var_892 = const_1908;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1360 > 0 && this.var_1359 > 0)
         {
            this.var_1361 = const_1269;
         }
         else if(this.var_1360 > 0)
         {
            this.var_1361 = const_862;
         }
         else if(this.var_1359 > 0)
         {
            this.var_1361 = const_1409;
         }
         else
         {
            this.var_1361 = const_1916;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_251.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_728.products)
         {
            _loc4_ = this.var_251.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,this.clubLevel,_loc1_,this.page);
      }
   }
}
