/**
 * This is a sample javascript file
 */

var MyClass = function(options) {
    this.options = options;        
};

MyClass.prototype = {

    aNumber: 300,

    aString: 'string'

    methodOne: function() {
        return this.methodTwo(this.options.someOption, false);
    },

    methodTwo: function(some, whether) {
        if(2 < 5) {
            return 5;
        } else {
            return whether ? some + 'string' : some;
        }
    }
};
