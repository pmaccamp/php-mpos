  <div class="col-lg-8">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-info fa-fw"></i> Wallet Status
      </div>
      <div class="panel-body no-padding">
        <table class="table table-striped table-bordered table-hover">
          <thead>
            <th>Version</th>
            <th>Protocol Version</th>
            <th>Wallet Version</th>
            <th>Peers</th>
            <th>Status</th>
            <th>Blocks</th>
            <th>Accounts</th>
          </thead>
          <tbody>
            <tr>
              <td>{$NETWORKINFO.version|default:""}</td>
              <td>{$NETWORKINFO.protocolversion|default:""}</td>
              <td>{$WALLETINFO.walletversion|default:""}</td>
              <td>{$NETWORKINFO.connections|default:""}</td>
              <td><font color="{if $MININGINFO.errors}red{else}green{/if}">{$COININFO.errors|default:"OK"}</font></td>
              <td>{$MININGINFO.blocks|default:"0"}</td>
              <td>{$ADDRESSCOUNT}</td>
            </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
