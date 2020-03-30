<div class="menu">                
    <div class="breadLine">            
        <div class="arrow"></div>
        <div class="adminControl active">
            Hi
        </div>
    </div>
    <div class="admin">
        <div class="image">
            <img src="/asset/aqua/img/users/aqvatarius.jpg" class="img-polaroid"/>                
        </div>
        <ul class="control">                
            <li><span class="icon-comment"></span> <a href="#">Messages</a> <a href="#" class="caption red">12</a></li>
            <li><span class="icon-cog"></span> <a href="#">Settings</a></li>
            <li><span class="icon-share-alt"></span> <a href="#">Logout</a></li>
        </ul>
        <div class="info">
            <span>Welcome back! PadiNET</span>
        </div>
    </div>
    <ul class="navigation">            
        <li>
            <a href="/products">
                <span class="isw-grid"></span><span class="text">Products</span>
            </a>
        </li>
        <li>
            <div class="span12">
                <label class="checkbox inline">
                    <input type="checkbox" checked="checked" class="selectall" /> 
                    SELECT ALL
                </label>
            </div>
        </li>
        <?php foreach($categories['res'] as $category){?>
        <li>
            <div class="span5"></div>
            <div class="span7">
                <label class="checkbox inline">
                    <input type="checkbox" checked="checked" value="<?php echo $category->category_id;?>" class="productCategory" /> 
                    <?php echo $category->category_id;?>
                </label>
            </div>
        </li>
        <?php }?>
        <li>
            <a href="/notes">
                <span class="isw-grid"></span><span class="text">Notes</span>
            </a>
        </li>
    </ul>    
</div>
