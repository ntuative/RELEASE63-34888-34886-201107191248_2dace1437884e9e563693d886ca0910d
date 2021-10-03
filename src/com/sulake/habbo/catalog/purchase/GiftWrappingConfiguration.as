package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1456:Boolean = false;
      
      private var var_1847:int;
      
      private var var_2098:Array;
      
      private var var_899:Array;
      
      private var var_900:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1456 = _loc2_.isWrappingEnabled;
         this.var_1847 = _loc2_.wrappingPrice;
         this.var_2098 = _loc2_.stuffTypes;
         this.var_899 = _loc2_.boxTypes;
         this.var_900 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1456;
      }
      
      public function get price() : int
      {
         return this.var_1847;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_2098;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_899;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_900;
      }
   }
}
