package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogLocalizationData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   
   public class CatalogPageMessageParser implements IMessageParser
   {
       
      
      private var var_1655:int;
      
      private var var_1345:String;
      
      private var _localization:CatalogLocalizationData;
      
      private var _offers:Array;
      
      private var var_1365:int;
      
      public function CatalogPageMessageParser()
      {
         super();
      }
      
      public function get pageId() : int
      {
         return this.var_1655;
      }
      
      public function get layoutCode() : String
      {
         return this.var_1345;
      }
      
      public function get localization() : CatalogLocalizationData
      {
         return this._localization;
      }
      
      public function get offers() : Array
      {
         return this._offers;
      }
      
      public function get offerId() : int
      {
         return this.var_1365;
      }
      
      public function flush() : Boolean
      {
         this.var_1655 = -1;
         this.var_1345 = "";
         this._localization = null;
         this._offers = [];
         this.var_1365 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1655 = param1.readInteger();
         this.var_1345 = param1.readString();
         this._localization = new CatalogLocalizationData(param1);
         this._offers = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._offers.push(new CatalogPageMessageOfferData(param1));
            _loc3_++;
         }
         this.var_1365 = param1.readInteger();
         return true;
      }
   }
}
