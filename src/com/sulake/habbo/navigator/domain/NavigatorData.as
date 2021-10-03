package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomEntryData;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_2108:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_236:MsgWithRequestId;
      
      private var var_744:RoomEventData;
      
      private var var_3025:Boolean;
      
      private var var_3027:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2623:int;
      
      private var var_311:GuestRoomData;
      
      private var var_1133:PublicRoomShortData;
      
      private var var_3023:int;
      
      private var var_3024:Boolean;
      
      private var var_3028:int;
      
      private var var_3021:Boolean;
      
      private var var_2201:int;
      
      private var var_3026:Boolean;
      
      private var var_1562:Array;
      
      private var var_1696:Array;
      
      private var var_3022:int;
      
      private var var_1697:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1405:Boolean;
      
      private var var_3018:int;
      
      private var var_3019:Boolean;
      
      private var var_3020:int = 0;
      
      private var var_2200:OfficialRoomEntryData;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1562 = new Array();
         this.var_1696 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_311 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_311 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_1133 = null;
         this.var_311 = null;
         this._currentRoomOwner = false;
         if(param1.privateRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_1133 = param1.publicSpace;
            this.var_744 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_744 != null)
         {
            this.var_744.dispose();
            this.var_744 = null;
         }
         if(this.var_1133 != null)
         {
            this.var_1133.dispose();
            this.var_1133 = null;
         }
         if(this.var_311 != null)
         {
            this.var_311.dispose();
            this.var_311 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_311 != null)
         {
            this.var_311.dispose();
         }
         this.var_311 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_744 != null)
         {
            this.var_744.dispose();
         }
         this.var_744 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_236 != null && this.var_236 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_236 != null && this.var_236 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_236 != null && this.var_236 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_236 = param1;
         this.var_2200 = param1.ad;
         this.var_1405 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_236 = param1;
         this.var_1405 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_236 = param1;
         this.var_1405 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_236 == null)
         {
            return;
         }
         this.var_236.dispose();
         this.var_236 = null;
      }
      
      public function set adRoom(param1:OfficialRoomEntryData) : void
      {
         this.var_2200 = param1;
      }
      
      public function get adRoom() : OfficialRoomEntryData
      {
         return this.var_2200;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_236 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_236 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_236 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_744;
      }
      
      public function get avatarId() : int
      {
         return this.var_2623;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_3025;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_3027;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_311;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_1133;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_3024;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_3028;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_2201;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_3021;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_3018;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_3023;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_3026;
      }
      
      public function get adIndex() : int
      {
         return this.var_3020;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_3019;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2623 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_3028 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_3024 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_3025 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_3027 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_3021 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_2201 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_3018 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_3023 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_3026 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_3020 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_3019 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1562 = param1;
         this.var_1696 = new Array();
         for each(_loc2_ in this.var_1562)
         {
            if(_loc2_.visible)
            {
               this.var_1696.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1562;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1696;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_3022 = param1.limit;
         this.var_1697 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1697 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_311.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_311 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_311.flatId;
         return this.var_2201 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1697 >= this.var_3022;
      }
      
      public function startLoading() : void
      {
         this.var_1405 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1405;
      }
   }
}
