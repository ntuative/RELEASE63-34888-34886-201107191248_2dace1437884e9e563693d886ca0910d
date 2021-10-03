package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_475:RoomObjectLocationCacheItem = null;
      
      private var var_221:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_475 = new RoomObjectLocationCacheItem(param1);
         this.var_221 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_475;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_221;
      }
      
      public function dispose() : void
      {
         if(this.var_475 != null)
         {
            this.var_475.dispose();
            this.var_475 = null;
         }
         if(this.var_221 != null)
         {
            this.var_221.dispose();
            this.var_221 = null;
         }
      }
   }
}
