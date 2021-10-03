package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2421:int;
      
      private var var_1555:String;
      
      private var var_2534:int;
      
      private var var_2536:int;
      
      private var _category:int;
      
      private var var_2265:String;
      
      private var var_1493:int;
      
      private var var_2535:int;
      
      private var var_2532:int;
      
      private var var_2533:int;
      
      private var var_2537:int;
      
      private var var_2538:Boolean;
      
      private var var_3115:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2421 = param1;
         this.var_1555 = param2;
         this.var_2534 = param3;
         this.var_2536 = param4;
         this._category = param5;
         this.var_2265 = param6;
         this.var_1493 = param7;
         this.var_2535 = param8;
         this.var_2532 = param9;
         this.var_2533 = param10;
         this.var_2537 = param11;
         this.var_2538 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2421;
      }
      
      public function get itemType() : String
      {
         return this.var_1555;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2534;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2536;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2265;
      }
      
      public function get extra() : int
      {
         return this.var_1493;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2535;
      }
      
      public function get creationDay() : int
      {
         return this.var_2532;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2533;
      }
      
      public function get creationYear() : int
      {
         return this.var_2537;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2538;
      }
      
      public function get songID() : int
      {
         return this.var_1493;
      }
   }
}
