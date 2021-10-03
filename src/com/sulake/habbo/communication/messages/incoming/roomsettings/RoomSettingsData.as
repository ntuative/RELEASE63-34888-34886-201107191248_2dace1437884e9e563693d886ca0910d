package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_595:int = 0;
      
      public static const const_213:int = 1;
      
      public static const const_125:int = 2;
      
      public static const const_782:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1844:String;
      
      private var var_2287:int;
      
      private var var_1627:int;
      
      private var var_2289:int;
      
      private var var_2290:int;
      
      private var var_935:Array;
      
      private var var_2292:Array;
      
      private var var_2291:int;
      
      private var var_2293:Boolean;
      
      private var var_2294:Boolean;
      
      private var var_2288:Boolean;
      
      private var var_2285:Boolean;
      
      private var var_2295:int;
      
      private var var_2286:int;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2293;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2293 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2294;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2294 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2288;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2288 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2285;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2285 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2295;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2295 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2286;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2286 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1844;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1844 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2287;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2287 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1627;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1627 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2289;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2289 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2290;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2290 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_935;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_935 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2292;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2292 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2291;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2291 = param1;
      }
   }
}
