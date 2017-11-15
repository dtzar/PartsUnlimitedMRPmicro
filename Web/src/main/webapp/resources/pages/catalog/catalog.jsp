<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta charset="utf-8" />
    <title>Catalog</title>
	<!-- WinJS references -->    
    <link rel="stylesheet" type="text/css" href="./catalog.css" title="styles1" />
    <!-- Parts Unlimited references -->
    <script src="./catalog.js"></script>
</head>
<body>	
    <div class="catalog fragment">
           <header class="page-header" aria-label="Header content" role="banner">
            <button class="page-header-home">
                <img src="<c:url value="/resources/images/FabrikamIcon.png" />" />
            </button>
            <h2 class="titlearea win-type-ellipsis">
                <span class="pagetitle">Catalog</span>
            </h2>
        </header>
        <section class="page-section" aria-label="Main content" role="main">
            <!-- Simple template for the ListView instantiation  -->
            <div class="catalogItemTemplate" data-win-control="WinJS.Binding.Template" style="display: none">
                <div class="listItem catalogItem">
                    <div class="catalogItem-Detail">
                        <h3 data-win-bind="textContent: skuNumber"></h3>
                        <div class="list-item-entry-small" data-win-bind="textContent: description"></div>
                        <div class="list-item-entry-small" data-win-bind="textContent: unit"></div>
                        <div class="list-item-entry-small" data-win-bind="textContent: unitPrice"></div>
                    </div>
                </div>
            </div>

            <div class="edittools" data-win-control="Controls.EditTools" data-win-options="{  }"></div>

            <div id="listView"
                 class="itemListView catalogListView"
                 data-win-control="WinJS.UI.ListView"
                 data-win-options="{
                    itemDataSource: Data.catalog.dataSource,
                    itemTemplate: select('.catalogItemTemplate'),
                    selectionMode: 'single',
                    tapBehavior: 'directSelect',
                    swipeBehavior: 'select',
                    layout: { type: WinJS.UI.ListLayout }
                 }">
            </div>

		<!-- <div id="listView" class="itemListView catalogListView">
			<div class="catalogItemTemplate">
				<div class="listItem catalogItem">
					<div class="catalogItem-Detail">
						<h3>SkuNumber</h3>
						<div class="list-item-entry-small">Description</div>
						<div class="list-item-entry-small">Unit</div>
						<div class="list-item-entry-small">Unit Price</div>
					</div>
				</div>
			</div>
			<div class="catalogItemTemplate">
				<div class="listItem catalogItem">
					<div class="catalogItem-Detail">
						<h3>SkuNumber1</h3>
						<div class="list-item-entry-small">Description1</div>
						<div class="list-item-entry-small">Unit1</div>
						<div class="list-item-entry-small">Unit Price1</div>
					</div>
				</div>
			</div>
		</div> -->


		<div class="editDetail catalogDetail">
                <label class="inputlabel">Name:</label>
                <input id="skuNumber" class="textinput" type="text" data-win-bind="value: skuNumber Binding.Mode.twoway" />
                <br />
                <label class="inputlabel">Description:</label>
                <input id="description" class="textinput" type="text" data-win-bind="value: description Binding.Mode.twoway" />
                <br />
                <label class="inputlabel">Unit:</label>
                <input id="unit" class="textinput" type="text" data-win-bind="value: unit Binding.Mode.twoway" />
                <br />
                <label class="inputlabel">Price:</label>
                <input id="unitPrice" class="textinput" type="text" data-win-bind="value: unitPrice Binding.Mode.twoway" />
            </div>

		<!-- <div class="editDetail catalogDetail">
			<label class="inputlabel">Name:</label> 
			<input id="skuNumber" class="textinput" type="text" /> 
			<br /> 
			<label class="inputlabel">Description:</label>
			<input id="description" class="textinput" type="text" /> 
			<br /> 
			<label class="inputlabel">Unit:</label> 
			<input id="unit" class="textinput" type="text" /> 
			<br /> 
			<label class="inputlabel">Price:</label> 
			<input id="unitPrice" class="textinput" type="text" />
		</div> -->

		</section>
    </div>
</body>
</html>