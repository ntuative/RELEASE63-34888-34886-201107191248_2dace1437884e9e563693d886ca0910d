package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2908:int;
      
      private var var_2956:int;
      
      private var var_1360:int;
      
      private var var_1359:int;
      
      private var var_2132:int;
      
      private var var_2957:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2908 = param1.readInteger();
         this.var_2956 = param1.readInteger();
         this.var_1360 = param1.readInteger();
         this.var_1359 = param1.readInteger();
         this.var_2132 = param1.readInteger();
         this.var_2957 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2908;
      }
      
      public function get charges() : int
      {
         return this.var_2956;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1360;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1359;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2957;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2132;
      }
   }
}
