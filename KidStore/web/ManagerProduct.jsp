
<%@page import="DTO.Toy"%>
<%@page import="DTO.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DTO.Account"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Staff Dashboard</title>     
        <link rel="stylesheet" href="./assets/css/tailwind.output.css">
        <style>
            label {
                position: absolute;
                width: 274px;
                height: 47px;
                text-align: left;
                left: 14px;
                padding-top: 10px;
                color: white;
                text-shadow: 2px 2px 5px black;
            }
            div#add-product-form {
                position: absolute;
                top: 6.5%;
                left: 40%;
                border-radius: 20px;
            }
            .overlay {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: rgba(0, 0, 0, 0.5); 
                display: none; 
                z-index: 2;
            }

            .add {
                color: white;
                background-color: #7e3af2;
                border: none;
                padding: 10px 0px;
                border-radius: 13px;
                position: absolute;
                top: 67px;
                right: 107px;
                z-index: 3;
                width: 11%;
            }
            .close{
                position: absolute;
                top: 4px;
                right: 18px;
            }

            span {

            }

            input{
                color: black;
            }

            select{
                color: black;
            }

            textarea{
                color: black;
            }
            textarea#description {
                width: 90%;
            }
            img {
                max-width: 124px;
            }

        </style>
    </head>
    <body>

        <%
            Account acc = (Account) session.getAttribute("acc");
        %>

        <div>
            <a href="LogoutController" style="position: absolute; top: 20px; right: 30px">Logout</a>
        </div>
        <div class="py-4 text-gray-500 dark:text-gray-400">
            <a class="ml-6 text-lg font-bold text-gray-800 dark:text-gray-200" href="#">
                STAFF
            </a>
            <ul class="mt-6" style="display: flex">
                <li class="relative px-6 py-3">
                    <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200" href="ManagerProduct.jsp">
                        <svg class="w-5 h-5" aria-hidden="true" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                        <path d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"></path>
                        </svg>
                        <span class="ml-4">ManagerProduct</span>
                    </a>
                </li>            
                <li class="relative px-6 py-3">
                    <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200" href="ManagerCategory.jsp">
                        <svg class="w-5 h-5" aria-hidden="true" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                        <path d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01"></path>
                        </svg>
                        <span class="ml-4">ManagerCategory</span>
                    </a>
                </li>
                <li class="relative px-6 py-3">
                    <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200" href="ManagerCustomer.jsp">
                        <svg class="w-5 h-5" aria-hidden="true" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                        <path d="M19 11H5m14 0a2 2 0 012 2v6a2 2 0 01-2 2H5a2 2 0 01-2-2v-6a2 2 0 012-2m14 0V9a2 2 0 00-2-2M5 11V9a2 2 0 012-2m0 0V5a2 2 0 012-2h6a2 2 0 012 2v2M7 7h10"></path>
                        </svg>
                        <span class="ml-4">ManagerCustomer</span>
                    </a>
                </li>
                <li class="relative px-6 py-3">
                    <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200" href="ManagerOther.jsp">
                        <svg class="w-5 h-5" aria-hidden="true" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                        <path d="M11 3.055A9.001 9.001 0 1020.945 13H11V3.055z"></path>
                        <path d="M20.488 9H15V3.512A9.025 9.025 0 0120.488 9z"></path>
                        </svg>
                        <span class="ml-4">ManagerOther</span>
                    </a>
                </li>
                <li class="relative px-6 py-3">
                    <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200" href="ManagerOther.jsp">
                        <svg class="w-5 h-5" aria-hidden="true" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                        <path d="M11 3.055A9.001 9.001 0 1020.945 13H11V3.055z"></path>
                        <path d="M20.488 9H15V3.512A9.025 9.025 0 0120.488 9z"></path>
                        </svg>
                        <span class="ml-4">ManagerHistoryProduct</span>
                    </a>
                </li>
                <li class="relative px-6 py-3">
                    <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200" href="AddNew.jsp">
                        <svg class="w-5 h-5" aria-hidden="true" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                        <path d="M15 15l-2 5L9 9l11 4-5 2zm0 0l5 5M7.188 2.239l.777 2.897M5.136 7.965l-2.898-.777M13.95 4.05l-2.122 2.122m-5.657 5.656l-2.12 2.122"></path>
                        </svg>
                        <span class="ml-4">Add News</span>
                    </a>
                </li>
            </ul>                        
        </div>
        <div class="w-full overflow-hidden rounded-lg shadow-xs">
            <div class="w-full overflow-x-auto">
                <table class="w-full whitespace-no-wrap">
                    <thead>
                        <tr class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                            <th class="px-4 py-3">ID</th>
                            <th class="px-4 py-3">Name</th>
                            <th class="px-4 py-3">Image</th>
                            <th class="px-4 py-3">Price</th>
                            <th class="px-4 py-3">Category</th>
                            <th class="px-4 py-3">Discount</th>
                            <th class="px-4 py-3">Warranty</th>
                            <th class="px-4 py-3">Action</th>
                        </tr>
                    </thead>

                    <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
                        <%
                            ArrayList<Toy> toyList = (ArrayList<Toy>) session.getAttribute("TOY_LIST");
                            if (toyList != null) {
                                for (Toy toy : toyList) {
                        %>
                        <tr class="text-gray-700 dark:text-gray-400">
                            <td class="px-4 py-3">
                                <%=toy.getToyId()%>
                            </td>
                            <td class="px-4 py-3 text-sm">
                                <%=toy.getToyName()%>
                            </td>
                            <td class="px-4 py-3 text-xs">
                                <img src="<%=toy.getImage()%>" alt="Toy Image">
                            </td>
                            <td class="px-4 py-3 text-sm">
                                <%=toy.getPrice()%>
                            </td>
                            <td class="px-4 py-3 text-sm">
                                <%=toy.getName_category()%>
                            </td>
                            <td class="px-4 py-3 text-sm">
                                <%=toy.getDiscount()%>
                            </td>
                            <td class="px-4 py-3 text-sm">
                                <%=toy.getWarranty_time()%>
                            </td>


                            <td class="px-4 py-3">
                                <div class="flex items-center space-x-7 text-sm">
                                    <button class="flex items-center justify-between px-2 py-2 text-sm font-medium leading-5 text-purple-600 rounded-lg dark:text-gray-400 focus:outline-none focus:shadow-outline-gray" aria-label="Edit">
                                        <svg class="w-5 h-5" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20">
                                        <path d="M13.586 3.586a2 2 0 112.828 2.828l-.793.793-2.828-2.828.793-.793zM11.379 5.793L3 14.172V17h2.828l8.38-8.379-2.83-2.828z"></path>
                                        </svg>
                                    </button>
                                    <button class="flex items-center justify-between px-2 py-2 text-sm font-medium leading-5 text-purple-600 rounded-lg dark:text-gray-400 focus:outline-none focus:shadow-outline-gray" aria-label="Delete">
                                        <svg class="w-5 h-5" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M9 2a1 1 0 00-.894.553L7.382 4H4a1 1 0 000 2v10a2 2 0 002 2h8a2 2 0 002-2V6a1 1 0 100-2h-3.382l-.724-1.447A1 1 0 0011 2H9zM7 8a1 1 0 012 0v6a1 1 0 11-2 0V8zm5-1a1 1 0 00-1 1v6a1 1 0 102 0V8a1 1 0 00-1-1z" clip-rule="evenodd"></path>
                                        </svg>
                                    </button>
                                </div>
                            </td>
                        </tr>
                        <%}
                        } else {
                        %>
                    <p>Không có ?? ch?i nào</p>
                    <%
                        }
                    %>                
                    </tbody>
                </table>

                <section class="my-8 mx-auto max-w-4xl">
                    <button onclick="toggleAddProductForm()" class="add">Add New Product</button>
                    <h2 style="color: greenyellow">${ADD_TOY_SUCCESS}</h2>
                    <h2 style="color: red">${ADD_TOY_FAILED}</h2>
                </section>

                <div class="wrap">
                    <div class="addProduct overlay">
                        <div style="text-align: center; color: white; font-size: 24px; font-weight: 600; margin-top: -2%; background-color: darkkhaki; width: 350px; padding-bottom: 25px" id="add-product-form">                    
                            <div>
                                <form action="AddToyController">                                        
                                    <button onclick="toggleAddProductForm()" class="close" style="text-align: right">X</button>                                     
                                    <label for="productName">Name</label></br>
                                    <input type="text" id="productName" name="productName" required></br>
                                    <label for="image">Image</label></br>
                                    <input type="text" id="image" name="image" required></br>
                                    <label for="price">Price</label></br>
                                    <input type="number" id="price" name="price" required></br>                                                                  
                                    <label for="category">Category</label></br>                                        
                                    <%
                                        ArrayList<Category> categoryList = (ArrayList<Category>) session.getAttribute("CATEGORY_LIST");
                                        if (categoryList != null) {
                                    %>
                                    <select name="idCategory" id="category" required>
                                        <%
                                            for (Category category : categoryList) {
                                        %>
                                        <option value="<%=category.getCategoryId()%>"><%=category.getCategoryName()%></option>
                                        <%}
                                        } else {
                                        %>
                                        <p>Không có lo?i ?? ch?i nào</p>
                                        <%
                                            }
                                        %>
                                    </select><br>
                                    <label for="description">Description</label><br>
                                    <textarea id="description" name="description" rows="4" cols="50"></textarea>
                                    </br>  
                                    <label for="discount">Discount</label></br>
                                    <input type="number" id="discount" name="discount" step="0.01" required></br>
                                    <label for="warrantyTime">Warranty Time</label></br>
                                    <input type="date" id="warranty" name="warrantyTime" required></br>
                                    <input name="userId" type="hidden" value="<%=acc.getUserId()%>">
                                    <button style="background-color: green; border-radius: 30px; padding: 3px 10px; margin-top: 15px" type="submit">Add New Product</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                </body>
                <script>
                    function toggleAddProductForm() {
                        var addProductForm = document.querySelector('.addProduct');
                        var add = document.querySelector('.add');
                        if (addProductForm.style.display === 'none') {
                            addProductForm.style.display = 'block';
                            add.style.display = 'none';
                            addProductForm.classList.add("overlay");
                        } else {
                            addProductForm.style.display = 'none';
                            addProductForm.classList.remove("overlay");
                            add.style.display = 'block';
                        }
                    }
                </script>
                </html>
