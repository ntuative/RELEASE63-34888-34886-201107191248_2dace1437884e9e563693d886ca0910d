package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_876:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_2791:String;
      
      private var var_2792:BitmapData;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_876,param3,param4);
         this.var_2791 = param1;
         this.var_2792 = param2;
      }
      
      public function get badgeID() : String
      {
         return this.var_2791;
      }
      
      public function get badgeImage() : BitmapData
      {
         return this.var_2792;
      }
   }
}
