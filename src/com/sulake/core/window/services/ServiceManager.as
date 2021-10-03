package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_3074:uint;
      
      private var _root:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_671:IWindowContext;
      
      private var var_1197:IMouseDraggingService;
      
      private var var_1199:IMouseScalingService;
      
      private var var_1195:IMouseListenerService;
      
      private var var_1198:IFocusManagerService;
      
      private var var_1196:IToolTipAgentService;
      
      private var var_1194:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_3074 = 0;
         this._root = param2;
         this.var_671 = param1;
         this.var_1197 = new WindowMouseDragger(param2);
         this.var_1199 = new WindowMouseScaler(param2);
         this.var_1195 = new WindowMouseListener(param2);
         this.var_1198 = new FocusManager(param2);
         this.var_1196 = new WindowToolTipAgent(param2);
         this.var_1194 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1197 != null)
         {
            this.var_1197.dispose();
            this.var_1197 = null;
         }
         if(this.var_1199 != null)
         {
            this.var_1199.dispose();
            this.var_1199 = null;
         }
         if(this.var_1195 != null)
         {
            this.var_1195.dispose();
            this.var_1195 = null;
         }
         if(this.var_1198 != null)
         {
            this.var_1198.dispose();
            this.var_1198 = null;
         }
         if(this.var_1196 != null)
         {
            this.var_1196.dispose();
            this.var_1196 = null;
         }
         if(this.var_1194 != null)
         {
            this.var_1194.dispose();
            this.var_1194 = null;
         }
         this._root = null;
         this.var_671 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1197;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1199;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1195;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1198;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1196;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1194;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
