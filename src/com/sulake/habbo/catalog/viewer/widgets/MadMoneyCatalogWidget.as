package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.window.utils.IAlertDialog;
   
   public class MadMoneyCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_1329:IButtonWindow;
      
      public function MadMoneyCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this.var_1329 != null)
         {
            this.var_1329.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.method_6);
            this.var_1329 = null;
         }
      }
      
      override public function init() : Boolean
      {
         if(!super.init())
         {
            return false;
         }
         this.var_1329 = _window.findChildByName("ctlg_madmoney_button") as IButtonWindow;
         if(this.var_1329 != null)
         {
         }
         return true;
      }
      
      private function method_6(param1:WindowMouseEvent) : void
      {
         var event:WindowMouseEvent = param1;
         page.viewer.catalog.windowManager.alert("TODO","Fix in MadMoneyCatalogWidget.as",0,function(param1:IAlertDialog, param2:WindowEvent):void
         {
            param1.dispose();
         });
      }
   }
}
