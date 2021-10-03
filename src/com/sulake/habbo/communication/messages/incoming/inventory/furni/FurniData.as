package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2374:int;
      
      private var var_1555:String;
      
      private var _objId:int;
      
      private var var_2090:int;
      
      private var _category:int;
      
      private var var_2265:String;
      
      private var var_2371:Boolean;
      
      private var var_2373:Boolean;
      
      private var var_2375:Boolean;
      
      private var var_2376:Boolean;
      
      private var var_2372:int;
      
      private var var_1493:int;
      
      private var var_1772:String = "";
      
      private var var_1672:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2374 = param1;
         this.var_1555 = param2;
         this._objId = param3;
         this.var_2090 = param4;
         this._category = param5;
         this.var_2265 = param6;
         this.var_2371 = param7;
         this.var_2373 = param8;
         this.var_2375 = param9;
         this.var_2376 = param10;
         this.var_2372 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1772 = param1;
         this.var_1493 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2374;
      }
      
      public function get itemType() : String
      {
         return this.var_1555;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_2090;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2265;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2371;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2373;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2375;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2376;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2372;
      }
      
      public function get slotId() : String
      {
         return this.var_1772;
      }
      
      public function get songId() : int
      {
         return this.var_1672;
      }
      
      public function get extra() : int
      {
         return this.var_1493;
      }
   }
}
