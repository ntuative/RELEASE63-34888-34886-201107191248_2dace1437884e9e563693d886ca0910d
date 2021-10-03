package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_65:String = "i";
      
      public static const const_69:String = "s";
      
      public static const const_183:String = "e";
       
      
      private var var_1469:String;
      
      private var var_2873:int;
      
      private var var_961:String;
      
      private var var_1468:int;
      
      private var var_1792:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1469 = param1.readString();
         this.var_2873 = param1.readInteger();
         this.var_961 = param1.readString();
         this.var_1468 = param1.readInteger();
         this.var_1792 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1469;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2873;
      }
      
      public function get extraParam() : String
      {
         return this.var_961;
      }
      
      public function get productCount() : int
      {
         return this.var_1468;
      }
      
      public function get expiration() : int
      {
         return this.var_1792;
      }
   }
}
