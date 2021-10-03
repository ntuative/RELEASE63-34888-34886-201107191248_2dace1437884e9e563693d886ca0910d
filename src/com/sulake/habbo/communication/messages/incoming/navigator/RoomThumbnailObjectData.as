package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1518:int;
      
      private var var_1519:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1518 = this.var_1518;
         _loc1_.var_1519 = this.var_1519;
         return _loc1_;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1518 = param1;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1519 = param1;
      }
      
      public function get pos() : int
      {
         return this.var_1518;
      }
      
      public function get imgId() : int
      {
         return this.var_1519;
      }
   }
}
