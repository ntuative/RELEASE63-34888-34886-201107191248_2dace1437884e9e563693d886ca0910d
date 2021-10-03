package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_901:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1928:String = "inventory_effects";
      
      public static const const_1281:String = "inventory_badges";
      
      public static const const_1731:String = "inventory_clothes";
      
      public static const const_2032:String = "inventory_furniture";
       
      
      private var var_2901:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_901);
         this.var_2901 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2901;
      }
   }
}
