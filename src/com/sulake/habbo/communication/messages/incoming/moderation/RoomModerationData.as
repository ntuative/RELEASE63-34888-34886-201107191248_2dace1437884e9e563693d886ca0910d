package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_424:int;
      
      private var var_2477:int;
      
      private var var_3004:Boolean;
      
      private var var_2392:int;
      
      private var _ownerName:String;
      
      private var var_140:RoomData;
      
      private var var_795:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_424 = param1.readInteger();
         this.var_2477 = param1.readInteger();
         this.var_3004 = param1.readBoolean();
         this.var_2392 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_140 = new RoomData(param1);
         this.var_795 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_140 != null)
         {
            this.var_140.dispose();
            this.var_140 = null;
         }
         if(this.var_795 != null)
         {
            this.var_795.dispose();
            this.var_795 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_424;
      }
      
      public function get userCount() : int
      {
         return this.var_2477;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_3004;
      }
      
      public function get ownerId() : int
      {
         return this.var_2392;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_140;
      }
      
      public function get event() : RoomData
      {
         return this.var_795;
      }
   }
}
