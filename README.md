# ST10445158_CLDV6211_POE_PART1


📌 **Project Name:** ST10445158_CLDV6211_POE_PART1  
📌 **Developed By:** Letlhogonolo Kgatshe  
📌 **Technologies Used:**  
- ASP.NET Core MVC  
- Entity Framework Core  
- Azure SQL Database  
- Bootstrap (UI Styling)  
- Razor Views (CRUD Operations)  

---

## **📌 Project Overview**  
ST10445158_CLDV6211_POE_PART1 is an **event management system** that allows users to manage venues, events, and bookings efficiently. The application provides full **CRUD (Create, Read, Update, Delete) operations** for each entity using ASP.NET Core MVC and Entity Framework Core.

---

## **📌 Features**  
✅ **Venue Management:** Add, edit, delete, and view venues  
✅ **Event Management:** Add, edit, delete, and view events  
✅ **Booking System:** Users can book venues for events  
✅ **Responsive UI:** Bootstrap-based frontend  
✅ **Database Integration:** Stores all event and booking data in Azure SQL Database  
✅ **Deployed on Azure:** Accessible online via an Azure App Service  

---

## **📌 Installation & Setup**  

### **🔹 Prerequisites**  
Before running the project, ensure you have:  
- .NET SDK (latest version)  
- Visual Studio 2022 or later  
- SQL Server / Azure SQL Database  
- Azure account for deployment  

---

### **🔹 Step 1: Clone the Repository**  
```sh
git clone https://github.com/VCCT-CLDV6211-2025-G1/ST10445158_CLDV6211_POE_PART1.git
cd ST10445158_CLDV6211_POE_PART1
```

---

### **🔹 Step 2: Configure Database Connection**  
1️⃣ **Open** `appsettings.json`  
2️⃣ **Modify the `ConnectionStrings` section**  

```json
"ConnectionStrings": {
  "DefaultConnection": "Server=tcp:your-server.database.windows.net,1433;
  Initial Catalog=EventEaseDB;
  Persist Security Info=False;
  User ID=your-username;
  Password=your-password;
  MultipleActiveResultSets=False;
  Encrypt=True;
  TrustServerCertificate=False;
  Connection Timeout=30;"
}
```

---

### **🔹 Step 3: Apply Migrations & Seed Data**  
Run the following commands in the **Package Manager Console**:  

```sh
dotnet ef database update
```
💡 This creates the necessary tables in the database.

---

### **🔹 Step 4: Run the Application**  
Start the application locally using:  
```sh
dotnet run
```
Visit `http://localhost:5000` in your browser.  

---

## **📌 Deployment to Azure**  
### **Step 1: Create Azure Resources**  
1️⃣ **Go to Azure Portal → Create Resource → App Service**  
2️⃣ **Create an Azure SQL Database**  
3️⃣ **Publish the ASP.NET Core App to Azure**  

### **Step 2: Publish to Azure via Visual Studio**  
1️⃣ Right-click the project in **Visual Studio**  
2️⃣ Select **Publish → Azure App Service → Create New**  
3️⃣ Choose the **Azure SQL Database** for your connection string  
4️⃣ Click **Publish**  

🎉 Your app is now live on Azure!  

---

## **📌 Usage Guide**  
### **Venues Module**
📌 Navigate to `/Venues` to view, add, edit, or delete venues.

### **Events Module**
📌 Navigate to `/Events` to manage events.

### **Bookings Module**
📌 Navigate to `/Bookings` to make and manage bookings.

---

## **📌 File Structure**  
```
📂 EventEase
│── 📂 Controllers  
│   ├── HomeController.cs  
│   ├── VenuesController.cs  
│   ├── EventsController.cs  
│   ├── BookingsController.cs  
│  
│── 📂 Models  
│   ├── Venue.cs  
│   ├── Event.cs  
│   ├── Booking.cs  
│  
│── 📂 Views  
│   ├── Home (Index.cshtml, About.cshtml, Contact.cshtml)  
│   ├── Venues (CRUD Views)  
│   ├── Events (CRUD Views)  
│   ├── Bookings (CRUD Views)  
│  
│── 📂 Data  
│   ├── ApplicationDbContext.cs  
│  
│── 📂 Migrations  
│  
│── appsettings.json  
│── Program.cs  
│── Startup.cs  
│── README.md  
```

---

## **📌 Support**  
📧 Email: [Tlhogikgatshe@gmail.com](mailto:Tlhogikgatshe@gmail.com)  
🔗 GitHub: [Letlhogonolo-Kgatshe](https://github.com/VCCT-CLDV6211-2025-G1/ST10445158_CLDV6211_POE_PART1.git))  

🚀 **Enjoy using EventEase!** 🚀
