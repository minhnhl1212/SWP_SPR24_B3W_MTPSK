
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Base64"%>
<%@page import="DTO.Toy"%>
<%@page import="DTO.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DTO.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                padding-top: 0px;
                color: white;
                text-shadow: 2px 2px 5px black;
            }
            div#add-product-form {
                position: absolute;
                top: 6.5%;
                left: 32%;
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
            input#image {
                width: 273px;
                text-wrap: wrap;
            }

            th:nth-child(3), td:nth-child(3) {
                max-width: 80px;
            }
            img {
                max-width: 124px;
            }
            input#image {
                width: 273px;
                text-wrap: wrap;
            }

            th:nth-child(3), td:nth-child(3) {
                max-width: 80px;
            }

            .py-4.text-gray-500.dark\:text-gray-400 {
                text-align: center;
                background-color: #80DFFF;
            }
            .mt-6 {
                display: flex;
                justify-content: center;
            }
            .text-gray-800 {
                --text-opacity: 1;
                color: #1a1c23;
                font-family: serif;
                font-size: 30px;
            }
            th:nth-child(1), td:nth-child(1) {
                max-width: 5px;
            }
            .px-4 {
                padding-left: 1rem;
                padding-right: 1rem;
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
        <a class="navbar-brand" href="MainController?TOY_LIST=ALL"><img src="img/logo-kids-new3.png" class="logo" alt="KidStore"></a>
        <div class="py-4 text-gray-500 dark:text-gray-400">
            <a class="ml-6 text-lg font-bold text-gray-800 dark:text-gray-200" href="#">
                STAFF DASHBOARD
            </a>
            <ul class="mt-6" style="display: flex">
                <li class="relative px-6 py-3">
                    <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200" href="LoadCategoryController">
                        <svg class="w-5 h-5" aria-hidden="true" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                        <path d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01"></path>
                        </svg>
                        <span class="ml-4">ManagerCategory</span>
                    </a>
                </li>
                <li class="relative px-6 py-3">
                    <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200" href="LoadManagerProductController">
                        <svg class="w-5 h-5" aria-hidden="true" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                        <path d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"></path>
                        </svg>
                        <span class="ml-4">ManagerProduct</span>
                    </a>
                </li>            
                
                <li class="relative px-6 py-3">
                    <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200" href="LoadOrderFeedback">
                        <svg class="w-5 h-5" aria-hidden="true" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                        <path d="M19 11H5m14 0a2 2 0 012 2v6a2 2 0 01-2 2H5a2 2 0 01-2-2v-6a2 2 0 012-2m14 0V9a2 2 0 00-2-2M5 11V9a2 2 0 012-2m0 0V5a2 2 0 012-2h6a2 2 0 012 2v2M7 7h10"></path>
                        </svg>
                        <span class="ml-4">ManagerCustomer</span>
                    </a>
                </li>
                <li class="relative px-6 py-3">
                    <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200" href="LoadManagerOtherController">
                        <svg class="w-5 h-5" aria-hidden="true" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                        <path d="M11 3.055A9.001 9.001 0 1020.945 13H11V3.055z"></path>
                        <path d="M20.488 9H15V3.512A9.025 9.025 0 0120.488 9z"></path>
                        </svg>
                        <span class="ml-4">ManagerOther</span>
                    </a>
                </li>
                <li class="relative px-6 py-3">
                    <a class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200" href="LoadHistoryProductController">
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
                <table class="w-full whitespace-no-wrap" style="text-align: center;">
                    <thead>
                        <tr class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800" style="text-align: center;">
                            <th class="px-4 py-3">ID</th>
                            <th class="px-4 py-3">Name</th>
                            <th class="px-4 py-3">Image</th>
                            <th class="px-4 py-3">Price</th>
                            <th class="px-4 py-3">Category</th>
                            <th class="px-4 py-3">Discount</th>
                            <th class="px-4 py-3">Warranty</th>
                        </tr>
                    </thead>

                    <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
                        <%
                            ArrayList<Toy> toyList = (ArrayList<Toy>) session.getAttribute("TOY_LIST");
                            if (toyList != null) {
                                for (Toy toy : toyList) {
                                    String base64Image = Base64.getEncoder().encodeToString(toy.getImage());

                        %>
                        <tr class="text-gray-700 dark:text-gray-400">
                            <td class="px-4 py-3">
                                <%=toy.getToyId()%>
                            </td>
                            <td class="px-4 py-3 text-sm">
                                <%=toy.getToyName()%>
                            </td>
                            <td class="px-4 py-3 text-xs">
                                <img src="data:image/jpeg;base64,<%= base64Image%>" alt="Toy Image">
                            </td>
                            <td class="px-4 py-3 get-price center">
                                <%
                                    DecimalFormat vnCurrencyFormat = new DecimalFormat("###,### VNĐ");
                                    String formatPrice = vnCurrencyFormat.format(toy.getPrice());
                                %>
                                <%=formatPrice%>
                                <%-- <%=toy.getPrice()%> VNĐ --%>
                            <td class="px-4 py-3 text-sm">
                                <%=toy.getName_category()%>
                            </td>
                            <td class="px-4 py-3 text-sm">
                                <%=toy.getDiscount()%>
                            </td>
                            <td class="px-4 py-3 text-sm">
                                <%=toy.getWarranty_time()%>
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
                        <div style="text-align: center; color: white; font-size: 24px; font-weight: 600; margin-top: -2%; background-color: darkkhaki; width: 650px; padding-bottom: 25px" id="add-product-form">                    
                            <div>
                                <form id="addProduct" action="AddToyController" method="post" enctype="multipart/form-data">                                        
                                    <button onclick="toggleAddProductForm()" class="close" style="text-align: right">X</button>                                     
                                    <label for="productName">Name</label></br>
                                    <input type="text" id="productName" style="width: 550px" name="productName" required></br>
                                    <label for="image">Image</label></br>
                                    <input type="file" id="image" name="image" style="width: 550px"  required accept="image/*"></br>                                   
                                    <label for="price">Price</label></br>
                                    <input type="number" id="price" style="width: 150px" name="price" required></br>  
                                    <label for="discount">Discount</label></br>
                                    <input type="number" id="discount" name="discount" step="0.01" min="0" max="1" required></br>
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
                                        <p>Không có loại đồ chơi nào</p>
                                        <%
                                            }
                                        %>
                                    </select><br>                                                                  
                                    <label for="warrantyTime">Warranty Time</label></br>
                                    <input type="date" id="warranty" name="warrantyTime" required></br>
                                    <label for="description">Description</label><br>
                                    <textarea id="description" name="description" rows="4" cols="50"></textarea>
                                    </br>    
                                    <input name="userId" type="hidden" value="<%=acc.getUserId()%>">
                                    <button style="background-color: green; border-radius: 30px; padding: 3px 10px; margin-top: 15px" type="button" onclick="submitForm()">Add New Product</button>
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

                    function encodeVietnamese(text) {

                        var vietnameseCharacters = {
                            'á': '&#225;', 'à': '&#224;', 'ả': '&#7843;', 'ã': '&#227;', 'ạ': '&#7841;',
                            'ă': '&#259;', 'ắ': '&#7855;', 'ằ': '&#7857;', 'ẳ': '&#7859;', 'ẵ': '&#7861;', 'ặ': '&#7863;',
                            'â': '&#226;', 'ấ': '&#7845;', 'ầ': '&#7847;', 'ẩ': '&#7849;', 'ẫ': '&#7851;', 'ậ': '&#7853;',
                            'đ': '&#273;',
                            'é': '&#233;', 'è': '&#232;', 'ẻ': '&#7867;', 'ẽ': '&#7869;', 'ẹ': '&#7865;',
                            'ê': '&#234;', 'ế': '&#7871;', 'ề': '&#7873;', 'ể': '&#7875;', 'ễ': '&#7877;', 'ệ': '&#7879;',
                            'í': '&#237;', 'ì': '&#236;', 'ỉ': '&#7881;', 'ĩ': '&#297;', 'ị': '&#7883;',
                            'ó': '&#243;', 'ò': '&#242;', 'ỏ': '&#7887;', 'õ': '&#245;', 'ọ': '&#7885;',
                            'ô': '&#244;', 'ố': '&#7889;', 'ồ': '&#7891;', 'ổ': '&#7893;', 'ỗ': '&#7895;', 'ộ': '&#7897;',
                            'ơ': '&#417;', 'ớ': '&#7899;', 'ờ': '&#7903;', 'ở': '&#7905;', 'ỡ': '&#7905;', 'ợ': '&#7907;',
                            'ú': '&#250;', 'ù': '&#249;', 'ủ': '&#7911;', 'ũ': '&#361;', 'ụ': '&#7909;',
                            'ư': '&#432;', 'ứ': '&#7913;', 'ừ': '&#7915;', 'ử': '&#7917;', 'ữ': '&#7919;', 'ự': '&#7921;',
                            'ý': '&#253;', 'ỳ': '&#7923;', 'ỷ': '&#7925;', 'ỹ': '&#7927;', 'ỵ': '&#7929;',
                            // Chữ hoa
                            'Á': '&#193;', 'À': '&#192;', 'Ả': '&#7842;', 'Ã': '&#195;', 'Ạ': '&#7840;',
                            'Ă': '&#258;', 'Ắ': '&#7854;', 'Ằ': '&#7856;', 'Ẳ': '&#7858;', 'Ẵ': '&#7860;', 'Ặ': '&#7862;',
                            'Â': '&#194;', 'Ấ': '&#7844;', 'Ầ': '&#7846;', 'Ẩ': '&#7848;', 'Ẫ': '&#7850;', 'Ậ': '&#7852;',
                            'Đ': '&#272;',
                            'É': '&#201;', 'È': '&#200;', 'Ẻ': '&#7866;', 'Ẽ': '&#7868;', 'Ẹ': '&#7864;',
                            'Ê': '&#202;', 'Ế': '&#7870;', 'Ề': '&#7872;', 'Ể': '&#7874;', 'Ễ': '&#7876;', 'Ệ': '&#7878;',
                            'Í': '&#205;', 'Ì': '&#204;', 'Ỉ': '&#7880;', 'Ĩ': '&#296;', 'Ị': '&#7882;',
                            'Ó': '&#211;', 'Ò': '&#210;', 'Ỏ': '&#7886;', 'Õ': '&#213;', 'Ọ': '&#7884;',
                            'Ô': '&#212;', 'Ố': '&#7888;', 'Ồ': '&#7890;', 'Ổ': '&#7892;', 'Ỗ': '&#7894;', 'Ộ': '&#7896;',
                            'Ơ': '&#416;', 'Ớ': '&#7898;', 'Ờ': '&#7902;', 'Ở': '&#7904;', 'Ỡ': '&#7904;', 'Ợ': '&#7906;',
                            'Ú': '&#218;', 'Ù': '&#217;', 'Ủ': '&#7910;', 'Ũ': '&#360;', 'Ụ': '&#7908;',
                            'Ư': '&#431;', 'Ứ': '&#7912;', 'Ừ': '&#7914;', 'Ử': '&#7916;', 'Ữ': '&#7918;', 'Ự': '&#7920;',
                            'Ý': '&#221;', 'Ỳ': '&#7922;', 'Ỷ': '&#7924;', 'Ỹ': '&#7926;', 'Ỵ': '&#7928;'
                        };

                        return text.replace(/[^A-Za-z0-9\s]/g, function (char) {
                            return vietnameseCharacters[char] || char;
                        });
                    }

                    function submitForm() {
                        var productNameInput = document.getElementById('productName');
                        var descriptionInput = document.getElementById('description');

                        productNameInput.value = encodeVietnamese(productNameInput.value);
                        descriptionInput.value = encodeVietnamese(descriptionInput.value);

                        document.getElementById('addProduct').submit();
                    }
                </script>
                </html>
