 

 <div style="float:left"><?php echo $this->_var['str']; ?></div>
 <ul class="car_ul">

 <?php if ($this->_var['goods']): ?>

 <?php $_from = $this->_var['goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods_0_36282600_1391677731');$this->_foreach['goods'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['goods']['total'] > 0):
    foreach ($_from AS $this->_var['goods_0_36282600_1391677731']):
        $this->_foreach['goods']['iteration']++;
?>
 <li>
 <div class="f_l">
 <a  href="<?php echo $this->_var['goods_0_36282600_1391677731']['url']; ?>"><img src="<?php echo $this->_var['goods_0_36282600_1391677731']['goods_thumb']; ?>" style="width:50px; height:50px; border:1px solid #e1e1e1; float:left" alt="<?php echo $this->_var['goods_0_36282600_1391677731']['goods_name']; ?>"></a>
 <a  class="b2"  href="<?php echo $this->_var['goods_0_36282600_1391677731']['url']; ?>"><?php echo $this->_var['goods_0_36282600_1391677731']['short_name']; ?></a>
 </div>
 <div class="f_r">
 <b><?php echo $this->_var['goods_0_36282600_1391677731']['goods_price']; ?>×<?php echo $this->_var['goods_0_36282600_1391677731']['goods_number']; ?></b>
 <a  class="del" href="javascript:" onClick="deleteCartGoods(<?php echo $this->_var['goods_0_36282600_1391677731']['rec_id']; ?>)">删除</a>
 </div>
  </li>
 <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
 <li style=" text-align:right">
  <a href="flow.php?step=checkout"><img  style=" margin-left:10px;"src="themes/xiaomi/images/checkout_top.gif" alt="checkout" /></a>
  </li>
  <?php else: ?>
 <a href="#" style="color:#999; padding-left:30px;">您的购物车暂无商品 赶快选择心爱的产品吧</a>
 <?php endif; ?>
 <div class="dang">
 </div>
 <ul>
<script type="text/javascript">
function deleteCartGoods(rec_id)
{
Ajax.call('delete_cart_goods.php', 'id='+rec_id, deleteCartGoodsResponse, 'POST', 'JSON');
}

/**
 * 接收返回的信息
 */
function deleteCartGoodsResponse(res)
{
  if (res.error)
  {
    alert(res.err_msg);
  }
  else
  {
      document.getElementById('ECS_CARTINFO').innerHTML = res.content;
  }
}
</script>

