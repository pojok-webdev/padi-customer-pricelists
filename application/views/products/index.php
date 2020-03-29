<!DOCTYPE html>
<html lang="en">
<?php $this->load->view('products/head');?>
<body>
    <div class="header">
        <a class="logo" href="#"><img src="/asset/aqua/img/logo.png" alt="PadiApp" title="PadiApp"/></a>
        <ul class="header_menu">
            <li class="list_icon"><a href="#">&nbsp;</a></li>
        </ul>    
    </div>
    <?php $this->load->view('products/menu');?>
    <div class="content">
        <?php $this->load->view('products/breadline');?>        
        <div class="workplace">
            <div class="row-fluid">                
                <div class="span12">                    
                    <div class="head clearfix">
                        <div class="isw-grid"></div>
                        <h1>Pricelist Layanan PadiNET</h1>
                        <ul class="buttons">
                            <li><a href="/products/insert/" class="isw-download"></a></li>                                                        
                        </ul>                        
                    </div>
                    <div class="block-fluid table-sorting clearfix">
                        <table cellpadding="0" cellspacing="0" width="100%" class="table" id="tProduct">
                            <thead>
                                <tr>
                                    <th width="5%">Kode</th>
                                    <th width="20%">Nama</th>
                                    <th width="10%">Harga</th>
                                    <th width="60%">Keterangan</th>
                                    <th width="5%">Unit</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>                                
            </div>            
            <div class="dr"><span></span></div>            
        </div>
    </div>
    <script src='/asset/aqua/js/products/index.js'></script>
</body>
</html>
