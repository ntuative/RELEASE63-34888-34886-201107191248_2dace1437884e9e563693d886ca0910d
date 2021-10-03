package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_197;
         param1["bound_to_parent_rect"] = const_104;
         param1["child_window"] = const_1343;
         param1["embedded_controller"] = const_1247;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_30;
         param1["internal_event_handling"] = const_1021;
         param1["mouse_dragging_target"] = const_303;
         param1["mouse_dragging_trigger"] = const_447;
         param1["mouse_scaling_target"] = const_361;
         param1["mouse_scaling_trigger"] = const_628;
         param1["horizontal_mouse_scaling_trigger"] = const_313;
         param1["vertical_mouse_scaling_trigger"] = const_246;
         param1["observe_parent_input_events"] = const_1287;
         param1["optimize_region_to_layout_size"] = const_525;
         param1["parent_window"] = const_1194;
         param1["relative_horizontal_scale_center"] = const_207;
         param1["relative_horizontal_scale_fixed"] = const_171;
         param1["relative_horizontal_scale_move"] = const_421;
         param1["relative_horizontal_scale_strech"] = const_429;
         param1["relative_scale_center"] = const_1294;
         param1["relative_scale_fixed"] = const_987;
         param1["relative_scale_move"] = const_1253;
         param1["relative_scale_strech"] = const_1229;
         param1["relative_vertical_scale_center"] = const_206;
         param1["relative_vertical_scale_fixed"] = const_144;
         param1["relative_vertical_scale_move"] = const_290;
         param1["relative_vertical_scale_strech"] = const_339;
         param1["on_resize_align_left"] = const_761;
         param1["on_resize_align_right"] = const_662;
         param1["on_resize_align_center"] = const_572;
         param1["on_resize_align_top"] = const_781;
         param1["on_resize_align_bottom"] = const_521;
         param1["on_resize_align_middle"] = const_673;
         param1["on_accommodate_align_left"] = const_1301;
         param1["on_accommodate_align_right"] = const_645;
         param1["on_accommodate_align_center"] = const_758;
         param1["on_accommodate_align_top"] = const_1250;
         param1["on_accommodate_align_bottom"] = const_506;
         param1["on_accommodate_align_middle"] = const_866;
         param1["route_input_events_to_parent"] = const_500;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1234;
         param1["scalable_with_mouse"] = const_1285;
         param1["reflect_horizontal_resize_to_parent"] = const_519;
         param1["reflect_vertical_resize_to_parent"] = const_635;
         param1["reflect_resize_to_parent"] = const_342;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1227;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
