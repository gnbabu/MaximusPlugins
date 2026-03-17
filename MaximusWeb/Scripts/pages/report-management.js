$(function () {

    // By default, show the Report Management section
    $('#reportManagement').show();
    $('#myDrafts').hide();

    // Show Report Management on button click
    $('#btnReportManagement').click(function () {
        $('#reportManagement').show();
        $('#myDrafts').hide();
    });

    // Show My Drafts on button click
    $('#btnMyDrafts').click(function () {
        $('#myDrafts').show();
        $('#reportManagement').hide();
    });



    $("#standardReportsAccordion").maximusAccordion({
        allowMultiple: false
    });

    $("#customReportsAccordion").maximusAccordion({
        allowMultiple: false
    });

});