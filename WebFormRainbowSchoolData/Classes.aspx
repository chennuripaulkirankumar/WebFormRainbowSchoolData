<%@ Page Title="" Language="C#" MasterPageFile="~/OurSite.Master" AutoEventWireup="true" CodeBehind="Classes.aspx.cs" Inherits="WebFormRainbowSchoolData.Classes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>


        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="classId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="classId" HeaderText="classId" ReadOnly="True" SortExpression="classId" />
                <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
                <asp:BoundField DataField="SeatsCount" HeaderText="SeatsCount" SortExpression="SeatsCount" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RainbowSchoolConnectionString %>" DeleteCommand="DELETE FROM [Classes] WHERE [classId] = @original_classId AND [ClassName] = @original_ClassName AND (([SeatsCount] = @original_SeatsCount) OR ([SeatsCount] IS NULL AND @original_SeatsCount IS NULL))" InsertCommand="INSERT INTO [Classes] ([classId], [ClassName], [SeatsCount]) VALUES (@classId, @ClassName, @SeatsCount)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Classes]" UpdateCommand="UPDATE [Classes] SET [ClassName] = @ClassName, [SeatsCount] = @SeatsCount WHERE [classId] = @original_classId AND [ClassName] = @original_ClassName AND (([SeatsCount] = @original_SeatsCount) OR ([SeatsCount] IS NULL AND @original_SeatsCount IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_classId" Type="Int32" />
                <asp:Parameter Name="original_ClassName" Type="String" />
                <asp:Parameter Name="original_SeatsCount" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="classId" Type="Int32" />
                <asp:Parameter Name="ClassName" Type="String" />
                <asp:Parameter Name="SeatsCount" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ClassName" Type="String" />
                <asp:Parameter Name="SeatsCount" Type="Int32" />
                <asp:Parameter Name="original_classId" Type="Int32" />
                <asp:Parameter Name="original_ClassName" Type="String" />
                <asp:Parameter Name="original_SeatsCount" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>


    </center>

</asp:Content>
