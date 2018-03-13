<?php
$defflip = (!cfip()) ? exit(header('HTTP/1.1 401 Unauthorized')) : 1;

class Block extends Base {
  protected $table = 'prices';

  /**
   * Specific method to get latest price
   * @param none
   * @return last price as double
   **/
  public function getLastPrice() {
    $stmt = $this->mysqli->prepare("SELECT * FROM $this->table ORDER BY height DESC LIMIT 1");
    if ($this->checkStmt($stmt) && $stmt->execute() && $result = $stmt->get_result()) {
      $aData = $result->fetch_assoc();
      if(isset($aData) && isset($aData["price"]){
        return $aData["price"];
      } else {
        return null;
      }
    }
    return $this->sqlError();
  }  
}

// Automatically load our class for furhter usage
$prices = new Prices();
$prices->setDebug($debug);
$prices->setMysql($mysqli);
$prices->setConfig($config);
$prices->setErrorCodes($aErrorCodes);
