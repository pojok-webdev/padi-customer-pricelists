(function($){
    tProduct = $("#tProduct").dataTable({
        bProcessing:true,
        bSort:true,
        sAjaxSource:'/products/ajaxsource',
        "aaSorting": [[ 0, "desc" ]],
        aoColumns: [
            { "sClass": "kdticket",bSortable:true  },
            { "sClass": "name" },
            { "sClass": "cause" },
            { "sClass": "discount" },
            { "sClass": "ticketstart" },
            { "sClass": "ticketend" },
          ]
    });
    $(".selectall").on("click",function(){
        $(".productCategory").prop("checked",this.checked);
        doRenew();
    })
    $(".productCategory").on("click",function(){
        console.log("val",$(this).val());
        doRenew();
    })
    doRenew = function(){
        renew($(".productCategory:checked"),function(res){
            console.log("catetgories",res);
            tProduct.fnDestroy();
            tProduct = $("#tProduct").dataTable({
                bRetrieve:true,
                bSort:true,
                bProcessing:true,
                sAjaxSource:'/products/ajaxsourcebycategories',
                sServerMethod:'post',
                "fnServerParams": function ( aoData ) {
                    aoData.push( { "name": "category_id","value":res } );
                },
                "aaSorting": [[ 0, "desc" ]],
                aoColumns: [
                    { "sClass": "kdticket",bSortable:true  },
                    { "sClass": "name" },
                    { "sClass": "cause" },
                    { "sClass": "discount" },
                    { "sClass": "ticketstart" },
                    { "sClass": "ticketend" },
                  ]
            });
        });
    }
    renew = function(obj,callback){
        var favorite = [];
        $.each(obj, function(){
            favorite.push($(this).val());
        });
        callback("'"+favorite.join("','")+"'");
    }
}(jQuery))
