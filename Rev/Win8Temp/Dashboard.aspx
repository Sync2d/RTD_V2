<%@ Page Title="" Language="C#" MasterPageFile="~/Win8.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Win8Temp.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
	<div class="row" style="height: 500px">
        <div class="widget">
            <h4 class="widgettitle">Tarefas <span class="pull-right icon-chevron-down" data-toggle="collapse" data-target="#bodyTeste"></span></h4> 
            <div class="widgetcontent">
                <div  id="bodyTeste">
                    <table>
                        <tr>
                            <td>
                                <a data-toggle="modal" href="#TarefaNova" class="btn btn-primary"   
                                    data-placement="Top"><span class="icon-plus"></span> Nova Tarefa</a>
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
                            <th style="text-align: center">Ações</th>
                        </thead>
                        <tbody>
                            <tr class="success">
                                <td>1234</td>
                                <td>EAD</td>
                                <td>BASE DE DADOS</td>
                                <td>Receção de Documentação</td>
                                <td>9:00 - 9:01</td>
                                <td style="text-align: center">
                                    <a data-title="Ações" data-toggle="modal" href="#TarefaContinuar" class="btn btn-success" data-placement="Top" rel="tooltip"><span class="icon-play"></span></a>
                                    <a data-title="Ações" data-toggle="modal" href="#TarefaSuspender" class="btn btn-warning" data-placement="top" rel="tooltip"><span class="icon-pause"></span></a>
                                    <a data-title="Ações" data-toggle="modal" href="#TarefaFechar" class="btn btn-danger" data-placement="top" rel="tooltip"><span class="icon-stop"></span></a>
                                </td>
                            </tr>
                            <tr class="warning">
                                <td>3241</td>
                                <td>EAD</td>
                                <td>IMPORTAÇÕES</td>
                                <td>Digitalização</td>
                                <td>10:52 - 11:52</td>
                                <td style="text-align: center">
                                    <a data-title="Ações" data-toggle="modal" href="#TarefaContinuar" class="btn btn-success" data-placement="top" rel="tooltip"><span class="icon-play"></span></a>
                                    <a data-title="Ações" data-toggle="modal" href="#TarefaSuspender" class="btn btn-warning" data-placement="top" rel="tooltip"><span class="icon-pause"></span></a>
                                    <a data-title="Ações" data-toggle="modal" href="#TarefaFechar" class="btn btn-danger" data-placement="top" rel="tooltip"><span class="icon-stop"></span></a>
                                </td>
                            </tr>
                            <tr class="error">
                                <td>2543</td>
                                <td>EAD</td>
                                <td>BASE DE DADOS</td>
                                <td>Preparação</td>
                                <td>17:34 - </td>
                                <td style="text-align: center">
                                    <a data-title="Ações" data-toggle="modal" href="#TarefaContinuar" class="btn btn-success" data-placement="top" rel="tooltip"><span class="icon-play"></span></a>
                                    <a data-title="Ações" data-toggle="modal" href="#TarefaSuspender" class="btn btn-warning" data-placement="top" rel="tooltip"><span class="icon-pause"></span></a>
                                    <a data-title="Ações" data-toggle="modal" href="#TarefaFechar" class="btn btn-danger" data-placement="top" rel="tooltip"><span class="icon-stop"></span></a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div><!--widgetcontent-->
        </div><!--widget-->
    </div>
    </div>

  <!-- Modal TAREFA NOVA-->
  <div class="modal fade" id="TarefaNova" tabindex="-1" role="dialog" aria-labelledby="TarefaNova" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h4 class="modal-title">Nova Tarefa</h4>
        </div>
        <div class="modal-body" align="center">
            <table>
                <tr>
                    <td>
                        <label class="control-label" for="cmbCliente">Cliente:</label>
                    </td>
                    <td width="10px">
                    </td>
                    <td>
                        <asp:DropDownList runat="server" ID="cmbCliente" CssClass="chzn-select"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="control-label" for="cmbProjecto">Projectos:</label>
                    </td>
                    <td width="10px">
                    </td>
                    <td>
                        <asp:DropDownList runat="server" ID="cmbProjecto" CssClass="chzn-select"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="control-label" for="cmbTarefas">Tarefas:</label>
                    </td>
                    <td width="10px">
                    </td>
                    <td>
                        <asp:DropDownList runat="server" ID="cmbTarefas" CssClass="chzn-select"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="control-label" for="cmbTarefas">Tarefas:</label>
                    </td>
                    <td width="10px">
                    </td>
                    <td>
                        <asp:DropDownList runat="server" ID="DropDownList1" CssClass="chzn-select"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="control-label" >Capalote:</label>
                    </td>
                    <td width="10px">
                    </td>
                    <td>
                        <table>
                            <tr>
                                <td>
                                    <asp:TextBox runat="server" ID="txtCapalote" CssClass="input-medium"></asp:TextBox>
                                </td>
                                <td width="10px"></td>
                                <td >
                                    <asp:Image runat="server" ID="imgBarcode" ImageUrl="~/images/icons/Barcode.png"/>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
          <button type="button" class="btn btn-primary">Iniciar</button>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div>
  <!-- /.modal TAREFA NOVA -->

  <!-- Modal TAREFA CONTINUAR-->
  <div class="modal fade" id="TarefaContinuar" tabindex="-1" role="dialog" aria-labelledby="TarefaContinuar" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h4 class="modal-title">Continuar a Tarefa</h4>
        </div>
        <div class="modal-body">
           Tem a certesa que pretende Continuar a Tarefa?
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Não</button>
          <button type="button" class="btn btn-primary">Sim</button>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div>
  <!-- /.modal TAREFA CONTINUAR -->

  <!-- Modal TAREFA SUSPENDER-->
  <div class="modal fade" id="TarefaSuspender" tabindex="-1" role="dialog" aria-labelledby="TarefaSuspender" aria-hidden="true">
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
          <button type="button" class="btn btn-danger" data-dismiss="modal">Não</button>
          <button type="button" class="btn btn-primary">Sim</button>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div>
  <!-- /.modal TAREFA SUSPENDER -->

  <!-- Modal TAREFA Fechar-->
  <div class="modal fade" id="TarefaFechar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
          <button type="button" class="btn btn-danger" data-dismiss="modal">Não</button>
          <button type="button" class="btn btn-primary">Sim</button>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div>
  <!-- /.modal TAREFA NOVA -->

</asp:Content>
