package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2869:Boolean;
      
      private var var_2868:int;
      
      private var var_2098:Array;
      
      private var var_899:Array;
      
      private var var_900:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2869;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2868;
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_2098 = [];
         this.var_899 = [];
         this.var_900 = [];
         this.var_2869 = param1.readBoolean();
         this.var_2868 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_2098.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_899.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_900.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
