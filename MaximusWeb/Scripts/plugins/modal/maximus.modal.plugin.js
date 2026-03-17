(function ($) {
    $.fn.modalPlugin = function (options) {

        var settings = $.extend({
            modalId: '',
            onOpen: null,
            onClose: null,
            onSave: null
        }, options);

        if (!settings.modalId) {
            console.error('Modal ID is required');
            return this;
        }

        var $modal = $(settings.modalId);

        if ($modal.length === 0) {
            console.error('Modal not found:', settings.modalId);
            return this;
        }

        // Bootstrap instance
        var bsModal = new bootstrap.Modal($modal[0]);

        // OPEN
        this.open = function () {
            bsModal.show();
            if (typeof settings.onOpen === 'function') {
                settings.onOpen($modal);
            }
        };

        // CLOSE
        this.close = function () {
            bsModal.hide();
            if (typeof settings.onClose === 'function') {
                settings.onClose($modal);
            }
        };

        // SAVE TRIGGER (plugin DOES NOT read data)
        this.save = function () {
            if (typeof settings.onSave === 'function') {
                settings.onSave($modal); // 🔥 pass modal reference
            }
        };

        return this;
    };
})(jQuery);