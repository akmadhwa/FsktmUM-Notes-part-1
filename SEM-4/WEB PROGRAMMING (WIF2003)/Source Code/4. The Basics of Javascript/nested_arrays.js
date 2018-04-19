// nested_arrays.js 
//   An example illustrate an array of arrays

// Create an array object with three arrays as its elements

      var nested_array = [[2, 4, 6],
                          [1, 3, 5],
                          [10, 20, 30]
                         ];

// Display the elements of nested_list

      for (var row = 0; row <= 2; row++) { 
        document.write("Row ", row, ":  ");

        for (var col = 0; col <=2; col++) 
          document.write(nested_array[row][col], " ");

        document.write("<br />");
      }
