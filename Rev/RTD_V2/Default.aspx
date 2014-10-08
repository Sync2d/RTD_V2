<%@ Page Title="" Language="C#" MasterPageFile="~/Tema01.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RTD_V2.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CenterContent" runat="server">
<div class="container">
	<div class="row" style="height: 500px">
        <div class="col-md-10">
            <div  class="panel panel-danger">
                <div class="panel-heading" align="center">
                    <span class="btn pull-right glyphicon glyphicon-chevron-down" data-toggle="collapse" data-target="#bodyTeste"></span>
			        <h3 class="panel-title"><b>Tarefas</b></h3>
		        </div>   
                <div class="panel-body collapse in" id="bodyTeste">
                    <table align="center">
                        <tr>
                            <td>
                                <a data-toggle="modal" href="#TarefaNova" class="btn btn-primary btn-xs" data-placement="Top"><span class="glyphicon glyphicon-plus"></span> Nova Tarefa</a>
                            </td>
                        </tr>
                        <tr>
                            <td style="height:15px;"></td>
                        </tr>
                    </table>

                    <table id="mytable" class="table table-bordred table-striped">
                        <thead>
                            <th>Tarefa Nº</th>
                            <th>Cliente</th>
                            <th>Projecto</th>
                            <th>Tarefa</th>
                            <th>Inicio - Fim</th>
                            <th>Ações</th>
                        </thead>
                        <tbody>
                            <tr class="success">
                                <td>1234</td>
                                <td>EAD</td>
                                <td>BASE DE DADOS</td>
                                <td>Receção de Documentação</td>
                                <td>9:00 - 9:01</td>
                                <td>
                                    <a data-title="Ações" data-toggle="modal" href="#TarefaSuspender" class="btn btn-success btn-xs" data-placement="Top" rel="tooltip"><span class="glyphicon glyphicon-play"></span></a>
                                    <a data-title="Ações" data-toggle="modal" href="#TarefaSuspender" class="btn btn-warning btn-xs" data-placement="top" rel="tooltip"><span class="glyphicon glyphicon-pause"></span></a>
                                    <a data-title="Ações" data-toggle="modal" href="#TarefaFechar" class="btn btn-danger btn-xs" data-placement="top" rel="tooltip"><span class="glyphicon glyphicon-stop"></span></a>
                                </td>
                            </tr>
                            <tr class="warning">
                                <td>3241</td>
                                <td>EAD</td>
                                <td>IMPORTAÇÕES</td>
                                <td>Digitalização</td>
                                <td>10:52 - 11:52</td>
                                <td>
                                    <a data-title="Ações" data-toggle="modal" href="#TarefaSuspender" class="btn btn-success btn-xs" data-placement="top" rel="tooltip"><span class="glyphicon glyphicon-play"></span></a>
                                    <a data-title="Ações" data-toggle="modal" href="#TarefaSuspender" class="btn btn-warning btn-xs" data-placement="top" rel="tooltip"><span class="glyphicon glyphicon-pause"></span></a>
                                    <a data-title="Ações" data-toggle="modal" href="#TarefaFechar" class="btn btn-danger btn-xs" data-placement="top" rel="tooltip"><span class="glyphicon glyphicon-stop"></span></a>
                                </td>
                            </tr>
                            <tr class="danger">
                                <td>2543</td>
                                <td>EAD</td>
                                <td>BASE DE DADOS</td>
                                <td>Preparação</td>
                                <td>17:34 - </td>
                                <td>
                                    <a data-title="Ações" data-toggle="modal" href="#TarefaSuspender" class="btn btn-success btn-xs" data-placement="top" rel="tooltip"><span class="glyphicon glyphicon-play"></span></a>
                                    <a data-title="Ações" data-toggle="modal" href="#TarefaSuspender" class="btn btn-warning btn-xs" data-placement="top" rel="tooltip"><span class="glyphicon glyphicon-pause"></span></a>
                                    <a data-title="Ações" data-toggle="modal" href="#TarefaFechar" class="btn btn-danger btn-xs" data-placement="top" rel="tooltip"><span class="glyphicon glyphicon-stop"></span></a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal" id="TarefaFechar">
	<div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h4 class="modal-title">Fechar a Tarefa</h4>
        </div>
        <div class="modal-body">
          Tem a certesa que quer fechar a Tarefa?
        </div>
        <div class="modal-footer">
          <a href="#" data-dismiss="modal" class="btn btn-danger">Não</a>
          <a href="#" class="btn btn-success">Sim</a>
        </div>
      </div>
    </div>
</div>

<div class="modal" id="TarefaSuspender">
	<div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h4 class="modal-title">Suspender a Tarefa</h4>
        </div>
        <div class="modal-body">
          Tem a certesa que pretende Suspender a Tarefa?
        </div>
        <div class="modal-footer">
          <a href="#" data-dismiss="modal" class="btn btn-danger">Não</a>
          <a href="#" class="btn btn-success">Sim</a>
        </div>
      </div>
    </div>
</div>

<div class="modal" id="TarefaNova">
	<div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h4 class="modal-title">Nova Tarefa</h4>
        </div>
        <div class="modal-body">
            <div class="control-group">
                    
            </div>
                    <div class="controls">
                        Cliente: <asp:DropDownList runat="server" ID="cmbCliente" CssClass="input-xlarge"></asp:DropDownList>
                    </div>
                    <div class="controls">
                         Projecto: <asp:DropDownList runat="server" ID="cmbProjeto" CssClass="input-xlarge"></asp:DropDownList>
                    </div>
        </div>
        <div class="modal-footer">
          <a href="#" data-dismiss="modal" class="btn btn-danger">Cancelar</a>
          <a href="#" class="btn btn-success">Criar</a>
        </div>
      </div>
    </div>
</div>
</asp:Content>
