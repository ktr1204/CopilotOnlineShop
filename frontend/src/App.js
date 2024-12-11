import React, { useEffect, useState } from 'react';
import axios from 'axios';

function App() {
  const [products, setProducts] = useState([]);

  useEffect(() => {
      axios.get('http://localhost:8000/api/products/')
          .then(response => setProducts(response.data))
          .catch(error => console.error(error));
  }, []);

  return (
      <div>
          <h1>Product List</h1>
          <ul>
              {products.map(product => (
                  <li key={product.id}>
                      {product.name} - ${product.price}
                  </li>
              ))}
          </ul>
      </div>
  );
}

export default App;
