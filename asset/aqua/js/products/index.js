(function($){
    tProduct = $("#tProduct").dataTable({
        bProcessing:true,
        sAjaxSource:'/products/ajaxsource',
        "aaSorting": [[ 0, "desc" ]],
        aoColumns: [
            { "sClass": "kdticket","asSorting": [ "desc" ]  },
            { "sClass": "name" },
            { "sClass": "cause" },
            { "sClass": "ticketstart" },
            { "sClass": "ticketend" },
          ]
    });
    $(".productCategory").on("click",function(){
        console.log("val",$(this).val());
        renew($(".productCategory:checked"),function(res){
            console.log("catetgories",res);
            tProduct.fnDestroy();
            tProduct = $("#tProduct").dataTable({
                bRetrieve:true,
                bProcessing:true,
                sAjaxSource:'/products/ajaxsourcebycategories',
                sServerMethod:'post',
                "fnServerParams": function ( aoData ) {
                    aoData.push( { "name": "category_id","value":res } );
                },
                "aaSorting": [[ 0, "desc" ]],
                aoColumns: [
                    { "sClass": "kdticket","asSorting": [ "desc" ]  },
                    { "sClass": "name" },
                    { "sClass": "cause" },
                    { "sClass": "ticketstart" },
                    { "sClass": "ticketend" },
                  ]
            });
        });
    })
    renew = function(obj,callback){
        var favorite = [];
        $.each(obj, function(){
            favorite.push($(this).val());
        });
        callback("'"+favorite.join("','")+"'");
    }
}(jQuery))
