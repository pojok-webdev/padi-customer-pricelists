(function($){
    tNote = $("#tNote").dataTable({
        bProcessing:true,
        sAjaxSource:'/notes/ajaxsource',
        "aaSorting": [[ 0, "desc" ]],
        aoColumns: [
            { "sClass": "kdticket","asSorting": [ "desc" ]  },
            { "sClass": "name" },
          ]
    });
}(jQuery))
