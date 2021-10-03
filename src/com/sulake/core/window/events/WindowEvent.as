package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1909:String = "WE_DESTROY";
      
      public static const const_370:String = "WE_DESTROYED";
      
      public static const const_1729:String = "WE_OPEN";
      
      public static const const_2025:String = "WE_OPENED";
      
      public static const const_1948:String = "WE_CLOSE";
      
      public static const const_1940:String = "WE_CLOSED";
      
      public static const const_1878:String = "WE_FOCUS";
      
      public static const const_374:String = "WE_FOCUSED";
      
      public static const const_1764:String = "WE_UNFOCUS";
      
      public static const const_1886:String = "WE_UNFOCUSED";
      
      public static const const_2033:String = "WE_ACTIVATE";
      
      public static const const_517:String = "WE_ACTIVATED";
      
      public static const const_1845:String = "WE_DEACTIVATE";
      
      public static const const_550:String = "WE_DEACTIVATED";
      
      public static const const_351:String = "WE_SELECT";
      
      public static const const_48:String = "WE_SELECTED";
      
      public static const const_501:String = "WE_UNSELECT";
      
      public static const const_512:String = "WE_UNSELECTED";
      
      public static const const_2027:String = "WE_LOCK";
      
      public static const const_1888:String = "WE_LOCKED";
      
      public static const const_1922:String = "WE_UNLOCK";
      
      public static const const_1787:String = "WE_UNLOCKED";
      
      public static const const_795:String = "WE_ENABLE";
      
      public static const const_291:String = "WE_ENABLED";
      
      public static const const_954:String = "WE_DISABLE";
      
      public static const const_283:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_398:String = "WE_RELOCATED";
      
      public static const const_1211:String = "WE_RESIZE";
      
      public static const const_40:String = "WE_RESIZED";
      
      public static const const_1781:String = "WE_MINIMIZE";
      
      public static const const_1802:String = "WE_MINIMIZED";
      
      public static const const_1933:String = "WE_MAXIMIZE";
      
      public static const const_1990:String = "WE_MAXIMIZED";
      
      public static const const_1944:String = "WE_RESTORE";
      
      public static const const_1728:String = "WE_RESTORED";
      
      public static const const_534:String = "WE_CHILD_ADDED";
      
      public static const const_448:String = "WE_CHILD_REMOVED";
      
      public static const const_232:String = "WE_CHILD_RELOCATED";
      
      public static const const_149:String = "WE_CHILD_RESIZED";
      
      public static const const_384:String = "WE_CHILD_ACTIVATED";
      
      public static const const_616:String = "WE_PARENT_ADDED";
      
      public static const const_1789:String = "WE_PARENT_REMOVED";
      
      public static const const_2040:String = "WE_PARENT_RELOCATED";
      
      public static const const_640:String = "WE_PARENT_RESIZED";
      
      public static const const_1278:String = "WE_PARENT_ACTIVATED";
      
      public static const const_152:String = "WE_OK";
      
      public static const const_598:String = "WE_CANCEL";
      
      public static const const_114:String = "WE_CHANGE";
      
      public static const const_499:String = "WE_SCROLL";
      
      public static const UNKNOWN:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_757:IWindow;
      
      protected var var_1154:Boolean;
      
      protected var var_515:Boolean;
      
      protected var var_170:Boolean;
      
      protected var var_756:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_757 = param3;
         _loc5_.var_515 = param4;
         _loc5_.var_170 = false;
         _loc5_.var_756 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_757;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_515;
      }
      
      public function recycle() : void
      {
         if(this.var_170)
         {
            throw new Error("Event already recycled!");
         }
         this.var_757 = null;
         this._window = null;
         this.var_170 = true;
         this.var_1154 = false;
         this.var_756.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1154;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1154 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1154;
      }
      
      public function stopPropagation() : void
      {
         this.var_1154 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1154 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_515 + " window: " + this._window + " }";
      }
   }
}
