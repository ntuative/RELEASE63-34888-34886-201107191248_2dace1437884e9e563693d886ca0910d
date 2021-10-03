package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1965:Boolean;
      
      private var var_2691:int;
      
      private var _owner:Boolean;
      
      private var var_1285:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get privateRoom() : Boolean
      {
         return this.var_1965;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2691;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1285;
      }
      
      public function get owner() : Boolean
      {
         return this._owner;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1285 != null)
         {
            this.var_1285.dispose();
            this.var_1285 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1965 = param1.readBoolean();
         if(this.var_1965)
         {
            this.var_2691 = param1.readInteger();
            this._owner = param1.readBoolean();
         }
         else
         {
            this.var_1285 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
