(function($){
    tProduct = $("#tProduct").dataTable({
        bProcessing:true,
        bSort:true,
        sAjaxSource:'/vases/ajaxsource',
        "aaSorting": [[ 0, "desc" ]],
        aoColumns: [
          {"sClass":"id"},
            { "sClass": "kdticket",bSortable:true  },
            { "sClass": "name" },
            { "sClass": "description" },
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
    setTimeout(function(){
      $('#tProduct tbody tr').each(function(){
        that = $(this);
        getDescription(that.find('.id').text(),function(description){
          console.log('Description',description);
          that.find('.description').html(atob(description));
        })
      })
    },1000);
    getDescription = function(id,callback){
      $.ajax({
        url:'/vases/getdescription/'+id,
      })
      .done(function(res){
        console.log('success getdesc',res);
        callback(res);
      })
      .fail(function(err){
        console.log('err getdesc',err)
      });
  
    }
}(jQuery))
