<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Ecommerce_Akash_Store.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="style.css" rel="stylesheet" />
    <title>Sign Up</title>
</head>
<body>
    <div class="w-full h-screen bg-slate-200 flex justify-center items-center ">
        <form id="form1" runat="server" class="w-[600px] h-screen bg-white p-4 flex flex-col  gap-4 px-12" >
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

            <h1 class="text-4xl font-bold text-[#00b4d8] mx-auto">Sign Up</h1>

            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="font-bold text-blue-600/50 text-center" OnClick="LinkButton1_Click">Alredy have  an account?</asp:LinkButton>

            <div class=" flex flex-row  justify-between items-center mt-8 ">

                <asp:Label CssClass="text-lg font-bold" ID="Label1" runat="server" Text="Full Name:"></asp:Label>
                <asp:TextBox CssClass="bg-slate-200 px-6 py-2 border-2 border-gray-300 rounded-lg" ID="TextBox1" runat="server" placeholder="Enter Full Name" required></asp:TextBox>
            </div>

            <div class=" flex flex-row  justify-between items-center ">

                <asp:Label ID="Label2"  CssClass="text-lg font-bold" runat="server" Text="Email ID:"></asp:Label>
                <asp:TextBox ID="TextBox2" CssClass="bg-slate-200 px-6 py-2 border-2 border-gray-300 rounded-lg" runat="server" placeholder="Enter Email" TextMode="Email" required></asp:TextBox>
            </div>

            <div class=" flex flex-row  justify-between items-center ">

                <asp:Label ID="Label3"  CssClass="text-lg font-bold" runat="server" Text="Phone Number:"></asp:Label>
                <asp:TextBox ID="TextBox3" CssClass="bg-slate-200 px-6 py-2 border-2 border-gray-300 rounded-lg" runat="server" placeholder="Enter Number" required></asp:TextBox>

            </div>

            <div class=" flex flex-row  justify-between items-center ">

                <asp:Label ID="Label4"  CssClass="text-lg font-bold" runat="server" Text="Password:"></asp:Label>
                <asp:TextBox ID="TextBox4" CssClass="bg-slate-200 px-6 py-2 border-2 border-gray-300 rounded-lg" runat="server" placeholder="Set Password" TextMode="Password" required></asp:TextBox>
            </div>
            <div class=" flex flex-row  justify-between items-center ">

                <asp:Label ID="Label5"  CssClass="text-lg font-bold" runat="server" Text="Confirm Password:"></asp:Label>
                <asp:TextBox ID="TextBox5" CssClass="bg-slate-200 px-6 py-2 border-2 border-gray-300 rounded-lg" runat="server" placeholder="Confirm Password" TextMode="Password" required></asp:TextBox>
            </div>
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
             <div class=" flex flex-row  justify-between items-center gap-2">
             <asp:Label ID="Label6"  CssClass="text-lg font-bold" runat="server" Text="Select Address:"></asp:Label>
            <asp:DropDownList ID="state"  CssClass="bg-slate-200 w-[150px] h-8 border-2 border-gray-300 rounded-lg" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem Selected>---Select State---</asp:ListItem>
                <asp:ListItem>Punjab</asp:ListItem>
                <asp:ListItem>Delhi</asp:ListItem>
                <asp:ListItem>Bihar</asp:ListItem>
                <asp:ListItem>Haryana</asp:ListItem>
                <asp:ListItem>Uttar Pradesh</asp:ListItem>
                
            </asp:DropDownList>
            <asp:DropDownList  CssClass="bg-slate-200 w-[150px] h-8  border-2 border-gray-300 rounded-lg" runat="server" ID="city">
                <asp:ListItem>---Select City---</asp:ListItem>
            </asp:DropDownList>
            

            </div>
                        </ContentTemplate>
                  </asp:UpdatePanel>

            <div class=" flex flex-row  justify-between items-center ">

                <asp:Label ID="Label7"  CssClass="text-lg font-bold" runat="server" Text="Pincode:"></asp:Label>
                <asp:TextBox ID="TextBox6" CssClass="bg-slate-200 px-6 py-2 border-2 border-gray-300 rounded-lg" runat="server" placeholder="Enter Pincode" TextMode="Number" ></asp:TextBox>

            </div>

            <asp:Button ID="Button1" runat="server" Text="Sign Up" CssClass="mt-[15px] w-[50%] py-2 font-bold text-lg mx-auto bg-gradient-to-r from-violet-500 to-fuchsia-500 rounded-xl" OnClick="Button1_Click" />

        </form>
    </div>
</body>
</html>
