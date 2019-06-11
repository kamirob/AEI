$(document).ready(function(){
    //Add row new product to invoice
    $('#addrow').click(function(){
        $('.item-row:last').after('<tr class="item-row"><td><input class="form-control item_name" placeholder="Nombre" data="{autocomplete_source: Product.order(:name).map(&:name)}" /></td><td><input class="form-control item_desc" placeholder="Descripción" /></td><td><input class="form-control cost" placeholder="Valor unit" /></td><td><input class="form-control qty" placeholder="Cantidad" /></td><td class="price_td"><span class="price"></span><span class="subtotal_currency"></span></td><td class="delete_td"><a class="delete" href="javascript:;" title="Remove row"><i class="fa fa-times"></i></span></a></td></tr>');
        if ($('.delete').length > 0) $('.delete').show();
        bind1();
    });


    // Delete row  product to invoice
    bind1();
    $('body').on('click', '.delete', function(){
		$(this).parents('.item-row').remove();
		
		if ($('.delete').length < 2) $('.delete').hide();
    });
    

    $('#invoice_client_name').autocomplete({
        source: $('#invoice_client_name').data('autocomplete-source')

    });

    $('#invoice_product_name').autocomplete({
        source: $('#invoice_product_name').data('autocomplete-source')
    });

    $('.selectors').onchange
    selectOptions = $('.selectors option:selected')
    product_id = $(this).val()

    if (selectOptions.length > 0)
        selectOptions.each
            $.ajax({
                url: '/invoices/:id?product_id=' + product_id,
                type: 'GET',
                dataType: 'html',
                contentType: 'application/html',
                success: (product)=>
                        $('#notification').html(product),
            })

            console.log(product)

    var inputID = document.getElementById('invoice_product_name');

    //add a listener to the object for blur
    inputID.addEventListener('blur',function(){
    //the value attribute is the way to get what the user entered.
        console.log(inputID.value);
    });  
});