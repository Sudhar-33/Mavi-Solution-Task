


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mavi Solution</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

body{
    background:#020817;
    color:white;
}

html{
    scroll-behavior:smooth;
}

.navbar{
    width:100%;
    height:90px;
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:0 70px;
    border-bottom:1px solid rgba(255,255,255,0.08);
    background:#020817;
    position:sticky;
    top:0;
    z-index:1000;
}

.logo{
    display:flex;
    align-items:center;
    gap:15px;
}

.logo h1{
    font-size:42px;
    font-weight:800;
    background:linear-gradient(to right,#2563eb,#4ade80);
    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;
}

.logo span{
    color:#4ade80;
}

.nav-links{
    display:flex;
    gap:40px;
    align-items:center;
}

.nav-links a{
    text-decoration:none;
    color:#cbd5e1;
    font-size:14px;
    letter-spacing:2px;
    font-weight:600;
    transition:0.3s;
}

.nav-links a:hover{
    color:#38bdf8;
}

.contact-btn{
    padding:15px 35px;
    border:none;
    border-radius:14px;
    background:linear-gradient(to right,#34d399,#38bdf8);
    color:black;
    font-weight:700;
    letter-spacing:2px;
    cursor:pointer;
}

.hero{
    width:100%;
    min-height:100vh;
    padding:80px 70px;
    background:radial-gradient(circle at center,#082f49 0%,#020617 55%);
}

.tag{
    display:inline-block;
    padding:12px 24px;
    border-radius:30px;
    border:1px solid rgba(74,222,128,0.3);
    background:rgba(74,222,128,0.08);
    color:#4ade80;
    font-size:15px;
    font-weight:600;
    letter-spacing:2px;
    margin-bottom:45px;
}

.hero h1{
    font-size:85px;
    line-height:1.05;
    font-weight:800;
    max-width:1300px;
    background:linear-gradient(to right,#06b6d4,#38bdf8,#ffffff);
    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;
}

.highlight{
    color:white;
    -webkit-text-fill-color:white;
}

.hero p{
    margin-top:40px;
    font-size:23px;
    line-height:1.8;
    color:#e2e8f0;
    max-width:1200px;
}

.blue{
    color:#38bdf8;
    font-weight:700;
}

.green{
    color:#4ade80;
    font-weight:700;
}

.hero-buttons{
    margin-top:45px;
    display:flex;
    gap:25px;
}

.primary-btn{
    padding:18px 40px;
    border:none;
    border-radius:14px;
    background:linear-gradient(to right,#0ea5e9,#22c55e);
    color:white;
    font-size:16px;
    font-weight:600;
    cursor:pointer;
}

.secondary-btn{
    padding:18px 40px;
    border:1px solid rgba(255,255,255,0.2);
    border-radius:14px;
    background:transparent;
    color:white;
    font-size:16px;
    font-weight:600;
    cursor:pointer;
}

.section{
    padding:100px 70px;
}

.section-title{
    text-align:center;
    margin-bottom:60px;
}

.section-title h2{
    font-size:52px;
    margin-bottom:15px;
}

.section-title p{
    color:#94a3b8;
    font-size:18px;
}

.services{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(300px,1fr));
    gap:30px;
}

.card{
    background:#0f172a;
    padding:35px;
    border-radius:22px;
    transition:0.4s;
    border:1px solid rgba(255,255,255,0.05);
}

.card:hover{
    transform:translateY(-10px);
    border-color:#0ea5e9;
}

.card h3{
    margin-top:20px;
    font-size:28px;
}

.card p{
    margin-top:15px;
    line-height:1.8;
    color:#cbd5e1;
}

.icon{
    width:70px;
    height:70px;
    border-radius:18px;
    background:linear-gradient(to right,#0ea5e9,#22c55e);
    display:flex;
    justify-content:center;
    align-items:center;
    font-size:28px;
}

.employee-section{
    background:#07111f;
}

.employee-table{
    width:100%;
    border-collapse:collapse;
    margin-top:40px;
    overflow:hidden;
    border-radius:20px;
}

.employee-table th{
    background:#0ea5e9;
    padding:20px;
    text-align:left;
}

.employee-table td{
    padding:18px;
    background:#0f172a;
    border-bottom:1px solid rgba(255,255,255,0.06);
}

.edit-btn{
    padding:10px 18px;
    border:none;
    border-radius:10px;
    background:#22c55e;
    color:white;
    cursor:pointer;
}

.delete-btn{
    padding:10px 18px;
    border:none;
    border-radius:10px;
    background:#ef4444;
    color:white;
    cursor:pointer;
}

.stats{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
    gap:25px;
    margin-top:50px;
}

.stat-box{
    background:#0f172a;
    padding:40px;
    border-radius:20px;
    text-align:center;
}

.stat-box h2{
    font-size:55px;
    color:#38bdf8;
}

.stat-box p{
    margin-top:10px;
    color:#cbd5e1;
}

.footer{
    background:#01040d;
    padding:40px;
    text-align:center;
    color:#94a3b8;
}

@media(max-width:768px){

.navbar{
    flex-direction:column;
    height:auto;
    padding:20px;
    gap:20px;
}

.nav-links{
    flex-wrap:wrap;
    justify-content:center;
}

.hero{
    padding:50px 25px;
}

.hero h1{
    font-size:48px;
}

.hero p{
    font-size:18px;
}

.section{
    padding:70px 25px;
}

.section-title h2{
    font-size:36px;
}

.employee-table{
    display:block;
    overflow-x:auto;
}

}

</style>

</head>
<body>

<nav class="navbar">

    <div class="logo">
        <h1>M</h1>
        <h2 style="font-size:50px;color:#38bdf8;font-weight:800;">
            Ma<span>Vi</span>
        </h2>
    </div>

    <div class="nav-links">
        <a href="index.jsp">HOME</a>
        <a href="#services">SERVICES</a>
        <a href="#employees">EMPLOYEES</a>
        <a href="login.jsp">LOGIN</a>

        <button class="contact-btn">
            CONTACT
        </button>
    </div>

</nav>

<section class="hero">

    <div class="tag">
        ● RELIABILITY PROTOCOLS ACTIVE
    </div>

    <h1>
        We help companies manage employees and build scalable digital solutions.
    </h1>

    <p>
        Mavi Solution provides powerful employee management systems with modern web technologies.
        We create <span class="blue">Fast</span>,
        <span class="highlight">Secure</span>, and
        <span class="green">Scalable</span> enterprise applications.
    </p>

    <div class="hero-buttons">
        <button class="primary-btn">Get Started</button>
        <button class="secondary-btn">View Employees</button>
    </div>

</section>

<section class="section" id="services">

    <div class="section-title">
        <h2>Our Services</h2>
        <p>Enterprise-level digital and employee management solutions.</p>
    </div>

    <div class="services">

        <div class="card">
            <div class="icon">💻</div>
            <h3>Web Development</h3>
            <p>
                Responsive and modern web applications using JSP, Servlets, Java, and MySQL.
            </p>
        </div>

        <div class="card">
            <div class="icon">👨‍💼</div>
            <h3>Employee Management</h3>
            <p>
                Manage employee details, salary, departments, and records with CRUD operations.
            </p>
        </div>

        <div class="card">
            <div class="icon">🔒</div>
            <h3>Secure Systems</h3>
            <p>
                Secure authentication and database management for enterprise applications.
            </p>
        </div>

    </div>

</section>

<section class="section" id="features">

    <div class="section-title">
        <h2>Why Choose Mavi Solution?</h2>
        <p>
            We build innovative and scalable software solutions for modern businesses.
        </p>
    </div>

    <div class="services">

        <div class="card">
            <div class="icon">⚡</div>

            <h3>High Performance</h3>

            <p>
                Our applications are optimized for speed,
                scalability, and reliability using modern
                technologies and best coding practices.
            </p>
        </div>

        <div class="card">
            <div class="icon">☁</div>

            <h3>Cloud Integration</h3>

            <p>
                We integrate cloud-based services to improve
                performance, storage, and accessibility for
                enterprise applications.
            </p>
        </div>

        <div class="card">
            <div class="icon">🛡</div>

            <h3>Secure Systems</h3>

            <p>
                Security-first architecture with strong
                authentication, encrypted data handling,
                and secure backend systems.
            </p>
        </div>

    </div>

</section>

<!-- About Section -->

<section class="section" style="background:#07111f;">

    <div class="section-title">

        <h2>About Mavi Solution</h2>

        <p>
            Delivering innovative digital transformation
            solutions for startups and enterprises.
        </p>

    </div>

    <div style="
        display:grid;
        grid-template-columns:repeat(auto-fit,minmax(350px,1fr));
        gap:40px;
        align-items:center;
    ">

        <div>

            <h1 style="
                font-size:55px;
                margin-bottom:25px;
                color:#38bdf8;
            ">
                We Build Future-Ready Applications
            </h1>

            <p style="
                color:#cbd5e1;
                line-height:2;
                font-size:18px;
            ">
                Mavi Solution specializes in building
                enterprise-grade web applications,
                employee management systems, cloud
                platforms, and scalable backend services.
                Our goal is to help businesses simplify
                operations through technology.
            </p>

        </div>

        <div style="
            background:#0f172a;
            padding:50px;
            border-radius:24px;
        ">

            <div style="margin-bottom:35px;">

                <h2 style="font-size:42px;color:#4ade80;">
                    10+
                </h2>

                <p style="color:#cbd5e1;">
                    Years of Experience
                </p>

            </div>

            <div style="margin-bottom:35px;">

                <h2 style="font-size:42px;color:#38bdf8;">
                    120+
                </h2>

                <p style="color:#cbd5e1;">
                    Successful Projects
                </p>

            </div>

            <div>

                <h2 style="font-size:42px;color:#facc15;">
                    99%
                </h2>

                <p style="color:#cbd5e1;">
                    Client Satisfaction
                </p>

            </div>

        </div>

    </div>

</section>

<!-- CTA Section -->

<section class="section">

    <div style="
        background:linear-gradient(to right,#0ea5e9,#22c55e);
        padding:70px;
        border-radius:30px;
        text-align:center;
    ">

        <h1 style="
            font-size:60px;
            margin-bottom:25px;
        ">
            Ready to Transform Your Business?
        </h1>

        <p style="
            font-size:22px;
            margin-bottom:35px;
        ">
            Build modern and scalable applications
            with Mavi Solution.
        </p>

        <button style="
            padding:18px 40px;
            border:none;
            border-radius:14px;
            background:white;
            color:black;
            font-size:16px;
            font-weight:700;
            cursor:pointer;
        ">
            Get Started
        </button>

    </div>

</section>

<footer class="footer">
    © 2026 Mavi Solution. All Rights Reserved.
</footer>

</body>
</html>



