﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="DynamoInomhus" Title="Untitled Page" Codebehind="DynamoInomhus.aspx.cs" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Header" Runat="Server">
</asp:Content>--%>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" Runat="Server">
    
    <%--Spelade omgångar--%>    
    <asp:Repeater ID="rptRounds" runat="server">
        <ItemTemplate>
            <%--<asp:LinkButton ID="rptRound" runat="server" Text="<%# Container.DataItem.ToString() %>" />--%>
            <asp:HyperLink ID="hlRound" runat="server" Text="<%# Container.DataItem %>" NavigateUrl="<%# GetRoundLink((int)Container.DataItem) %>" />
        </ItemTemplate>
        <SeparatorTemplate> | </SeparatorTemplate>
    </asp:Repeater>
    
    <%--Serietabell--%>
    <asp:Repeater ID="rptTeamsDiv6" runat="server">
        <HeaderTemplate>
            <table class="fotball">
                <%--<tr><td>Namn</td><td>Poäng</td></tr>--%>
                <tr>
                    <td><asp:LinkButton ID="lbtnName" runat="server" Text="Namn" /></td>
                    <td class="number"><asp:LinkButton ID="lbtnGamesPlayed" runat="server" Text="Spelade" /></td>
                    <td class="number"><asp:LinkButton ID="lbtnGamesWon" runat="server" Text="Vinst" /></td>
                    <td class="number"><asp:LinkButton ID="lbtnGamesDraw" runat="server" Text="Oavgjort" /></td>
                    <td class="number"><asp:LinkButton ID="lbtnGameslost" runat="server" Text="Förlust" /></td>
                    <td class="number"><asp:LinkButton ID="lbtnGoalsMade" runat="server" Text="Gjorda mål" /></td>
                    <td class="number"><asp:LinkButton ID="lbtnGoalsBackward" runat="server" Text="Insläpta mål" /></td>
                    <td class="number"><asp:LinkButton ID="lbtnGoalDifference" runat="server" Text="Målskillnad" /></td>
                    <td class="number"><asp:LinkButton ID="lbtnPoints" runat="server" Text="Poäng" /></td>
                </tr>
        </HeaderTemplate>
        
        <ItemTemplate>
            <tr>
                <td><%# Eval("Name") %></td>
                <td class="number"><%# Eval("GamesPlayed")%></td>
                <td class="number"><%# Eval("GamesWon")%></td>
                <td class="number"><%# Eval("GamesDraw")%></td>
                <td class="number"><%# Eval("GamesLost")%></td>
                <td class="number"><%# Eval("GoalsMade")%></td>
                <td class="number"><%# Eval("GoalsBackward")%></td>
                <td class="number"><%# Eval("GoalDifference")%></td>
                <td class="number"><%# Eval("Points") %></td>
            </tr>
        </ItemTemplate>
        
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>    
    
    
    <div id="emChart" style="width:600px; height:300px; margin:40px 0 40px 0;"></div>
    
<%--    <script type="text/javascript" language="javascript">
//    $(document).ready(function(){
//    CreatePointsChart();
//    });


    function CreatePointsChart()
    {
        //variabler
        var dDaniel =  [[0,0], [1,6], [2,12], [3,14], [4,19], [5,21], [6,23], [7,27], [8,33], [9,34], 
                        [10,37], [11,42], [12,43], [13,46], [14,48], [15,53], [16,56], [17,64], [18,64], 
                       [19,64], [20,64], [21,80], [22,80], [23,80]];
        var dDenise =  [[0,0], [1,5], [2,12], [3,13], [4,19], [5,22], [6,22], [7,24], [8,28], [9,28],
                        [10,31], [11,35], [12,37], [13,40], [14,41], [15,42], [16,45], [17,53], [18,53],
                        [19,53], [20,61], [21,77], [22,93], [23,125]];
        var dGustav =  [[0,0], [1,3], [2,10], [3,11], [4,18], [5,21], [6,22], [7,23], [8,28], [9,28],
                        [10,30], [11,34], [12,37], [13,38], [14,39], [15,42], [16,45], [17,53], [18,53],
                        [19,53], [20,61], [21,77], [22,93], [23,125]];
        var dJanne =   [[0,0], [1,4], [2,12], [3,13], [4,18], [5,20], [6,21], [7,21], [8,27], [9,27],
                        [10,35], [11,41], [12,44], [13,47], [14,49], [15,50], [16,53], [17,61], [18,61],
                        [19,61], [20,69], [21,85], [22,101], [23,133]];
        var dRickard = [[0,0], [1,3], [2,13], [3,14], [4,20], [5,27], [6,32], [7,40], [8,43], [9,43],
                        [10,47], [11,50], [12,53], [13,58], [14,59], [15,62], [16,65], [17,73], [18,73],
                        [19,73], [20,81], [21,81], [22,81], [23,81]];

        //var plot = $.plot(placeholder, data, options)
        //$.plot($("#pointChart"), [dDaniel, dDenise, dGustav, dJanne, dRickard]);
        $.plot($("#emChart"), [
                {label: "Daniel", data: dDaniel}, 
                {label: "Denise", data: dDenise, lines:{lineWidth: 4}}, 
                {label: "Gustav", data: dGustav}, 
                {label: "Janne", data: dJanne, lines:{fill: false, show: false}, bars: {show: false} }, //color: "rgb(255, 255, 203)"
                {label: "Rickard", data: dRickard, lines:{fill: false}}
            ],
            {grid: {color: "#D3D3D3", borderWidth: 0.5, tickColor: "#111111", hoverable: true},
             legend: {position: "nw"}
            }
        );
    }
    </script>--%>
    
    <asp:Literal ID="litScript" runat="server" />
</asp:Content>
<%--<asp:Content ID="Content4" ContentPlaceHolderID="Footer" Runat="Server">
</asp:Content>--%>

