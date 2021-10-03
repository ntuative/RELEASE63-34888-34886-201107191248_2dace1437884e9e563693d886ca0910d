package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1251:int = 1;
      
      public static const const_910:int = 2;
      
      public static const const_997:int = 3;
      
      public static const const_1772:int = 4;
       
      
      private var _index:int;
      
      private var var_2964:String;
      
      private var var_2965:String;
      
      private var var_2968:Boolean;
      
      private var var_2967:String;
      
      private var var_1029:String;
      
      private var var_2966:int;
      
      private var var_2477:int;
      
      private var _type:int;
      
      private var var_2542:String;
      
      private var var_1116:GuestRoomData;
      
      private var var_1117:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2964 = param1.readString();
         this.var_2965 = param1.readString();
         this.var_2968 = param1.readInteger() == 1;
         this.var_2967 = param1.readString();
         this.var_1029 = param1.readString();
         this.var_2966 = param1.readInteger();
         this.var_2477 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1251)
         {
            this.var_2542 = param1.readString();
         }
         else if(this._type == const_997)
         {
            this.var_1117 = new PublicRoomData(param1);
         }
         else if(this._type == const_910)
         {
            this.var_1116 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_1116 != null)
         {
            this.var_1116.dispose();
            this.var_1116 = null;
         }
         if(this.var_1117 != null)
         {
            this.var_1117.dispose();
            this.var_1117 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2964;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2965;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2968;
      }
      
      public function get picText() : String
      {
         return this.var_2967;
      }
      
      public function get picRef() : String
      {
         return this.var_1029;
      }
      
      public function get folderId() : int
      {
         return this.var_2966;
      }
      
      public function get tag() : String
      {
         return this.var_2542;
      }
      
      public function get userCount() : int
      {
         return this.var_2477;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_1116;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_1117;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1251)
         {
            return 0;
         }
         if(this.type == const_910)
         {
            return this.var_1116.maxUserCount;
         }
         if(this.type == const_997)
         {
            return this.var_1117.maxUsers;
         }
         return 0;
      }
   }
}
