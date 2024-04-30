<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Admin Manager</title>
    <!--JS-->
    <script src="resources/js/core.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <!--Style CSS-->
    <link rel="stylesheet" type="text/css" href="resources/css/core.css" />

    <!-- Bao gồm Leaflet CSS -->
    <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />

    <!-- Bao gồm Leaflet JavaScript -->
    <script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>

</head>
<body>
    <!--Top sidebar-->
    <div class="header"> 
        <div class="header-content">
            <!--Logo and name page-->
            <a href="#" title="Logo">
                <img src="resources/images/ptit_logo.png" alt="logo" class="logo">
            </a>
            <h3 style="margin-left: 100px; top: 20px;">Trang quản trị viên</h3>

            <!--Search-->
            <div class="search">
                <input type="search" name="btnSearch" id="search" class="search-input" placeholder="Search here">
                <span class="search-icon"></span>
            </div>

            <!--Notification-->
            <button class="notification">
                <img src="resources/images/notification.svg">
            </button>

            <!--Setting-->
            <button id="settingButton" class="setting">
                <img src="resources/images/setting.svg">
            </button>

            <button class="country">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 32 32">
                    <rect x="1" y="4" width="30" height="24" rx="4" ry="4" fill="#c93728"></rect>
                    <path fill="#ff5" d="M18.008 16.366L21.257 14.006 17.241 14.006 16 10.186 14.759 14.006 10.743 14.006 13.992 16.366 12.751 20.186 16 17.825 19.249 20.186 18.008 16.366z"></path>
                </svg>
            </button>

            <!--Avatar and username-->
            <button class="admin" onclick="toggleChevron('chevronIcon')">
                <img src="resources/images/admin_VMQ.jpg" alt="Avatar" class="admin-avatar">
                <span class="admin-name">Vũ Mạnh Quân</span>
                <img src="resources/images/chevron-down.svg" class="chevron-icon" id="chevronIcon">
            </button>

        </div>
    </div> 
    <!--End top sidebar-->

    <!--Function-->
    <!--Settings Page-->
    <div id="settingsPage" class="settings-page" style="display: none;">
        <!-- Nội dung của trang cài đặt -->
        <h2>Cài đặt</h2>
        <p>Đây là nơi để bạn tùy chỉnh các cài đặt của trang.</p>
        <!-- Đặt nội dung của trang cài đặt ở đây -->
        <!-- Ví dụ: -->
        <label for="language">Ngôn ngữ:</label>
        <select id="language">
            <option value="en">English</option>
            <option value="vi">Vietnamese</option>
        </select>
        <br>
        <label for="theme">Chủ đề:</label>
        <select id="theme">
            <option value="light">Light</option>
            <option value="dark">Dark</option>
        </select>
    </div>
    

    <!--End function-->

    <!--Left sidebar-->
    <div class="left-side-bar"> 
        <div class="sidebar-menu">
            <ul id="accordion-menu">

                <!--Phân tích hiệu suất-->
                <li class="dropdown">
                    <button class="dropdown-toggle" onclick="toggleChevron('chevronIcon2')">
                        <img src="resources/images/performance-analysis.svg">
                        <span>Phân Tích Hiệu Suất</span>
                        <img src="resources/images/chevron-down.svg" class="chevron-icon" id="chevronIcon2">
                    </button>
                    <ul class="submenu">
                        <li><a href="index.html"><img src="resources/images/dash.svg"> Số Lượng Đơn Đặt Dịch Vụ</a></li>
                        <li><a href="index2.html"><img src="resources/images/dash.svg"> Số Lượng Dịch Vụ Cung Cấp</a></li>
                        <li><a href="index3.html"><img src="resources/images/dash.svg"> Số Lượng Người Tiếp Cận</a></li>
                    </ul>
                </li>

                <!--Quản lý tài khoản người dùng-->
                <li class="dropdown">
                    <button class="dropdown-toggle" onclick="toggleChevron('chevronIcon3')">
                        <img src="resources/images/manager accout.svg">
                        <span>Quản Lý Tài Khoản Người Dùng</span>
                        <img src="resources/images/chevron-down.svg" class="chevron-icon" id="chevronIcon3">
                    </button>
                    <ul class="submenu">
                        <li><a href="index.html"><img src="resources/images/dash.svg"> Số Lượng Tài Khoản Mới</a></li>
                        <li><a href="index2.html"><img src="resources/images/dash.svg"> Tài Khoản Khách Hàng</a></li>
                        <li><a href="index3.html"><img src="resources/images/dash.svg"> Tài Khoản Nhà Cung Cấp</a></li>
                    </ul>
                </li>

                <!--Quản lý giao diện-->
                <li class="dropdown">
                    <button class="dropdown-toggle" onclick="toggleChevron('chevronIcon4')">
                        <img src="resources/images/manager-browser.svg">
                        <span>Quản Lý Giao Diện</span>
                        <img src="resources/images/chevron-down.svg" class="chevron-icon" id="chevronIcon4">
                    </button>
                    <ul class="submenu">
                        <li><a href="index.html"><img src="resources/images/dash.svg"> Thêm / Xóa Tiện Ích</a></li>
                        <li><a href="index2.html"><img src="resources/images/dash.svg"> Bố Cục Giao Diện</a></li>
                    </ul>
                </li>

                <!--Quản lý tài nguyên-->
                <li class="dropdown">
                    <button class="dropdown-toggle" onclick="toggleChevron('chevronIcon5')">
                        <img src="resources/images/manager-database.svg">
                        <span>Quản Lý Tài Nguyên</span>
                        <img src="resources/images/chevron-down.svg" class="chevron-icon" id="chevronIcon5">
                    </button>
                    <ul class="submenu">
                        <li><a href="index.html"><img src="resources/images/dash.svg"> Quản Lý Người Dùng</a></li>
                        <li><a href="index2.html"><img src="resources/images/dash.svg"> Quản Lý Nội Dung</a></li>
                        <li><a href="index2.html"><img src="resources/images/dash.svg"> Quản Lý Hệ Thống</a></li>
                    </ul>
                </li>

                <!--Quản lý tài chính-->
                <li class="dropdown">
                    <button class="dropdown-toggle" onclick="toggleChevron('chevronIcon6')">
                        <img src="resources/images/credit-card.svg">
                        <span>Quản Lý Tài Chính</span>
                        <img src="resources/images/chevron-down.svg" class="chevron-icon" id="chevronIcon6">
                    </button>
                    <ul class="submenu">
                        <li><a href="index.html"><img src="resources/images/dash.svg"> Dịch Vụ Đổi Tiền</a></li>
                        <li><a href="index2.html"><img src="resources/images/dash.svg"> Tài Khoản Ngân Hàng</a></li>
                        <li><a href="index2.html"><img src="resources/images/dash.svg"> Bảng Giá Tiền Tệ</a></li>
                    </ul>
                </li>

                <!--Thông tin liên hệ-->
                <li class="dropdown">
                    <button class="dropdown-toggle" onclick="toggleChevron('chevronIcon7')">
                        <img src="resources/images/mail.svg">
                        <span>Thông Tin Liên Hệ</span>
                        <img src="resources/images/chevron-down.svg" class="chevron-icon" id="chevronIcon7">
                    </button>
                    <ul class="submenu">
                        <li><a href="index.html"><img src="resources/images/dash.svg"> Thông Tin</a></li>
                        <li><a href="index2.html"><img src="resources/images/dash.svg"> Liên Hệ</a></li>
                        <li><a href="index2.html"><img src="resources/images/dash.svg"> Hợp Tác</a></li>
                        <li><a href="index2.html"><img src="resources/images/dash.svg"> Liên Kết Mạng Xã Hội</a></li>
                    </ul>
                </li>

                <!--Hỗ trợ và quản lý-->
                <li class="dropdown">
                    <button class="dropdown-toggle" onclick="toggleChevron('chevronIcon8')">
                        <img src="resources/images/manager-support-.svg">
                        <span>Hỗ Trợ Và Quản Lý</span>
                        <img src="resources/images/chevron-down.svg" class="chevron-icon" id="chevronIcon8">
                    </button>
                    <ul class="submenu">
                        <li><a href="index.html"><img src="resources/images/dash.svg"> Trợ Giúp</a></li>
                        <li><a href="index2.html"><img src="resources/images/dash.svg"> Thông Báo / Hòm Thư</a></li>
                        <li><a href="index2.html"><img src="resources/images/dash.svg"> Cấp Quyền Truy Cập</a></li>
                        <li><a href="index2.html"><img src="resources/images/dash.svg"> Theo Dõi / Quản Lý Đơn</a></li>
                        <li><a href="index2.html"><img src="resources/images/dash.svg"> Quản Lý Thông Tin Tour</a></li>
                        <li><a href="index2.html"><img src="resources/images/dash.svg"> Thông Kê / Báo Cáo Về Hoạt Động Trang Web</a></li>
                        <li><a href="index2.html"><img src="resources/images/dash.svg"> Quản Lý Nội Dung Và Thông Báo Trên Trang Web</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>  
    <!--End top sidebar-->

    <!--Main container-->
    <div class="main-container">
        <!--Map-->
        <div id="map" style="width: 100%; height: 200px;"></div>
        <script>
            var map = L.map('map').setView([21.0285, 105.8542], 13); // Tọa độ Hà Nội: [21.0285, 105.8542], với mức độ zoom mặc định là 13

            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
            }).addTo(map);

            // Thêm một điểm đánh dấu tại Hà Nội
            L.marker([21.0285, 105.8542]).addTo(map)
                .bindPopup('Hà Nội')
                .openPopup();
        </script>
        <!--End map-->

        <!--Chart container 1-->
        <div class="chart-container-1">
            <!--Biểu đồ cột (Bar Chart)-->
            <div class="bar-chart">
                <canvas id="barChart"></canvas>
                <div class="chart-title">Bar Chart</div>
            </div>
            <script>
                var ctx = document.getElementById('barChart').getContext('2d');
                var barChart = new Chart(ctx, {
                    type: 'bar',
                    data: {
                        labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
                        datasets: [{
                            label: 'Revenue1',
                            data: [1000, 2000, 1500, 2500, 1800, 2200, 3000],
                            backgroundColor: 'rgba(255, 99, 132, 0.2)',
                            borderColor: 'rgba(255, 99, 132, 1)',
                            borderWidth: 1
                        }, {
                            label: 'Revenue2',
                            data: [2000, 2700, 1800, 3000, 1500, 1800, 2500],
                            backgroundColor: 'rgba(54, 162, 235, 0.2)',
                            borderColor: 'rgba(54, 162, 235, 1)',
                            borderWidth: 1
                        }]
                    },
                    options: {
                        scales: {
                            y: {
                                beginAtZero: true
                            }
                        }
                    }
                });
            </script>      
    
            <!--Biểu đồ bánh (Pie Chart)-->
            <div class="pie-chart">
                <canvas id="pieChart" width="200" height="200"></canvas>
                <div class="chart-title">Pie Chart</div>
            </div>
            <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
            <script>
                var ctx = document.getElementById('pieChart').getContext('2d');
                var pieChart = new Chart(ctx, {
                    type: 'pie',
                    data: {
                        labels: ['Red', 'Blue', 'Yellow'],
                        datasets: [{
                            label: 'My First Dataset',
                            data: [300, 50, 100],
                            backgroundColor: ['rgb(255, 99, 132)', 'rgb(54, 162, 235)', 'rgb(255, 205, 86)'],
                            hoverOffset: 4
                        }]
                    },
                    options: {
                        radius: 110,
                        cutout: '50%',
                    }
                });
            </script>
        </div>
        <!--End chart container 1-->

        <!--Chart-container-2-->
        <div class="chart-container-2">
            <!--Biểu đồ dòng (Line Chart)-->
            <div class="line-chart">
                <canvas id="lineChart" width="100" height="50"></canvas>
                <div class="chart-title">Line Chart</div>
            </div>
            <script>
                var ctx = document.getElementById('lineChart').getContext('2d');
                var lineChart = new Chart(ctx, {
                    type: 'line',
                    data: {
                        labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
                        datasets: [{
                            label: 'Revenue',
                            data: [1000, 2000, 1500, 2500, 1800, 2200, 3000],
                            fill: false,
                            borderColor: 'rgba(75, 192, 192, 1)',
                            tension: 0.1
                        },
                        {
                            label: 'Profit',
                            data: [800, 1500, 1200, 200, 1000, 1800, 2500],
                            fill: false,
                            borderColor: 'rgba(255, 99, 132, 1)',
                            tension: 0.1
                        },
                        {
                            label: 'Expenses',
                            data: [2000, 1000, 800, 1500, 1200, 1400, 1800],
                            fill: false,
                            borderColor: 'rgba(54, 162, 235, 1)',
                            tension: 0.1
                        }]
                    },
                    options: {
                        scales: {
                            y: {
                                beginAtZero: true
                            }
                        }
                    }
                });
            </script>

            <!--Biểu đồ cột nằm ngang (Horizontal Bar Chart)-->
            <div class="horizontal-bar-chart">
                <canvas id="horizontalBarChart"></canvas> 
                <div class="chart-title">Horizontal Bar Chart</div>
            </div>
            <script>
                var ctx = document.getElementById('horizontalBarChart').getContext('2d'); 
                var barChart = new Chart(ctx, {
                    type: 'bar',
                    data: {
                        labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
                        datasets: [{
                            label: 'Revenue1',
                            data: [1000, 2000, 1500, 2500, 1800, 2200, 3000],
                            backgroundColor: 'rgba(255, 99, 132, 0.2)',
                            borderColor: 'rgba(255, 99, 132, 1)',
                            borderWidth: 1
                        }]
                    },
                    options: {
                        indexAxis: 'y',
                        scales: {
                            y: {
                                beginAtZero: true
                            }
                        }
                    }
                });
            </script>   
        </div>
        <!--End chart-container-2-->

        <!--Chart container-3-->
        <div class="chart-container-3">
            <!--Biểu đồ phân tán (Scatter Plot)-->
            <div class="scatter-plot">
                <canvas id="scatterChart"></canvas>
                <div class="chart-title">Scatter Plot</div>
            </div>
            <script>
                var ctx = document.getElementById('scatterChart').getContext('2d');
        
                // Tạo mảng chứa 20 điểm tọa độ
                var dataPoints = [];
                for (var i = 0; i < 20; i++) {
                    var x = Math.floor(Math.random() * 50); // Giá trị x ngẫu nhiên từ 0 đến 49
                    var y = Math.floor(Math.random() * 50); // Giá trị y ngẫu nhiên từ 0 đến 49
                    dataPoints.push({ x: x, y: y });
                }
        
                var scatterChart = new Chart(ctx, {
                    type: 'scatter',
                    data: {
                        datasets: [{
                            label: 'Random Data Points',
                            data: dataPoints,
                            backgroundColor: 'rgba(255, 99, 132, 0.5)',
                            pointRadius: 5
                        }, {
                            label: 'y = x',
                            data: [{ x: 0, y: 0 }, { x: 50, y: 50 }],
                            borderColor: 'rgba(54, 162, 235, 0.5)',
                            borderWidth: 2,
                            fill: false,
                            showLine: true
                        }]
                    },
                    options: {
                        scales: {
                            x: {
                                type: 'linear',
                                position: 'bottom'
                            },
                            y: {
                                type: 'linear',
                                position: 'left'
                            }
                        }
                    }
                });
            </script>

            <!--Biểu đồ dạng cột chồng (Stacked Bar Chart)-->
            <div class="stacked-bar-chart">
                <canvas id="stackedBarChart"></canvas>
                <div class="chart-title">Stacked Bar Chart</div>
            </div>
            <script>
                var ctx = document.getElementById('stackedBarChart').getContext('2d');
                var stackedBarChart = new Chart(ctx, {
                    type: 'bar',
                    data: {
                        labels: ['January', 'February', 'March', 'April', 'May'],
                        datasets: [{
                            label: 'Tour Type A',
                            data: [10, 20, 30, 40, 50],
                            backgroundColor: 'rgba(255, 99, 132, 0.5)'
                        }, {
                            label: 'Tour Type B',
                            data: [15, 25, 35, 45, 55],
                            backgroundColor: 'rgba(54, 162, 235, 0.5)'
                        }]
                    },
                    options: {
                        scales: {
                            x: { stacked: true },
                            y: { stacked: true }
                        }
                    }
                });
            </script>
        </div>
        <!--End chart container-3-->

        <!--Calendar-->
        <div class="calendar">
            <iframe src="https://calendar.google.com/calendar/embed?height=450&wkst=1&ctz=Asia%2FHo_Chi_Minh&bgcolor=%23ffffff&showTitle=0&showTz=0&showCalendars=0&showPrint=0&src=dnVtYW5ocXVhbjEzMDdAZ21haWwuY29t&src=YWRkcmVzc2Jvb2sjY29udGFjdHNAZ3JvdXAudi5jYWxlbmRhci5nb29nbGUuY29t&src=Y2xhc3Nyb29tMTA4NjUwMjY2NjQzNTUxMTAwMzE1QGdyb3VwLmNhbGVuZGFyLmdvb2dsZS5jb20&src=dmkudmlldG5hbWVzZSNob2xpZGF5QGdyb3VwLnYuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&color=%23039BE5&color=%2333B679&color=%23202124&color=%230B8043" style="border:solid 1px #777" width="900" height="450" frameborder="0" scrolling="no"></iframe>
        </div>
        <!--End calendar-->
    </div>
     <!--End main container-->

     <!--Right side bar-->
     <div class="right-side-bar">
        <div class="right-side-container-chart">
            <!--Biểu đồ radar (Radar Chart)-->
            <div class="radar-chart">
                <canvas id="radarChart"></canvas>
                <div class="chart-title">Rader Chart</div>
            </div>

            <script>
                var ctx = document.getElementById('radarChart').getContext('2d');
                var radarChart = new Chart(ctx, {
                    type: 'radar',
                    data: {
                        labels: ['A', 'B', 'C', 'D', 'E'],
                        datasets: [{
                            label: 'Tour 1',
                            data: [80, 70, 90, 85, 75],
                            backgroundColor: 'rgba(255, 99, 132, 0.5)'
                        }, {
                            label: 'Tour 2',
                            data: [20, 50, 85, 90, 80],
                            backgroundColor: 'rgba(54, 162, 235, 0.5)'
                        }]
                    },
                    options: {
                        elements: { line: { tension: 0, borderWidth: 3 }},
                        scales: { r: { beginAtZero: true }}
                    }
                });
            </script>

            <!--Biểu đồ bánh (Pie Chart)-->
            <div class="pie-chart-2">
                <canvas id="pieChart2"></canvas>
                <div class="chart-title">Pie Chart 2</div>
            </div>
            <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
            <script>
                var ctx = document.getElementById('pieChart2').getContext('2d');
                var pieChart = new Chart(ctx, {
                    type: 'pie',
                    data: {
                        labels: ['Grenn', 'Black', 'Violet'],
                        datasets: [{
                            label: 'My First Dataset',
                            data: [87, 120, 53],
                            backgroundColor: ['rgb(144, 238, 144)', 'rgb(0, 0, 0)', 'rgb(128, 0, 128)'],
                            hoverOffset: 4
                        }]
                    },
                    options: {
                        radius: 80,
                    }
                });
            </script>

        </div>
    </div>
    <!--End right side bar-->
</body> 
</html>