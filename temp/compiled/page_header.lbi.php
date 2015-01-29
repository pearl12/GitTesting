<script type="text/javascript">
var process_request = "<?php echo $this->_var['lang']['process_request']; ?>";
</script>
<script src="themes/xiaomi/js/transport.js"></script>

<div class="block header_bg">
<div class="block clearfix" style=" position:relative; height:100px; z-index:999999999 ; ">
 <div class="logo">
 <a href="index.php" name="top"><img  src="themes/xiaomi/images/logo.gif" /></a>
 </div>
 <div class="f_r log">
   <ul>
 
   <?php if ($this->_var['navigator_list']['top']): ?>
   <li id="topNav" class="clearfix">
    <?php echo $this->smarty_insert_scripts(array('files'=>'utils.js')); ?>
   <font id="ECS_MEMBERZONE" style=" float:left"><?php 
$k = array (
  'name' => 'member_info',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?> </font>
    <div  style=" float:left; margin-top:20px; font-weight:normal;" class="buy_car_bg clearfix"  onmouseover="this.className='buy_car_bg ul1_on'" onmouseout=  "this.className='buy_car_bg'">
	
	<img src="themes/xiaomi/images/nav_cat.gif" style="float:left; padding-right:5px; padding-left:10px" /> 
	<div id="ECS_CARTINFO" style="float:left">

   <p><a href="flow.php"><?php 
$k = array (
  'name' => 'cart_info',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></a></p>
     </div> </div>
    </li>
   <?php endif; ?>
   </ul>
 </div>
 <script type="text/javascript">
    
    function checkSearchForm()
    {
        if(document.getElementById('keyword').value)
        {
            return true;
        }
        else
        {
            alert("<?php echo $this->_var['lang']['no_keywords']; ?>");
            return false;
        }
    }
    
    </script>
	
	
	
	<div id="mainNav" class="clearfix" > 
  <ul class="u1" onmouseover="this.className='u1 u1_over '" onmouseout="this.className='u1'"   >
  <a class="a1"  href="index.php"><font style="color:#f68336"><?php echo $this->_var['lang']['home']; ?></font></a>
  </ul>
  <?php $_from = $this->_var['navigator_list']['middle']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'nav');$this->_foreach['nav_middle_list'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['nav_middle_list']['total'] > 0):
    foreach ($_from AS $this->_var['nav']):
        $this->_foreach['nav_middle_list']['iteration']++;
?>
  <ul class="u1" onmouseover="this.className='u1 u1_over'" onmouseout="this.className='u1'" >
  <a  class="a1"  href="<?php echo $this->_var['nav']['url']; ?>" <?php if ($this->_var['nav']['opennew'] == 1): ?>target="_blank" <?php endif; ?>><?php echo $this->_var['nav']['name']; ?></a>
  
  	<?php if ($this->_var['nav']['cat_list']): ?>
		<div class='sub_nav'>
			<dl >
			<?php $_from = $this->_var['nav']['cat_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cat');if (count($_from)):
    foreach ($_from AS $this->_var['cat']):
?>
			<dd>
			<a class="t" href="<?php echo $this->_var['cat']['url']; ?>"><?php echo htmlspecialchars($this->_var['cat']['name']); ?></a>
			<?php $_from = $this->_var['cat']['cat_id']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'child');$this->_foreach['no'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['no']['total'] > 0):
    foreach ($_from AS $this->_var['child']):
        $this->_foreach['no']['iteration']++;
?>
			<?php if ($this->_foreach['no']['iteration'] < 11): ?>
			<a class="b" href="<?php echo $this->_var['child']['url']; ?>"><?php echo htmlspecialchars($this->_var['child']['name']); ?></a>
			<?php endif; ?>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			</dd>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			</dl>
		</div>
		<div class="dang">
		<img   src="themes/xiaomi/images/sub_nav_bg.gif">
		</div>
	<?php endif; ?>
  
  
  </ul>
 <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
</div>

</div>

<div  class="blank"></div>

 
 
</div>
 
