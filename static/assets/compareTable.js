function green(id){
	$(id).attr('style','color: #097712;');
}

function red(id) {	
	$(id).attr('style','color: #861013;');
}

function diffShow(){
	//var diffSize = parseInt($("#boatSize2").text()) - parseInt($("#boatSize1").text());
	//$("#diffSize").text(diffSize);

	//var diffSpeed = parseInt($("#boatSpeed2").text()) - parseInt($("#boatSpeed1").text());

	//var diffRouteTime = routeTimeSec2 - routeTimeSec1;
	//$("#diffRouteTime").text(toHour(diffRouteTime));
	//TODO: Debug

	//FUEL COST
	if(fuelCost2 <= fuelCostResult1) {
		red("#fuelCost1");
		green("#fuelCost2");
	} else {
		red("#fuelCost2");
		green("#fuelCost1");
	}
	var diffFuelCost = fuelCost2 - fuelCostResult1;
	$("#diffFuelCost").text(diffFuelCost.toLocaleString('en-US', { style: 'currency', currency: 'USD', minimumFractionDigits: '0' }));

	//FUEL COST PER NM
	if(fuelCostPerNM2 <= fuelCostPerNM1) {
		red("#fuelCostPerNM1");
		green("#fuelCostPerNM2");
	} else {
		red("#fuelCostPerNM2");
		green("#fuelCostPerNM1");
	}
	var diffFuelCostPerNM = fuelCostPerNM2 - fuelCostPerNM1;
	$("#diffFuelCostPerNM").text(diffFuelCostPerNM.toLocaleString('en-US', { style: 'currency', currency: 'USD', minimumFractionDigits: '0' }));

	//INCOME
	if(income1 <= income2){
		red("#income1");
		green("#income2");
	} else {
		red("#income2");
		green("#income1");
	}
	var diffIncome = income2 - income1;
	$("#diffIncome").text(diffIncome.toLocaleString('en-US', { style: 'currency', currency: 'USD', minimumFractionDigits: '0' }));

	//INCOME NET
	if(incomeNet1 <= incomeNet2){
		red("#incomeNet1");
		green("#incomeNet2");
	} else {
		red("#incomeNet2");
		green("#incomeNet1");
	}
	var diffIncomeNet = incomeNet2 - incomeNet1;
	$("#diffIncomeNet").text(diffIncomeNet.toLocaleString('en-US', { style: 'currency', currency: 'USD', minimumFractionDigits: '0' }));

	//INCOME PER HOUR
	if(incomePerHour1 <= incomePerHour2){
		red("#incomePerHour1");
		green("#incomePerHour2");
	} else {
		red("#incomePerHour2");
		green("#incomePerHour1");
	}
	var diffIncomePerHour = incomePerHour2 - incomePerHour1;
	$("#diffIncomePerHour").text(diffIncomePerHour.toLocaleString('en-US', { style: 'currency', currency: 'USD', minimumFractionDigits: '0' }));

	//INCOME NET PER HOUR
	if(incomeNetPerHour1 <= incomeNetPerHour2){
		red("#incomeNetPerHour1");
		green("#incomeNetPerHour2");
	} else {
		red("#incomeNetPerHour2");
		green("#incomeNetPerHour1");
	}
	var diffIncomeNetPerHour = incomeNetPerHour2 - incomeNetPerHour1;
	$("#diffIncomeNetPerHour").text(diffIncomeNetPerHour.toLocaleString('en-US', { style: 'currency', currency: 'USD', minimumFractionDigits: '0' }));

	

}

$(function() {
	//Les deux buttons sont cliqué sur
	//Buton 1
	$("#button1").click(function() {
		$("#boatName1").text($("#boatName").text());
		$("#boatCost1").text($("#boatCost").text());
		$("#boatSize1").text(boatSize);
		$("#boatSpeed1").text(boatSpeed);
		$("#boatFuel1").text(boatFuel);
		$("#boatCrew1").text($("#boatCrew").text());

		$("#routeTime1").text(toHour(routeTimeSec));
		routeTimeSec1 = routeTimeSec;

		$("#fuelCost1").text(fuelCostResult.toLocaleString('en-US', { style: 'currency', currency: 'USD', minimumFractionDigits: '0' }));
		fuelCostResult1 = fuelCostResult;

		$("#fuelCostPerNM1").text(fuelCostPerNM.toLocaleString('en-US', { style: 'currency', currency: 'USD', minimumFractionDigits: '2' }));
		fuelCostPerNM1 = fuelCostPerNM;

		$("#income1").text(incomeResult.toLocaleString('en-US', { style: 'currency', currency: 'USD', minimumFractionDigits: '0' }));
		income1 = incomeResult;

		$("#incomeNet1").text(incomeNetResult.toLocaleString('en-US', { style: 'currency', currency: 'USD', minimumFractionDigits: '0' }));
		incomeNet1 = incomeNetResult;

		$("#incomePerHour1").text(incomePerHourResult.toLocaleString('en-US', { style: 'currency', currency: 'USD', minimumFractionDigits: '0' }));
		incomePerHour1 = incomePerHourResult;

		$("#incomeNetPerHour1").text(incomeNetPerHourResult.toLocaleString('en-US', { style: 'currency', currency: 'USD', minimumFractionDigits: '0' }));
		incomeNetPerHour1 = incomeNetPerHourResult;

		diffShow();
	});

	//Buton 2
	$("#button2").click(function() {
		$("#boatName2").text($("#boatName").text());
		$("#boatCost2").text($("#boatCost").text());
		$("#boatSize2").text(boatSize);
		$("#boatSpeed2").text(boatSpeed);
		$("#boatFuel2").text(boatFuel);
		$("#boatCrew2").text($("#boatCrew").text());

		$("#routeTime2").text(toHour(routeTimeSec));
		routeTimeSec2 = routeTimeSec;

		$("#fuelCost2").text(fuelCostResult.toLocaleString('en-US', { style: 'currency', currency: 'USD', minimumFractionDigits: '0' }));
		fuelCost2 = fuelCostResult;

		$("#fuelCostPerNM2").text(fuelCostPerNM.toLocaleString('en-US', { style: 'currency', currency: 'USD', minimumFractionDigits: '2' }));
		fuelCostPerNM2 = fuelCostPerNM;

		$("#income2").text(incomeResult.toLocaleString('en-US', { style: 'currency', currency: 'USD', minimumFractionDigits: '0' }));
		income2 = incomeResult;

		$("#incomeNet2").text(incomeNetResult.toLocaleString('en-US', { style: 'currency', currency: 'USD', minimumFractionDigits: '0' }));
		incomeNet2 = incomeNetResult;

		$("#incomePerHour2").text(incomePerHourResult.toLocaleString('en-US', { style: 'currency', currency: 'USD', minimumFractionDigits: '0' }));
		incomePerHour2 = incomePerHourResult;

		$("#incomeNetPerHour2").text(incomeNetPerHourResult.toLocaleString('en-US', { style: 'currency', currency: 'USD', minimumFractionDigits: '0' }));
		incomeNetPerHour2 = incomeNetPerHourResult;

		diffShow();
	});

	$("#buttonClear").click(function() {
		
		var tr = jQuery("td[id]");
		for (var i = 0; i < tr.length; i++) {
			tr[i].innerText = "";
		};
	});
	
});