<?php
	
	$connect = mysql_connect("localhost","root","") or die("Server not found");
	mysql_select_db("csdl",$connect) or die("Server not found");
	mysql_query("SET NAMES 'utf8'");
	$trang = 1;
	if(isset($_GET['trang'])){
	$trang = $_GET['trang'];
	}
	$start = ($trang - 1) * $size + 1;
	if($start>0){
		$start = $start - 1;
	}
	if(isset($_GET['tukhoa'])){
		$query = mysql_query("select * from product where ProductName like '%{$_GET['tukhoa']}%' or Price = 	{$_GET['tukhoa']} limit {$start}, {$size}	", $connect);
		}
	else{
	$query = mysql_query("select * from product limit {$start}, {$size}	", $connect);
	}
	while ($row = mysql_fetch_array($query)){?>
			<div class="product-one" style="margin-left:5px">
				<div class="col-md-3 product-left"> 
					<div class="p-one simpleCart_shelfItem">							
							<a href="single.php?id=<?php echo $row["ID"] ?>">
								<img src="<?php echo $row["ImageUrl"]?>" alt="" />
                            </a>
							<a href="?themgiohang=<?php echo $row["ID"]; ?>" class="mask">
									<span>Add to cart</span>
							</a>
						<h4><?php echo $row["ProductName"]?> </h4>
						<p><a class="item_add" href="#"><i></i> <span class=" item_price"><?php echo $row["Price"]?></span></a></p
						></div>
                     </div>
				</div>
			</div>
    <?php }
?>
