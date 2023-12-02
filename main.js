document.getElementById('showProducts').addEventListener('click', function() {
    document.getElementById('productList').style.display = 'flex';
    document.getElementById('productDetails').style.display = 'none';
});

function viewProduct(productName, price) {
    document.getElementById('productList').style.display = 'none';
    document.getElementById('productDetails').style.display = 'none';
    document.getElementById('productDetails').style.height = 'fit-content';

    // Simulated product data (in a real-world scenario, this data would come from a server)
    const products = {
        'default': { name: `${productName}`, description: `Description of ${productName}. Lorem ipsum dolor sit amet, consectetur adipiscing elit.`, price: `${price}` },
        // Add more products as needed

    };
    productName = 'default';
    const product = products[productName];
    console.log(products[productName]);
    document.getElementById('productName').textContent = product.name;
    document.getElementById('productDescription').textContent = product.description;
    document.getElementById('productPrice').textContent = 'Price: ' + product.price;
}

function goBack() {
    document.getElementById('productList').style.display = 'flex';
    document.getElementById('productDetails').style.display = 'none';
}
