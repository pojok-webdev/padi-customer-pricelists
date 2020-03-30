(function($){
    tNote = $("#tNote").dataTable({
        bProcessing:true,
        bSort:true,
        sAjaxSource:'/notes/ajaxsource',
        "aaSorting": [[ 0, "desc" ]],
        aoColumns: [
            { "sClass": "kdticket"  },
            { "sClass": "name" },
          ]
    });
}(jQuery))
