Type.registerNamespace('AtlasExamples.WebUI');

AtlasExamples.WebUI.TextChangedBehavior = function() {
    AtlasExamples.WebUI.TextChangedBehavior.initializeBase(this);
    
    // Private members.
    var _text;
    var _timeout = 500;
    var _timer;
    var _keydownHandler;
    var _keyupHandler;
    var _tickHandler;
    
    // Properties.
    this.get_timeout = function() {
        return _timeout;
    }
    this.set_timeout = function(value) {
        if(value != _timeout) {
            _timeout = value;

            if(_timer) {
                _timer.set_interval(_timeout);
            }
            this.raisePropertyChanged('timeout');
        }
    }
    // Events.
    this.changed = this.createEvent();
    
    // Initialize / Dispose.
    this.initialize = function() {
        AtlasExamples.WebUI.TextChangedBehavior.callBaseMethod(this, 'initialize');

        _text = this.control.element.value;
        _tickHandler = Function.createDelegate(this, this._onTimerTick);
        
        _timer = new Web.Timer();
        _timer.set_interval(_timeout);
        _timer.tick.add(_tickHandler);
        
        _keydownHandler = Function.createDelegate(this, keydownHandler);
        this.control.element.attachEvent('onkeydown', _keydownHandler);
        
        _keyupHandler = Function.createDelegate(this, keyupHandler);
        this.control.element.attachEvent('onkeyup', _keyupHandler);
    }
    this.dispose = function() {
        if(_timer) {
            _timer.tick.remove(_tickHandler);
            _timer.dispose();
            _timer = null;
        }
        _tickHandler = null;
        
        this.control.element.detachEvent('onkeydown', _keydownHandler);
        _keydownHandler = null;
        
        this.control.element.detachEvent('onkeyup', _keyupHandler);
        _keyupHandler = null;
            
        AtlasExamples.WebUI.TextChangedBehavior.callBaseMethod(this, 'dispose');
    }
    
    // Descriptor.
    this.getDescriptor = function() {
        var td = AtlasExamples.WebUI.TextChangedBehavior.callBaseMethod(this, 'getDescriptor');
        
        td.addProperty('timeout', Number);
        td.addEvent('changed', true);
        
        return td;
    }
    
    // Event Handlers.
    function keydownHandler() {
        _timer.set_enabled(false);
    }
    function keyupHandler() {
        var e = window.event;
        if (e.keyCode != Web.UI.Key.Tab) {
            _timer.set_enabled(true);
        }        
    }
    this._onTimerTick = function() {
        _timer.set_enabled(false);
        
        if(_text != this.control.element.value) {
            _text = this.control.element.value;
            
            this.changed.invoke(this, Web.EventArgs.Empty);
        }
    }
}
Type.registerClass('AtlasExamples.WebUI.TextChangedBehavior', Web.UI.Behavior);
Web.TypeDescriptor.addType('script', 'textChangedBehavior', AtlasExamples.WebUI.TextChangedBehavior);

