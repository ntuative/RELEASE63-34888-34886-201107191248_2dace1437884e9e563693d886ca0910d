package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_109:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_151:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_905:int = 2;
      
      public static const const_840:int = 3;
      
      public static const const_1826:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_2029:String = "";
      
      private var var_2366:int;
      
      private var var_2367:int = 0;
      
      private var var_2365:int = 0;
      
      private var _figure:String = "";
      
      private var var_47:BitmapData = null;
      
      private var var_248:Array;
      
      private var var_1590:int = 0;
      
      private var var_2454:String = "";
      
      private var var_2455:int = 0;
      
      private var var_2453:int = 0;
      
      private var var_1834:Boolean = false;
      
      private var var_1988:String = "";
      
      private var var_2255:Boolean = false;
      
      private var var_2866:Boolean = false;
      
      private var var_2860:Boolean = true;
      
      private var var_1341:int = 0;
      
      private var var_2863:Boolean = false;
      
      private var var_2862:Boolean = false;
      
      private var var_2864:Boolean = false;
      
      private var var_2867:Boolean = false;
      
      private var var_2859:Boolean = false;
      
      private var var_2865:Boolean = false;
      
      private var var_2861:int = 0;
      
      private var var_1836:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_248 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_2029 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_2029;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2366 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2366;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2367 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2367;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2365 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2365;
      }
      
      public function set figure(param1:String) : void
      {
         this._figure = param1;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_47 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_248 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_248;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1590 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1590;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2454 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2454;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2866 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2866;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1341 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1341;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2863 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2863;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2862 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2862;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2864 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2864;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2867 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2867;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2859 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2859;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2865 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2865;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2861 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2861;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2860 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2860;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1836 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1836;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2455 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2455;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2453 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2453;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1834 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1834;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1988 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1988;
      }
      
      public function set allowNameChange(param1:Boolean) : void
      {
         this.var_2255 = param1;
      }
      
      public function get allowNameChange() : Boolean
      {
         return this.var_2255;
      }
   }
}
