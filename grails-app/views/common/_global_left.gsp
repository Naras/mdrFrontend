<!-- Sidebar navigation-->
<nav class="sidebar-nav">
    <ul id="sidebarnav">
        <li> <a href="/"><i class="icon-speedometer"></i><span class="hide-menu">Dashboard <span class="badge badge-pill badge-cyan ml-auto">4</span></span></a>
        </li>
        <li> <a class="has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="ti-layout-grid2"></i><span class="hide-menu">Sales</span></a>
            <ul aria-expanded="false" class="collapse">
                <li>
                    <g:link controller="salesOrder" action="index">
                        <i class="fa fa-th"></i> <span>Sales Order</span>
                    </g:link>
                </li>
            </ul>
        </li>
        %{--<li> <a class="has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="ti-layout-grid2"></i><span class="hide-menu">Purchases</span></a>
            <ul aria-expanded="false" class="collapse">

            </ul>
        </li>--}%
        <li> <a class="has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="ti-layout-grid2"></i><span class="hide-menu">GRN</span></a>
            <ul aria-expanded="false" class="collapse">
                <li>
                    <g:link controller="productStock" action="index">
                        <i class="fa fa-th"></i> <span>G R N</span>
                    </g:link>
                </li>
                <li>
                    <g:link controller="productStock" action="expiryItems">
                        <i class="fa fa-th"></i> <span>Stock To Expiry</span>
                    </g:link>
                </li>
                <li>
                    <g:link controller="purchaseOrder" action="index">
                        <i class="fa fa-th"></i> <span>Purchase Orders</span>
                    </g:link>
                </li>
                <li>
                    <g:link controller="purchaseReturn" action="index">
                        <i class="fa fa-th"></i> <span>Purchase Return</span>
                    </g:link>
                </li>
            </ul>
        </li>
        <li> <a class="has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="ti-files"></i><span class="hide-menu">Reports</span></a>
            <ul aria-expanded="false" class="collapse">
                <li>
                    <g:link controller="reports" action="index">
                        <i class="fa fa-th"></i> <span>Sales Report</span>
                    </g:link>
                </li>
                <li>
                    <g:link controller="reports" action="salesByBrand">
                        <i class="fa fa-th"></i> <span>Sales By Brand Report</span>
                    </g:link>
                </li>
                <li>
                    <g:link controller="reports" action="salesByDrugType">
                        <i class="fa fa-th"></i> <span>Sales By Drug Type</span>
                    </g:link>
                </li>
                <li>
                    <g:link controller="reports" action="prescriptionRegister">
                        <i class="fa fa-th"></i> <span>Prescription Register</span>
                    </g:link>
                </li>
                <li>
                    <g:link controller="reports" action="nonMovingMedicen">
                        <i class="fa fa-th"></i> <span>Non Moving</span>
                    </g:link>
                </li>

                <li>
                    <g:link controller="reports" action="inventoryReports">
                        <i class="fa fa-th"></i> <span>Product Rent Report</span>
                    </g:link>
                </li>
                <li>
                    <g:link controller="reports" action="inventoryByBrand">
                        <i class="fa fa-th"></i> <span>Product Rent By Brand Report</span>
                    </g:link>
                </li>
                <li>
                    <g:link controller="reports" action="purchaseReports">
                        <i class="fa fa-th"></i> <span>Purchase Report</span>
                    </g:link>
                </li>
                <li>
                    <g:link controller="reports" action="stockReports">
                        <i class="fa fa-th"></i> <span>Stock Report</span>
                    </g:link>
                </li>
                <li>
                    <g:link controller="reports" action="expiryReports">
                        <i class="fa fa-th"></i> <span>Product Expiry Report</span>
                    </g:link>
                </li>
                <li>
                    <g:link controller="reports" action="lowStockReport">
                        <i class="fa fa-th"></i> <span>Low Stock Report</span>
                    </g:link>
                </li>
            </ul>
        </li>
        <li> <a class="has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="ti-settings"></i><span class="hide-menu">Masters</span></a>
            <ul aria-expanded="false" class="collapse">
                <li>
                    <g:link controller="company" action="index">
                        <i class="fa fa-th"></i> <span>Company</span>
                    </g:link>
                </li>
                <li>
                    <g:link controller="supplier" action="index">
                        <i class="fa fa-th"></i> <span>Supplier</span>
                    </g:link>
                </li>
                <li>
                    <g:link controller="customer" action="index">
                        <i class="fa fa-th"></i> <span>Customer</span>
                    </g:link>
                </li>
                <li>
                    <g:link controller="manufacturer" action="index">
                        <i class="fa fa-th"></i> <span>Manufacturer</span>
                    </g:link>
                </li>
                <li>
                    <g:link controller="brands" action="index">
                        <i class="fa fa-th"></i> <span>Brands</span>
                    </g:link>
                </li>

                <li>
                    <g:link controller="inventoryOrder" action="index">
                        <i class="fa fa-th"></i> <span>Product Rent</span>
                    </g:link>
                </li>


                <li>
                    <g:link controller="generics" action="index">
                        <i class="fa fa-th"></i> <span>Varients Ingredients</span>
                    </g:link>
                </li>
                <li>
                    <g:link controller="categoryMaster" action="index">
                        <i class="fa fa-th"></i> <span>Category Master</span>
                    </g:link>
                </li>
                <li>
                    <g:link controller="productTypeMaster" action="index">
                        <i class="fa fa-th"></i> <span>Product Type Master</span>
                    </g:link>
                </li>
                <li>
                    <g:link controller="packageUnitsMaster" action="index">
                        <i class="fa fa-th"></i> <span>Package Units Master</span>
                    </g:link>
                </li>
                <li>
                    <g:link controller="scheduleTypeMaster" action="index">
                        <i class="fa fa-th"></i> <span>Schedule Type Master</span>
                    </g:link>
                </li>
                <li>
                    <g:link controller="taxStructureMaster" action="index">
                        <i class="fa fa-th"></i> <span>Tax Structure Master</span>
                    </g:link>
                </li>
                <li>
                    <g:link controller="printTemplate" action="index">
                        <i class="fa fa-th"></i> <span>Templates</span>
                    </g:link>
                </li>
            </ul>
        </li>
        <li> <a class="has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="ti-settings"></i><span class="hide-menu">Configuration</span></a>
            <ul aria-expanded="false" class="collapse">
                <li>
                    <g:link controller="organisation" action="index">
                        <i class="fa fa-th"></i> <span>Organisation</span>
                    </g:link>
                </li>
                <li>
                    <g:link controller="users" action="index">
                        <i class="fa fa-th"></i> <span>Users</span>
                    </g:link>
                </li>
                <li>
                    <g:link controller="roles" action="index">
                        <i class="fa fa-th"></i> <span>Roles</span>
                    </g:link>
                </li>
                <li>
                    <g:link controller="departments" action="index">
                        <i class="fa fa-th"></i> <span>Departments</span>
                    </g:link>
                </li>
            </ul>
        </li>
    </ul>
</nav>
<!-- End Sidebar navigation -->