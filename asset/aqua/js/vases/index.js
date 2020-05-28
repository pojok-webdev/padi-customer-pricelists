(function($){
    tProduct = $("#tProduct").dataTable({
        "sPaginationType":"full_numbers",
        "aaSorting": [[ 0, "desc" ]],
        "aoColumnDefs":[ 
            { 'bVisible':'false','aTargets':[4,6]}
        ],
        aoColumns: [
            { "sClass": "category",bSortable:true},
            { "sClass": "kdvas",bSortable:true  },
            { "sClass": "name" },
            { "sClass": "currency","bVisible":true },
            { "sClass": "padiattr","bVisible":false },
            {},
            { "sClass": "nonpadiattr","bVisible":false },
            { "bVisible":true },
            { "sClass": "currency" }
        ],
        "fnRowCallback": function( nRow, aData, iDisplayIndex ) {
            /* Append the grade to the default row class name */
            if ( aData[4] == "yellow" )
            {
                $('td:eq(5)', nRow).html( '<b class="yellow">A</b>' );
            }
            if ( aData[6] == "yellow" )
            {
                $('td:eq(7)', nRow).html( '<b class="yellow">A</b>' );
            }
        },
        "aoColumnDefs": [ {
                "sClass": "center",
                "aTargets": [ -1, -2 ]
        } ]
    });
}(jQuery))
$(".selectall").on("click",function(){
    $(".productCategory").prop("checked",this.checked);
    doRenew();
})
$(".productCategory").on("click",function(){
    //console.log("val",$(this).val());
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
        //console.log("this",$(this).text());
        $(this).html(currencyFormatDE($(this).text()));
    });
}
doRenew = function(){
    renew($(".productCategory:checked"),function(res){
        //console.log("catetgories",res);
        tProduct.fnDestroy();
        rebuild({categories:res},function(){
            setAttributes();
        })
    });
}
rebuild = function(obj,callback){
    tProduct = $("#tProduct").dataTable({
        bRetrieve:true,
        bSort:true,
        bProcessing:true,
        sAjaxSource:'/vases/ajaxsourcebycategories',
        "sPaginationType":"full_numbers",
        sServerMethod:'post',
        "fnServerParams": function ( aoData ) {
            aoData.push( { "name": "category_id","value":obj.categories } );
        },
        "aaSorting": [[ 0, "desc" ]],
        "aoColumnDefs":[ 
            { 'bVisible':'false','aTargets':[4,6]}
        ],
        aoColumns: [
            { "sClass": "category",bSortable:true},
            { "sClass": "kdvas",bSortable:true  },
            { "sClass": "name" },
            { "sClass": "currency","bVisible":true },
            { "sClass": "padiattr","bVisible":false },
            {},
            { "sClass": "nonpadiattr","bVisible":false },
            { "bVisible":true },
            { "sClass": "currency" }
        ],
        "fnRowCallback": function( nRow, aData, iDisplayIndex ) {
            //console.log('aData',$('#tProduct tbody tr td:nth-child(4)').text());
            //console.log('fbGetdata',iDisplayIndex,tProduct.fnGetData(nRow));
            //console.log('fbGetdata A',iDisplayIndex,tProduct.fnGetData(nRow)[4]);
            //console.log('fbGetdata B',iDisplayIndex,tProduct.fnGetData(nRow)[6]);

            //console.log('nRow',$('nRow'));
            x = $(nRow).find('td:eq(4)').text();
            //console.log("X",x);
            y = $(nRow).find('td:eq(6)').text();
            //console.log("X",y);
            
            /*
            if(tProduct.fnGetData(nRow)[4]=='yellow'){
                console.log('hihi',$(nRow).find('td:eq(5)'));
                $(nRow).find('td:eq(5)').css('background-color', 'yellow');
            }
            if(tProduct.fnGetData(nRow)[6]=='yellow'){
                console.log('hehe',$(nRow).find('td:eq(7)'));
                $(nRow).find('td:eq(7)').css('background-color', 'yellow');
            }
            */
            /*setCellColor(nRow,{target:'td:eq:(5)',id:4},function(res){
                setCellColor(res,{target:'td:eq:(7)',id:6},function(resRow){
                    //console.log('haszil',resRow);
                    return resRow;
                })
                    //return res;
            })*/
            //return nRow;
        },    
    });
callback(tProduct);
}
setCellColor = function(nRow,obj,callback){
    //console.log("OBJ Got",obj);
    if(tProduct.fnGetData(nRow)[obj.id]==='yellow'){
        //console.log('hihi',$(nRow).find(obj.target));
        callback($(nRow).find(obj.target).css('background-color', 'yellow'));
        //callback(obj.nRow);
    }else{
        callback(nRow);
    }
    /*
    if(tProduct.fnGetData(nRow)[6]=='yellow'){
        console.log('hehe',$(nRow).find('td:eq(7)'));
        $(nRow).find('td:eq(7)').css('background-color', 'yellow');
    }*/
    
}
renew = function(obj,callback){
    var favorite = [];
    $.each(obj, function(){
        favorite.push($(this).val());
    });
    callback("'"+favorite.join("','")+"'");
}
setAttributes = function(){
    $('#tProduct tbody tr').each(function(x,y){
        console.log('TE-ER',x,y);
        $.each(y,function(v,w){
    //        console.log('$this',v,w);
        })
    })
}