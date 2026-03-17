(function ($) {
    $.fn.modalPlugin = function (options) {
        // Default settings
        var settings = $.extend({
            modalId: '',                // Modal ID passed dynamically
            onContentUpdated: null      // Callback when content is updated (optional)
        }, options);

        // Ensure a valid modal ID is passed
        if (!settings.modalId) {
            console.error('Modal ID is required');
            return this;
        }

        // Initialize the modal element
        var $modal = $(settings.modalId);

        // Validate if the modal exists in the DOM
        if ($modal.length === 0) {
            console.error('Modal with ID ' + settings.modalId + ' not found in the DOM');
            return this;
        }

        // Automatically get modal title, body content, and footer
        var modalTitle = $modal.find('.modal-title').text();
        var modalBody = $modal.find('.modal-body').html();
        var modalFooter = $modal.find('.modal-footer').html();

        // Function to update modal content dynamically
        function updateContent(title, body, footer) {
            $modal.find('.modal-title').text(title || modalTitle);
            $modal.find('.modal-body').html(body || modalBody);
            $modal.find('.modal-footer').html(footer || modalFooter);

            // Trigger content updated callback if provided
            if (typeof settings.onContentUpdated === 'function') {
                settings.onContentUpdated(title, body, footer);
            }
        }

        // Function to open the modal
        function openModal() {
            $modal.modal('show');  // Bootstrap's method to show the modal
        }

        // Function to close the modal
        function closeModal() {
            $modal.modal('hide');  // Bootstrap's method to hide the modal
        }

        // Expose public methods to interact with the modal externally
        this.updateContent = function (title, body, footer) {
            updateContent(title, body, footer);
        };

        this.openModal = function () {
            openModal();  // Open the modal
        };

        this.closeModal = function () {
            closeModal();  // Close the modal
        };

        this.getModal = function () {
            return $modal; // Expose the modal element for manual control
        };

        return this;
    };
})(jQuery);