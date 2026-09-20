$(function () {

    // ================= ACCORDION PLUGIN DEMO =================

    $('#demoAccordion').maximusAccordion({
        allowMultiple: false,
        defaultOpen: 0
    });

    // ================= MODAL PLUGIN DEMO =================

    $('#btnDemoAlert').on('click', function () {
        $.modalPlugin.alert({
            title: 'Success',
            message: 'This is a demo alert dialog.',
            onOk: function () {
                console.log('Alert acknowledged');
            }
        });
    });

    $('#btnDemoConfirm').on('click', function () {
        $.modalPlugin.confirm({
            title: 'Please Confirm',
            message: 'Are you sure you want to continue?',
            onConfirm: function () {
                console.log('Confirmed');
            },
            onCancel: function () {
                console.log('Cancelled');
            }
        });
    });

    var demoCustomModal = $('#demoCustomModal').modalPlugin({
        modalId: '#demoCustomModal',
        modalWidth: '500px',
        onSave: function ($modal) {
            var name = $modal.find('#demoName').val();
            console.log('Saved name:', name);
            demoCustomModal.close();
        },
        onClose: function () {
            console.log('Custom modal closed');
        }
    });

    $('#btnDemoCustomModal').on('click', function () {
        demoCustomModal.open();
    });

    $('#btnDemoModalSave').on('click', function () {
        demoCustomModal.save();
    });

    // ================= DATEPICKER PLUGIN DEMO =================

    $('.demo-default-date').maximusDatePicker();

    $('.demo-future-date').maximusDatePicker({
        minDate: moment()
    });

    $('.demo-weekend-date').maximusDatePicker({
        disableWeekends: true
    });

});
