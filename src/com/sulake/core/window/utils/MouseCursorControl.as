package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.MouseCursorType;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.Dictionary;
   
   public class MouseCursorControl
   {
      
      private static var _type:uint = MouseCursorType.const_31;
      
      private static var var_160:Stage;
      
      private static var var_337:Boolean = true;
      
      private static var _disposed:Boolean = false;
      
      private static var var_840:Boolean = true;
      
      private static var var_138:DisplayObject;
      
      private static var var_1584:Dictionary = new Dictionary();
       
      
      public function MouseCursorControl(param1:DisplayObject)
      {
         super();
         var_160 = param1.stage;
      }
      
      public static function dispose() : void
      {
         if(!_disposed)
         {
            if(var_138)
            {
               var_160.removeChild(var_138);
               var_160.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
               var_160.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
               var_160.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
               var_160.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
            }
            _disposed = true;
         }
      }
      
      public static function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public static function get type() : uint
      {
         return _type;
      }
      
      public static function set type(param1:uint) : void
      {
         if(_type != param1)
         {
            _type = param1;
            var_840 = true;
         }
      }
      
      public static function get visible() : Boolean
      {
         return var_337;
      }
      
      public static function set visible(param1:Boolean) : void
      {
         var_337 = param1;
         if(var_337)
         {
            if(var_138)
            {
               var_138.visible = true;
            }
            else
            {
               Mouse.show();
            }
         }
         else if(var_138)
         {
            var_138.visible = false;
         }
         else
         {
            Mouse.hide();
         }
      }
      
      public static function change() : void
      {
         var _loc1_:* = null;
         if(var_840)
         {
            _loc1_ = var_1584[_type];
            if(_loc1_)
            {
               if(var_138)
               {
                  var_160.removeChild(var_138);
               }
               else
               {
                  var_160.addEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_160.addEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_160.addEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_160.addEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  Mouse.hide();
               }
               var_138 = _loc1_;
               var_160.addChild(var_138);
            }
            else
            {
               if(var_138)
               {
                  var_160.removeChild(var_138);
                  var_160.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_160.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_160.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_160.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  var_138 = null;
                  Mouse.show();
               }
               switch(_type)
               {
                  case MouseCursorType.const_31:
                  case MouseCursorType.ARROW:
                     Mouse.cursor = MouseCursor.ARROW;
                     break;
                  case MouseCursorType.const_380:
                     Mouse.cursor = MouseCursor.BUTTON;
                     break;
                  case MouseCursorType.const_859:
                  case MouseCursorType.const_258:
                  case MouseCursorType.const_1780:
                  case MouseCursorType.const_1949:
                     Mouse.cursor = MouseCursor.HAND;
                     break;
                  case MouseCursorType.NONE:
                     Mouse.cursor = MouseCursor.ARROW;
                     Mouse.hide();
               }
            }
            var_840 = false;
         }
      }
      
      public static function defineCustomCursorType(param1:uint, param2:DisplayObject) : void
      {
         var_1584[param1] = param2;
      }
      
      private static function onStageMouseMove(param1:MouseEvent) : void
      {
         if(var_138)
         {
            var_138.x = param1.stageX - 2;
            var_138.y = param1.stageY;
            if(_type == MouseCursorType.const_31)
            {
               var_337 = false;
               Mouse.show();
            }
            else
            {
               var_337 = true;
               Mouse.hide();
            }
         }
      }
      
      private static function onStageMouseLeave(param1:Event) : void
      {
         if(var_138 && _type != MouseCursorType.const_31)
         {
            Mouse.hide();
            var_337 = false;
         }
      }
   }
}
