package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_424:int;
      
      private var var_795:Boolean;
      
      private var var_991:String;
      
      private var _ownerName:String;
      
      private var var_2287:int;
      
      private var var_2477:int;
      
      private var var_2475:int;
      
      private var var_1844:String;
      
      private var var_2480:int;
      
      private var var_2476:Boolean;
      
      private var var_921:int;
      
      private var var_1627:int;
      
      private var var_2481:String;
      
      private var var_935:Array;
      
      private var var_2478:RoomThumbnailData;
      
      private var var_2293:Boolean;
      
      private var var_2479:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_935 = new Array();
         super();
         this.var_424 = param1.readInteger();
         this.var_795 = param1.readBoolean();
         this.var_991 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2287 = param1.readInteger();
         this.var_2477 = param1.readInteger();
         this.var_2475 = param1.readInteger();
         this.var_1844 = param1.readString();
         this.var_2480 = param1.readInteger();
         this.var_2476 = param1.readBoolean();
         this.var_921 = param1.readInteger();
         this.var_1627 = param1.readInteger();
         this.var_2481 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_935.push(_loc4_);
            _loc3_++;
         }
         this.var_2478 = new RoomThumbnailData(param1);
         this.var_2293 = param1.readBoolean();
         this.var_2479 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_935 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_424;
      }
      
      public function get event() : Boolean
      {
         return this.var_795;
      }
      
      public function get roomName() : String
      {
         return this.var_991;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2287;
      }
      
      public function get userCount() : int
      {
         return this.var_2477;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2475;
      }
      
      public function get description() : String
      {
         return this.var_1844;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2480;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2476;
      }
      
      public function get score() : int
      {
         return this.var_921;
      }
      
      public function get categoryId() : int
      {
         return this.var_1627;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2481;
      }
      
      public function get tags() : Array
      {
         return this.var_935;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2478;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2293;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2479;
      }
   }
}
