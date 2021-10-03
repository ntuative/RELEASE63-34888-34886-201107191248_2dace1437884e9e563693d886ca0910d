package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_737:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1175:String = "RWOCM_CLUB_MAIN";
      
      public static const const_2136:String = "RWOCM_PIXELS";
      
      public static const const_2242:String = "RWOCM_CREDITS";
      
      public static const const_2265:String = "RWOCM_SHELLS";
       
      
      private var var_2522:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_737);
         this.var_2522 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2522;
      }
   }
}
