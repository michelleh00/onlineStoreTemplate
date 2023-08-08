# Testing Review

## Tests Reviewed

- **Test Source File:** 
  - **Test Function Name:** test_search_with_unavailable_products
    - **Date Reviewed:** 08/07/2023
    - **Comments:**
      - This tests if the search bar shows an error message if a user enters incorrect text. When you enter incorrect text and search a product that is not available then there will be an error message that says "No Products found". The same error message will be shown if the users incorrectly spells a product.


- **Test Source File:** 
  - **Test Function Name:** test_search_with_available_products
    - **Date Reviewed:** 08/07/2023
    - **Comments:**
      - This tests if the search bar displays the product when a user types in the product. When the user correctly types in a product then the serach results will show the product. If the user only partially enters the title of a book or movie, then the search results will still display the movie. For example if the user types in "willy" then the product "Willy Wonka and the Chocolate Factory (1971)" will be displayed.


- **Test Source File:** 
  - **Test Function Name:** test_order_searched_product
    - **Date Reviewed:** 08/07/2023
    - **Comments:**
      - This tests if the user is able to order the product they have just searched. If the user correctly serahces for a product then they should be able to order it. They are able to choose the quantity of the product and press the order button, which will them take them to the checkout page. 
