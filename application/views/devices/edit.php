<!DOCTYPE html>
<html lang="en">
<?php $this->load->view('devices/head');?>
<body>
    
    <div class="header">
        <a class="logo" href="index.html"><img src="img/logo.png" alt="Aquarius -  responsive admin panel" title="Aquarius -  responsive admin panel"/></a>
        <ul class="header_menu">
            <li class="list_icon"><a href="#">&nbsp;</a></li>
        </ul>    
    </div>
    
    <div class="menu">                
        
        <div class="breadLine">            
            <div class="arrow"></div>
            <div class="adminControl active">
                Hi, Aqvatarius
            </div>
        </div>
        
        <div class="admin">
            <div class="image">
                <img src="img/users/aqvatarius.jpg" class="img-polaroid"/>                
            </div>
            <ul class="control">                
                <li><span class="icon-comment"></span> <a href="messages.html">Messages</a> <a href="messages.html" class="caption red">12</a></li>
                <li><span class="icon-cog"></span> <a href="forms.html">Settings</a></li>
                <li><span class="icon-share-alt"></span> <a href="login.html">Logout</a></li>
            </ul>
            <div class="info">
                <span>Welcom back! Your last visit: 24.10.2012 in 19:55</span>
            </div>
        </div>
        
        <ul class="navigation">            
            <li>
                <a href="index.html">
                    <span class="isw-grid"></span><span class="text">Dashboard</span>
                </a>
            </li>
            <li class="openable">
                <a href="#">
                    <span class="isw-list"></span><span class="text">UI elements</span>
                </a>
                <ul>
                    <li>
                        <a href="ui.html">
                            <span class="icon-th"></span><span class="text">UI Elements</span>
                        </a>                  
                    </li>      
                    <li>
                        <a href="widgets.html">
                            <span class="icon-th-large"></span><span class="text">Widgets</span>
                        </a>                  
                    </li>                    
                    <li>
                        <a href="buttons.html">
                            <span class="icon-chevron-right"></span><span class="text">Buttons</span>
                        </a>                  
                    </li>   
                    <li>
                        <a href="icons.html">
                            <span class="icon-fire"></span><span class="text">Icons</span>
                        </a>                  
                    </li>                    
                </ul>                
            </li>          
            <li class="active">
                <a href="forms.html">
                    <span class="isw-archive"></span><span class="text">Forms stuff</span>                 
                </a>
            </li>                        
            <li class="openable">
                <a href="#">
                    <span class="isw-chat"></span><span class="text">Messages</span>
                </a>
                <ul>
                    <li>
                        <a href="messages.html">
                            <span class="icon-comment"></span><span class="text">Messages widgets</span></a>
                            
                            <a href="#" class="caption yellow link_navPopMessages">5</a>

                            <div id="navPopMessages" class="popup" style="display: none;">
                                <div class="head clearfix">
                                    <div class="arrow"></div>
                                    <span class="isw-chats"></span>
                                    <span class="name">Personal messages</span>
                                </div>
                                <div class="body messages">

                                    <div class="item clearfix">
                                        <div class="image"><a href="#"><img src="img/users/aqvatarius.jpg" class="img-polaroid"/></a></div>
                                        <div class="info">
                                            <a href="#" class="name">Aqvatarius</a>
                                            <p>Lorem ipsum dolor. In id adipiscing diam. Sed lobortis dui ut odio tempor blandit. Suspendisse scelerisque mi nec nunc gravida quis mollis lacus dignissim.</p>
                                            <span>19 feb 2012 12:45</span>
                                        </div>
                                    </div>

                                    <div class="item clearfix">
                                        <div class="image"><a href="#"><img src="img/users/olga.jpg" class="img-polaroid"/></a></div>
                                        <div class="info">
                                            <a href="#" class="name">Olga</a>
                                            <p>Cras nec risus dolor, ut tristique neque. Donec mauris sapien, pellentesque at porta id, varius eu tellus.</p>
                                            <span>18 feb 2012 12:45</span>
                                        </div>
                                    </div>                        

                                    <div class="item clearfix">
                                        <div class="image"><a href="#"><img src="img/users/dmitry.jpg" class="img-polaroid"/></a></div>
                                        <div class="info">
                                            <a href="#" class="name">Dmitry</a>
                                            <p>In id adipiscing diam. Sed lobortis dui ut odio tempor blandit.</p>
                                            <span>17 feb 2012 12:45</span>
                                        </div>
                                    </div>                         

                                    <div class="item clearfix">
                                        <div class="image"><a href="#"><img src="img/users/helen.jpg" class="img-polaroid"/></a></div>
                                        <div class="info">
                                            <a href="#" class="name">Helen</a>
                                            <p>Sed lobortis dui ut odio tempor blandit. Suspendisse scelerisque mi nec nunc gravida quis mollis lacus dignissim. Donec mauris sapien, pellentesque at porta id, varius eu tellus.</p>
                                            <span>15 feb 2012 12:45</span>
                                        </div>
                                    </div>                                  

                                </div>
                                <div class="footer">
                                    <button class="btn link_navPopMessages" type="button">Close</button>
                                </div>
                            </div>                                                                                                                          
                    </li>                                        
                </ul>                
                
   
            </li>                                    
            <li>
                <a href="statistic.html">
                    <span class="isw-graph"></span><span class="text">Statistics</span>
                </a>
            </li>                                    
            <li>
                <a href="tables.html">
                    <span class="isw-text_document"></span><span class="text">Tables</span>
                </a>
            </li>   
            <li class="openable">
                <a href="#">
                    <span class="isw-documents"></span><span class="text">Sample pages</span>
                </a>
                <ul>
                    <li>
                        <a href="user.html">
                            <span class="icon-user"></span><span class="text">User profile</span>
                        </a>   
                    </li>
                    <li>
                        <a href="users.html">
                            <span class="icon-list"></span><span class="text">Users</span>
                        </a>
                    </li>   
                    <li>
                        <a href="stream.html">
                            <span class="icon-refresh"></span><span class="text">Stream activity</span>
                        </a>
                    </li>           
                    <li>
                        <a href="mail.html">
                            <span class="icon-envelope"></span><span class="text">Mailbox</span>
                        </a>
                    </li>    
                    <li>
                        <a href="edit.html">
                            <span class="icon-pencil"></span><span class="text">User edit</span>
                        </a>                  
                    </li>                                          
                </ul>                                
            </li>              
            <li class="openable">
                <a href="#">
                    <span class="isw-zoom"></span><span class="text">Other</span>                    
                </a>
                <ul>
                    <li>
                        <a href="gallery.html">
                            <span class="icon-picture"></span><span class="text">Gallery</span>
                        </a>
                    </li>
                    <li>
                        <a href="typography.html">
                            <span class="icon-pencil"></span><span class="text">Typography</span>
                        </a>
                    </li>                       
                    <li>
                        <a href="files.html">
                            <span class="icon-upload"></span><span class="text">File handling</span>
                        </a>
                    </li>                                                        
                </ul>
            </li>  
            <li class="openable">
                <a href="#">
                    <span class="isw-cancel"></span><span class="text">Error pages</span>                    
                </a>
                <ul>                    
                    <li><a href="403.html"><span class="icon-warning-sign"></span><span class="text">403 Forbidden</span></a></li>
                    <li><a href="404.html"><span class="icon-warning-sign"></span><span class="text">404 Not Found</span></a></li>
                    <li><a href="500.html"><span class="icon-warning-sign"></span><span class="text">500 Internal Server Error</span></a></li>
                    <li><a href="503.html"><span class="icon-warning-sign"></span><span class="text">503 Service Unavailable</span></a></li>
                    <li><a href="504.html"><span class="icon-warning-sign"></span><span class="text">504 Gateway Timeout</span></a></li>
                </ul>
            </li>                         
        </ul>
        
        <div class="dr"><span></span></div>
        
        <div class="widget-fluid">
            <div id="menuDatepicker"></div>
        </div>
        
        <div class="dr"><span></span></div>
        
        <div class="widget">

            <div class="input-append">
                <input id="appendedInputButton" style="width: 118px;" type="text"><button class="btn" type="button">Search</button>
            </div>            
            
        </div>
        
        <div class="dr"><span></span></div>        

        <div class="widget-fluid">
            
            <div class="wBlock clearfix">
                <div class="dSpace">
                    <h3>Last visits</h3>
                    <span class="number">6,302</span>                    
                    <span>5,774 <b>unique</b></span>
                    <span>3,512 <b>returning</b></span>
                </div>
                <div class="rSpace">
                    <h3>Today</h3>
                    <span class="mChartBar" sparkType="bar" sparkBarColor="white"><!--240,234,150,290,310,240,210,400,320,198,250,222,111,240,221,340,250,190--></span>                                                                                
                    <span>&nbsp;</span>
                    <span>65% <b>New</b></span>
                    <span>35% <b>Returning</b></span>
                </div>
            </div>
            
        </div>        
        
    </div>
        
    <div class="content">
        
        
        <div class="breadLine">
            
            <ul class="breadcrumb">
                <li><a href="#">Simple Admin</a> <span class="divider">></span></li>                
                <li class="active">Forms stuff</li>
            </ul>
                        
            <ul class="buttons">
                <li>
                    <a href="#" class="link_bcPopupList"><span class="icon-user"></span><span class="text">Users list</span></a>

                    <div id="bcPopupList" class="popup">
                        <div class="head clearfix">
                            <div class="arrow"></div>
                            <span class="isw-users"></span>
                            <span class="name">List users</span>
                        </div>
                        <div class="body-fluid users">

                            <div class="item clearfix">
                                <div class="image"><a href="#"><img src="img/users/aqvatarius_s.jpg" width="32"/></a></div>
                                <div class="info">
                                    <a href="#" class="name">Aqvatarius</a>                                    
                                    <span>online</span>
                                </div>
                            </div>

                            <div class="item clearfix">
                                <div class="image"><a href="#"><img src="img/users/olga_s.jpg" width="32"/></a></div>
                                <div class="info">
                                    <a href="#" class="name">Olga</a>                                
                                    <span>online</span>
                                </div>
                            </div>                        

                            <div class="item clearfix">
                                <div class="image"><a href="#"><img src="img/users/alexey_s.jpg" width="32"/></a></div>
                                <div class="info">
                                    <a href="#" class="name">Alexey</a>  
                                    <span>online</span>
                                </div>
                            </div>                              
                        
                            <div class="item clearfix">
                                <div class="image"><a href="#"><img src="img/users/dmitry_s.jpg" width="32"/></a></div>
                                <div class="info">
                                    <a href="#" class="name">Dmitry</a>                                    
                                    <span>online</span>
                                </div>
                            </div>                         

                            <div class="item clearfix">
                                <div class="image"><a href="#"><img src="img/users/helen_s.jpg" width="32"/></a></div>
                                <div class="info">
                                    <a href="#" class="name">Helen</a>                                                                        
                                </div>
                            </div>                                  

                            <div class="item clearfix">
                                <div class="image"><a href="#"><img src="img/users/alexander_s.jpg" width="32"/></a></div>
                                <div class="info">
                                    <a href="#" class="name">Alexander</a>                                                                        
                                </div>
                            </div>                                  

                        </div>
                        <div class="footer">
                            <button class="btn" type="button">Add new</button>
                            <button class="btn btn-danger link_bcPopupList" type="button">Close</button>
                        </div>
                    </div>                    
                    
                </li>                
                <li>
                    <a href="#" class="link_bcPopupSearch"><span class="icon-search"></span><span class="text">Search</span></a>
                    
                    <div id="bcPopupSearch" class="popup">
                        <div class="head clearfix">
                            <div class="arrow"></div>
                            <span class="isw-zoom"></span>
                            <span class="name">Search</span>
                        </div>
                        <div class="body search">
                            <input type="text" placeholder="Some text for search..." name="search"/>
                        </div>
                        <div class="footer">
                            <button class="btn" type="button">Search</button>
                            <button class="btn btn-danger link_bcPopupSearch" type="button">Close</button>
                        </div>
                    </div>                
                </li>
            </ul>
            
        </div>
        
        <div class="workplace">
            
            <div class="row-fluid">
                
                <div class="span12">
                    <div class="head clearfix">
                        <div class="isw-documents"></div>
                        <h1>Text fields</h1>
                    </div>
                    <div class="block-fluid">                        
                        <form action="/devices/update" method='POST'>
                        <input type="hidden" name="id" value = <?php echo $obj->id;?>>
                        <div class="row-form clearfix">
                            <div class="span3">KD Device:</div>
                            <div class="span9"><input type="text" name="kddevice" value="<?php echo $obj->kddevice;?>" /></div>
                        </div> 
                        <div class="row-form clearfix">
                            <div class="span3">category_id:</div>
                            <div class="span9"><input type="text" name="category_id" value="<?php echo $obj->category_id;?>"/></div>
                        </div> 
                        <div class="row-form clearfix">
                            <div class="span3">Name:</div>
                            <div class="span9"><input type="text" name="name" value="<?php echo $obj->name;?>"/></div>
                        </div> 
                        <div class="row-form clearfix">
                            <div class="span3">Description:</div>
                            <div class="span9"><textarea name="description"> <?php echo $obj->kddevice;?></textarea></div>
                        </div>                        
                        <div class="row-form clearfix">
                            <div class="span3">Price:</div>
                            <div class="span9"><input type="text" name="price" value="<?php echo $obj->price;?>"/></div>
                        </div> 
                        <div class="row-form clearfix">
                            <div class="span3">Shown Price:</div>
                            <div class="span9"><input type="text" name="shownprice" value="<?php echo $obj->shownprice;?>"/></div>
                        </div> 
                        <div class="row-form clearfix">
                            <div class="span3">Unit:</div>
                            <div class="span9"><input type="text" name="unit" value="<?php echo $obj->unit;?>"/></div>
                        </div> 
                        <div class="row-form clearfix">
                            <div class="span3">Brand:</div>
                            <div class="span9"><input type="text" name="brand" value="<?php echo $obj->brand;?>"/></div>
                        </div> 
                        <input type="submit" value="save">
                        </form>
                    </div>
                </div>
                
            </div>
        
        </div>
        
    </div>   
    
</body>
</html>
