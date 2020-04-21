(function($){
    tProduct = $("#tProduct").dataTable({
        bProcessing:true,
        bSort:true,
        sAjaxSource:'/devices/ajaxsource',
        "aaSorting": [[ 0, "desc" ]],
        "aoColumnDefs":[ { 'aDataSort':[2], 'aTargets': [3] },{ 'aDataSort':[4], 'aTargets': [5] },],
        aoColumns: [
            { "sClass": "kdticket",bSortable:true  },
            { "sClass": "name" },
            { "sClass": "currency"},
            { "sClass": "currency" },
            { "sClass": "ticketstart" },
            { "sClass": "ticketend" }
          ]
    });
    function currencyFormatDE(num) {
        return (
          num
            .replace('.', ',') // replace decimal point character with ,
            .replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1.') + ' Rp. '
        )
      }
    setThousandSeparator = function(){
        $('#tProduct tbody tr td.currency').each(function(){
            console.log("this",$(this).text());
            $(this).html(currencyFormatDE($(this).text()));
        });
    }
}(jQuery))
