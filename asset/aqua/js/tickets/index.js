(function($){
    tTicket = $("#tTicket").dataTable({
        bProcessing:true,
        sAjaxSource:'/tickets/ajaxsource',
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
            /*$.ajax({
                url:'/tickets/testgetsbycategory',
                data:{category:res},
                type:'post'
            })
            .done(function(res){
                console.log("Query retrieved",res);
            })
            .fail(function(err){
                console.log("Fail retrieve query",err);
            });*/
            tTicket.fnDestroy();
            tTicket = $("#tTicket").dataTable({
                bDestroy:true,
                bRetrieve:true,
                bServerSide:true,
                bProcessing:true,
                sAjaxSource:'/tickets/ajaxsourcebycategories',
                sServerMethod:'post',
                //aData:{category:res},
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
