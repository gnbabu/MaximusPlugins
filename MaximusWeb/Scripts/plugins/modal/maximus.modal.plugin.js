(function ($) {
    $.fn.modalPlugin = function (options) {

        var settings = $.extend({
            modalId: '',
            modalWidth: '600px',   // Default modal width (can be overridden)
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

        // Apply dynamic width to the modal dialog
        $modal.find('.modal-dialog').css('max-width', settings.modalWidth); // Apply modal width


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

    // -------------------------
    // ✅ STATIC METHODS (alert / confirm)
    // -------------------------
    $.modalPlugin = {

        alert: function (opts) {

            let {
                title = 'Alert',
                message = '',
                okText = 'OK',
                width = '400px',
                onOk = null
            } = opts || {};

            let modalId = 'alertModal_' + Date.now();

            let html = `
                <div id="${modalId}" class="modal fade">
                    <div class="modal-dialog" style="max-width:${width}">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5>${title}</h5>
                                <button class="btn-close" data-bs-dismiss="modal"></button>
                            </div>
                            <div class="modal-body">${message}</div>
                            <div class="modal-footer">
                                <button class="btn btn-primary btn-ok">${okText}</button>
                            </div>
                        </div>
                    </div>
                </div>
            `;

            $('body').append(html);

            let $modal = $('#' + modalId);
            let bsModal = new bootstrap.Modal($modal[0]);

            $modal.on('click', '.btn-ok', function () {
                bsModal.hide();
                if (onOk) onOk();
            });

            $modal.on('hidden.bs.modal', function () {
                $modal.remove();
            });

            bsModal.show();
        },

        confirm: function (opts) {

            let {
                title = 'Confirm',
                message = '',
                okText = 'Yes',
                cancelText = 'No',
                width = '400px',
                onConfirm = null,
                onCancel = null
            } = opts || {};

            let modalId = 'confirmModal_' + Date.now();

            let html = `
                <div id="${modalId}" class="modal fade">
                    <div class="modal-dialog" style="max-width:${width}">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5>${title}</h5>
                                <button class="btn-close" data-bs-dismiss="modal"></button>
                            </div>
                            <div class="modal-body">${message}</div>
                            <div class="modal-footer">
                                <button class="btn btn-secondary btn-cancel">${cancelText}</button>
                                <button class="btn btn-primary btn-ok">${okText}</button>
                            </div>
                        </div>
                    </div>
                </div>
            `;

            $('body').append(html);

            let $modal = $('#' + modalId);
            let bsModal = new bootstrap.Modal($modal[0]);

            $modal.on('click', '.btn-ok', function () {
                bsModal.hide();
                if (onConfirm) onConfirm();
            });

            $modal.on('click', '.btn-cancel', function () {
                bsModal.hide();
                if (onCancel) onCancel();
            });

            $modal.on('hidden.bs.modal', function () {
                $modal.remove();
            });

            bsModal.show();
        }

    };
})(jQuery);