$(".addProduct").click(function(){
    let id = $(this).data('id');
    $.ajax(
        {
            url: "../../Actions/cart.php",
            type: "GET",
            data: {
                cart : "add",
                id : id
            },
            dataType: "json",
            success: function(response) {
                console.log(response);
                if (response.answer=="OK") {
                    document.getElementById('productsCounterLabel').innerHTML = "Cart (" + response.cartProductsCount + ")";
                }
            },
            error: function() {
                alert("AJAX PROBLEM!");
            }
        }
    );
})