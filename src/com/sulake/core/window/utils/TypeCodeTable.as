package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_766;
         param1["badge"] = const_874;
         param1["bitmap"] = const_414;
         param1["border"] = const_811;
         param1["border_notify"] = const_1872;
         param1["bubble"] = const_903;
         param1["bubble_pointer_up"] = const_1169;
         param1["bubble_pointer_right"] = const_1373;
         param1["bubble_pointer_down"] = const_1284;
         param1["bubble_pointer_left"] = const_1178;
         param1["button"] = const_536;
         param1["button_thick"] = const_922;
         param1["button_icon"] = const_1964;
         param1["button_group_left"] = const_839;
         param1["button_group_center"] = const_982;
         param1["button_group_right"] = const_888;
         param1["canvas"] = const_1023;
         param1["checkbox"] = const_742;
         param1["closebutton"] = const_1233;
         param1["container"] = const_435;
         param1["container_button"] = const_844;
         param1["display_object_wrapper"] = const_900;
         param1["dropmenu"] = const_671;
         param1["dropmenu_item"] = const_509;
         param1["frame"] = const_446;
         param1["frame_notify"] = const_1998;
         param1["header"] = const_767;
         param1["html"] = const_1359;
         param1["icon"] = const_1213;
         param1["itemgrid"] = const_1378;
         param1["itemgrid_horizontal"] = const_641;
         param1["itemgrid_vertical"] = const_951;
         param1["itemlist"] = WINDOW_TYPE_ITEMLIST;
         param1["itemlist_horizontal"] = const_433;
         param1["itemlist_vertical"] = const_432;
         param1["label"] = const_832;
         param1["maximizebox"] = const_1929;
         param1["menu"] = const_1823;
         param1["menu_item"] = const_1841;
         param1["submenu"] = const_1226;
         param1["minimizebox"] = const_1898;
         param1["notify"] = const_1786;
         param1["null"] = const_791;
         param1["password"] = const_871;
         param1["radiobutton"] = const_945;
         param1["region"] = const_376;
         param1["restorebox"] = const_1930;
         param1["scaler"] = const_623;
         param1["scaler_horizontal"] = const_1837;
         param1["scaler_vertical"] = const_2030;
         param1["scrollbar_horizontal"] = const_659;
         param1["scrollbar_vertical"] = const_892;
         param1["scrollbar_slider_button_up"] = const_1191;
         param1["scrollbar_slider_button_down"] = const_1406;
         param1["scrollbar_slider_button_left"] = const_1385;
         param1["scrollbar_slider_button_right"] = const_1382;
         param1["scrollbar_slider_bar_horizontal"] = const_1335;
         param1["scrollbar_slider_bar_vertical"] = const_1338;
         param1["scrollbar_slider_track_horizontal"] = const_1311;
         param1["scrollbar_slider_track_vertical"] = const_1381;
         param1["scrollable_itemlist"] = const_1895;
         param1["scrollable_itemlist_vertical"] = const_601;
         param1["scrollable_itemlist_horizontal"] = const_1352;
         param1["selector"] = const_970;
         param1["selector_list"] = const_879;
         param1["submenu"] = const_1226;
         param1["tab_button"] = const_956;
         param1["tab_container_button"] = const_1369;
         param1["tab_context"] = const_397;
         param1["tab_content"] = const_1388;
         param1["tab_selector"] = const_988;
         param1["text"] = const_930;
         param1["input"] = const_759;
         param1["toolbar"] = const_1919;
         param1["tooltip"] = const_440;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
