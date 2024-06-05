<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="Ecommerce_Akash_Store.Signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Sign In </title>
</head>
<body>
    <div class="w-full h-screen bg-slate-200 flex justify-center items-center ">
        <form id="form1" runat="server" class="w-[500px]  bg-white p-4 flex flex-col  gap-6 px-12">

            <h1 class="text-4xl font-bold text-[#00b4d8] mx-auto">Sign In</h1>

            <div class=" flex flex-row  justify-between items-center mt-8 ">

                <asp:Label CssClass="text-lg font-bold" ID="lblsignin" runat="server" Text="Email/Phone:"></asp:Label>
                <asp:TextBox CssClass="bg-slate-200 px-6 py-2 border-2 border-gray-300 rounded-lg" ID="Textlogin" runat="server" placeholder="Email or Phone Number" required></asp:TextBox>
            </div>

            <div class=" flex flex-row  justify-between items-center ">

                <asp:Label ID="lblpassword" CssClass="text-lg font-bold" runat="server" Text="Your Password:"></asp:Label>
                <asp:TextBox ID="Textpassword" CssClass="bg-slate-200 px-6 py-2 border-2 border-gray-300 rounded-lg" runat="server" placeholder="Enter Your Password" TextMode="Password" required></asp:TextBox>
            </div>

            <div class="flex justify-center items-center flex-col">

                <asp:Button ID="Button1" runat="server" Text="Sign In" CssClass="mt-[15px] w-[50%] py-3 font-bold text-lg mx-auto bg-gradient-to-r from-violet-500 to-fuchsia-500 rounded-xl" OnClick="Button1_Click" />

                <div class="mt-8">
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="font-bold text-blue-600/50" OnClick="LinkButton1_Click">Create New Account / </asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="font-bold text-blue-600/50">Forgot Password ?</asp:LinkButton>

                    </div>

            </div>

        </form>
    </div>
</body>
</html>
