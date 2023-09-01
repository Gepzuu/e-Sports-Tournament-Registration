<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterT.aspx.cs" Inherits="IPTPROJ.RegisterT" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Team</title>
    <link href="Stylesheet/StyleSheet2.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style2 {
            margin-left: 0px;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: 18px;
           
             background-color:black;
            color:#ffea00;
            border-radius:3px;
            cursor:pointer;
           
        }
        .auto-style3 {
            margin-left: 12px;
             background: transparent;
             color:#ffea00;
             font-size:18px;
             letter-spacing:1px;
             border: none;
           
             border-left: 2px solid #ffea00;
             text-align:center;
             font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            
             
            
        }
        .auto-style4 {
            text-align: center;
             color:#edf2f4;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style7 {
             height: 100vh;
             background-image: linear-gradient(rgba(0, 0, 0, 0.527),rgba(0, 0, 0, 0.5)), url('../img/tgb2.jpg');
             background-attachment: fixed;
            background-size: cover;
            text-align: center;
        }

        .insertbutton{
            background:transparent;
            color:#edf2f4;
            border-radius:3px;
            
            height:20px;
            width:100px;
            cursor:pointer;
            border:none;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-weight:bold;
            font-size:16px;  
        }


   
        .search{
            margin-left: 12px;
             background: transparent;
             color:#ffea00;
             font-size:18px;
             letter-spacing:1px;
             border:1px solid ;
              border-radius:50px;
             text-align:center;
             font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }


        .auto-style9 {
           
            background:transparent;
            color:#edf2f4;
            border-radius:3px;
            text-decoration:underline;
            height:20px;
            width:100px;
            cursor:pointer;
            border:none;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-weight:bold;
            font-size:16px;  
        }

        .auto-style11 {
            text-align: center;
           
        }

        .auto-style12 {
            text-align: left;
        }
        .auto-style13 {
            color: #FFFFFF;
            margin-left: 133px;
          
        }

        .auto-style14 {
            border-style: solid;
            border-color: inherit;
            border-width: 1px;
            margin-left: 0px;
            background: transparent;
            color: #ffea00;
            font-size: 18px;
            letter-spacing: 1px;
            border-radius: 50px;
            text-align: center;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }

        </style>
</head>
<body class="top">
   
     
    <form id="form1" runat="server">
        <div class="container">
        <h1>&nbsp;&nbsp;&nbsp; Team Registration✍</h1>
            <p>&nbsp;</p>
        <p>
            Email Address<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtemail" ErrorMessage="Email is empty" ForeColor="Red" ValidationGroup="InsertValidation"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid email format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="InsertValidation"></asp:RegularExpressionValidator>
            </p>
            <p>
                <asp:TextBox ID="txtemail" runat="server" CssClass="auto-style3" Height="30px" Width="742px"></asp:TextBox>
        </p>
            <p class="auto-style12">
                Team ID:<asp:TextBox ID="txtid" runat="server" CssClass="auto-style3" Height="30px" Width="123px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtid" ErrorMessage="Team ID is empty" ForeColor="Red" ValidationGroup="InsertValidation"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtid" ErrorMessage="This field will accept numbers only" ForeColor="Red" ValidationExpression="\d+" ValidationGroup="InsertValidation"></asp:RegularExpressionValidator>
            </p>
            <p>
                Team Captain Name</p>
            <p>
                <asp:TextBox ID="txtname" runat="server" CssClass="auto-style3" Height="30px" Width="485px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Captain name is empty" ForeColor="Red" ValidationGroup="InsertValidation"></asp:RequiredFieldValidator>
        </p>
            <p>
                Team Name</p>
            <p>
                <asp:TextBox ID="txtteam" runat="server" CssClass="auto-style3" Height="30px" Width="485px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtteam" ErrorMessage="Team Name is empty" ForeColor="Red" ValidationGroup="InsertValidation"></asp:RequiredFieldValidator>
        </p>
            <p>
                Contact Number<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtcontact" ErrorMessage="This field will accept numbers only" ForeColor="Red" ValidationExpression="\d+" ValidationGroup="InsertValidation"></asp:RegularExpressionValidator>
            </p>
            <p>
                <asp:TextBox ID="txtcontact" runat="server" CssClass="auto-style3" Height="30px" Width="229px" MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcontact" ErrorMessage="Contact  Number is empty" ForeColor="Red" ValidationGroup="InsertValidation"></asp:RequiredFieldValidator>
        </p>
            <p>
                Game</p>
            <p class="auto-style4">
                <strong>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style2" Height="40px" Width="400px">
                    <asp:ListItem>Apex Legends</asp:ListItem>
                    <asp:ListItem>Call of Duty: Warzone</asp:ListItem>
                    <asp:ListItem>Counter-Strike: Global Offensive</asp:ListItem>
                    <asp:ListItem>Dota 2</asp:ListItem>
                    <asp:ListItem>FIFA</asp:ListItem>
                    <asp:ListItem>Fortnite</asp:ListItem>
                    <asp:ListItem>Genshin Impact</asp:ListItem>
                    <asp:ListItem>Hearthstone</asp:ListItem>
                    <asp:ListItem>League of Legends</asp:ListItem>
                    <asp:ListItem>Minecraft</asp:ListItem>
                    <asp:ListItem>Mobile Legends</asp:ListItem>
                    <asp:ListItem>Mortal Kombat 11</asp:ListItem>
                    <asp:ListItem>Plants Vs Zombie</asp:ListItem>
                    <asp:ListItem>PlayerUnknown&#39;s Battlegrounds (PUBG)</asp:ListItem>
                    <asp:ListItem>Pou</asp:ListItem>
                    <asp:ListItem>PUBG (Mobile)</asp:ListItem>
                    <asp:ListItem>Quake Champions</asp:ListItem>
                    <asp:ListItem>Rainbow Six Siege</asp:ListItem>
                    <asp:ListItem>Roblox</asp:ListItem>
                    <asp:ListItem>Rocket League</asp:ListItem>
                    <asp:ListItem>Street Fighter V</asp:ListItem>
                    <asp:ListItem>Smite</asp:ListItem>
                    <asp:ListItem>StarCraft II</asp:ListItem>
                    <asp:ListItem>Super Smash Bros. Ultimate</asp:ListItem>
                    <asp:ListItem>Tekken 7</asp:ListItem>
                    <asp:ListItem>Valorant</asp:ListItem>
                    <asp:ListItem>Warcraft III: Reforged</asp:ListItem>
                    <asp:ListItem>Wildrift</asp:ListItem>
                
                </asp:DropDownList>
                </strong>
        </p>
            <p>
                &nbsp;</p>
        <p class="auto-style5">
             <strong>
                  <asp:Button ID="Button1" runat="server" CssClass="auto-style9" OnClick="Button1_Click" Text="Clear✎" ToolTip="Click here to clear all data." />

                  <button class="btn">
            
         <asp:Button ID="btninsert" runat="server" Text="Register" OnClick="btninsert_Click1" CssClass="insertbutton" ValidationGroup="InsertValidation" /></button>
             </strong>
            </p>
            </div>
  


        
 
    
      <section id="bottom"  class="auto-style7">
      
      
      
           <br />
          
      
      
     
      
         <button> <asp:Button ID="btnsearch" runat="server" Height="20px" OnClick="btnsearch_Click" Text="Search" Width="85px" CssClass="insertbutton " ToolTip="Please Search Team ID only." /></button>
          
      
      
     
      
                <asp:TextBox ID="txtsearch" runat="server" CssClass="auto-style14" Height="40px" Width="485px"></asp:TextBox>
           <br />
           <br />
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GepzuConnectionString %>" SelectCommand="SELECT * FROM [teaminfo]"></asp:SqlDataSource>
           <br />
         
           <div class="auto-style11">
               <div class="scroll">
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style13" Height="200px" Width="1100px" BackColor="Black" BorderColor="DarkGreen">
                   <Columns>
                       <asp:BoundField DataField="Teamid" HeaderText="Team ID" SortExpression="Teamid" >
                       <HeaderStyle BackColor="DarkGreen" Height="50px" ForeColor="White" Width="70px" />
                       <ItemStyle Height="35px" />
                       </asp:BoundField>
                       <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" >
                       <HeaderStyle BackColor="#FFCC00" ForeColor="#000814" />
                       </asp:BoundField>
                       <asp:BoundField DataField="Name" HeaderText="Team Captain Name" SortExpression="Name" >
                       <HeaderStyle BackColor="#FFCC00" ForeColor="#000814" />
                       </asp:BoundField>
                       <asp:BoundField DataField="Team" HeaderText="Team Name" SortExpression="Team" >
                       <HeaderStyle BackColor="#FFCC00" ForeColor="#000814" />
                       </asp:BoundField>
                       <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" >
                       <HeaderStyle BackColor="#FFCC00" ForeColor="#000814" />
                       </asp:BoundField>
                       <asp:BoundField DataField="Game" HeaderText="Chosen Game" SortExpression="Game" >
                       <HeaderStyle BackColor="DarkGreen" />
                       </asp:BoundField>
                   </Columns>
               </asp:GridView>
                   </div>
           <br />
               <button>
               <asp:Button ID="btndelete" runat="server" CssClass="insertbutton" Text="Delete" OnClick="btndelete_Click1" ToolTip="Click here to delete record."/>
                    </button>
               <button>
               <asp:Button ID="btnupdate" runat="server" CssClass="insertbutton"  Text="Update" OnClick="btnupdate_Click" ToolTip="Click here to update record." />
                    </button>
               <button>
               <asp:Button ID="Button4" runat="server" CssClass="insertbutton" href="#" Text="Add New" OnClick="Button4_Click" ToolTip="Click here to Register new Team." />
                   </button>
           <br />
           <br />
    
      
         
         
    
      
         
         
           </div>
    
      
         
         
    
      
         
         
      </section>
       
        </form>
</body>
</html>
