<%-- Le quattro righe seguenti sono direttive ASP.NET necessarie quando si usano componenti di SharePoint --%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- Il markup e lo script nell'elemento Content seguente verranno inseriti nell'elemento <head> della pagina --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <script type="text/javascript" src="../Scripts/jquery-1.9.1.min.js"></script>
    <SharePoint:ScriptLink name="sp.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />
    <meta name="WebPartPageExpansion" content="full" />

    <!-- Aggiunge gli stili CSS al file seguente -->
    <link rel="Stylesheet" type="text/css" href="../Content/App.css" />

    <!-- Aggiunge il codice JavaScript al file seguente -->
    <script type="text/javascript" src="../Scripts/App.js"></script>
</asp:Content>

<%-- Il markup nell'elemento Content seguente verrà inserito nell'elemento TitleArea della pagina --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    Page Title
</asp:Content>

<%-- Il markup e lo script nell'elemento Content seguente verranno inseriti nell'elemento <body> della pagina --%>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">

    <div>
        <p id="message">
            <!-- Il contenuto seguente verrà sostituito con il nome utente quando si esegue l'app. Vedere App.js -->
            initializing...
        </p>
    </div>

    <h1> My First app</h1>


    <a href="../Lists/EmployerList"> Employers</a>

</asp:Content>
