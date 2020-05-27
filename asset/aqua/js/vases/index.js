(function($){
    tProduct = $("#tProduct").dataTable({
        "sPaginationType":"full_numbers",
    });
}(jQuery))
$(".selectall").on("click",function(){
    $(".productCategory").prop("checked",this.checked);
    doRenew();
})
$(".productCategory").on("click",function(){
    console.log("val",$(this).val());
    doRenew();
})
function currencyFormatDE(num) {
    return (
      num
        .replace('.', ',') // replace decimal point character with ,
        .replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1.') + ' Rp. '
    ) // use . as a separator
  }
  
  //console.info(currencyFormatDE(1234567.89)) // output 1.234.567,89 €
/*$('.ccurrency').on("click",function(){
    setThousandSeparator();
})*/
setThousandSeparator = function(){
    $('#tProduct tbody tr td.currency').each(function(){
        console.log("this",$(this).text());
        $(this).html(currencyFormatDE($(this).text()));
    });
}
doRenew = function(){
    renew($(".productCategory:checked"),function(res){
        console.log("catetgories",res);
        tProduct.fnDestroy();
        tProduct = $("#tProduct").dataTable({
            bRetrieve:true,
            bSort:true,
            bProcessing:true,
            sAjaxSource:'/vases/ajaxsourcebycategories',
            "sPaginationType":"full_numbers",
            sServerMethod:'post',
            "fnServerParams": function ( aoData ) {
                aoData.push( { "name": "category_id","value":res } );
            },
            "aaSorting": [[ 0, "desc" ]],
            "aoColumnDefs":[ { 'aDataSort':[3], 'aTargets': [4] },{ 'aDataSort':[5], 'aTargets': [6] },],
            aoColumns: [
                { "sClass": "category",bSortable:true},
                { "sClass": "kdvas",bSortable:true  },
                { "sClass": "name" },
                { "sClass": "currency","bVisible":false },
                { "sClass": "currency"},
                { "sClass": "currency","bVisible":false },
                { "sClass": "currency" }
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
