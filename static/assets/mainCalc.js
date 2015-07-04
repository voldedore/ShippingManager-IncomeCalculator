// HOUR CONVERTISSEUR
function toHour(secondes){
    if(secondes >= 3600){
        hours = parseInt(secondes/3600);
        secondes = secondes%3600;
        minutes = parseInt(secondes/60);
        secondes = parseInt(secondes%60);
        if(minutes < 10)
            return hours + ':0' + minutes + ':' + secondes;
        else return hours + ':' + minutes + ':' + secondes;
    } else if(secondes < 60){
        return secondes + "s";
    } else {
        minutes = parseInt(secondes/60);
        secondes = parseInt(secondes%60);
        return minutes + ':' + secondes;
    }
}

// INCOME CALC
function incomeCalc(routeDistance, capShipped, boatType, fuelPrice){
    // Income Base
    incomeBase = 45000;

    //Pay per tonnes delivrered
    indexPay = 37,4531847044122;
    if(boatType == '1')
        return parseInt(routeDistance/indexPay*Math.round(capShipped)*20+incomeBase);
    //else return parseInt(0.000111711724647995*fuelPrice*routeDistance*Math.round(capShipped)+incomeBase);
    // update oil tankers income
    else return parseInt(0.000066373097265*fuelPrice*routeDistance*Math.round(capShipped)+incomeBase);

}

// FUEL USED CALC
function fuelUsed(routeDistance, boatSpeed, boatFuel, boatType, consPourcentage){
    str2 = consPourcentage.split("_");
    loadCap = parseInt(str2[0].substring(0,str2[0].length-1));
    cargoConsum = parseInt(str2[1].substring(0,str2[1].length-1));
    oilConsum = parseInt(str2[2].substring(0,str2[2].length-1));

    if(boatType == "1") fuelConsumPercentage = cargoConsum;
    else fuelConsumPercentage = oilConsum;

    res = (Math.ceil(routeDistance/boatSpeed/24)*boatFuel)*(Math.round(fuelConsumPercentage/100/0.0416666666666667));
    //return routeDistance/boatSpeed*boatFuel*fuelConsumPercentage/100;
    return res;
}

// MAIN JQUERY
$(document).ready(function(){
    // SI LE FORMULAIRE CHANGE
	$("#mainForm").change(function(){
        /**************** str = Info du bateau choisi *******************/
	    str = $("#boatSelector option:selected").val().split("_");

        // BOat speed
        boatSpeed = parseInt(str[4]);

	    // Boat fuel consum
	    boatFuel = parseInt(str[5]);

        // Boat Type 1:argo 2:Oil
        boatType = parseInt(str[7]);

	    // ------- Load capacity ----------
	    // ------- 1:loadBalance 2:CargoConsum 3:OilConsum -----------
	    consPourcentage = $("#loadCapSelector option:selected").val();
        str2 = consPourcentage.split("_");
        loadCap = parseInt(str2[0].substring(0,str2[0].length-1));
        cargoConsum = parseInt(str2[1].substring(0,str2[1].length-1));
        oilConsum = parseInt(str2[2].substring(0,str2[2].length-1));

	    // Route demand
	    routeDemand = parseInt($("#routeDemandSelector option:selected").val());

	    // Staff Efficiency
        staffEff = parseInt($("#staffEffSelector option:selected").val());

        // Risk
        risk = parseInt($("#riskSelector option:selected").val());


        fuelPrice = parseInt($("#fuelPrice").val());

        /**************** MISE A JOUR BOAT SPEC   ***************/
		$("#boatName").text(str[1]);
		$("#boatCost").text(parseInt(str[2]).toLocaleString('en-US', { style: 'currency', currency: 'USD', minimumFractionDigits: '0' }));
		if(boatType == '1')
		    $("#boatSize").text(parseInt(str[3]).toLocaleString() + ' TEU');
		else $("#boatSize").text(parseInt(str[3]).toLocaleString() + ' DWT');
		$("#boatSpeed").text(boatSpeed + ' knots');
		$("#boatFuel").text(boatFuel.toLocaleString() + ' Kg per hour');
		$("#boatCrew").text(parseInt(str[6]).toLocaleString());

        capShipped = Math.round(parseInt(str[3])*loadCap/100*routeDemand/100*staffEff/100);
		$("#capShipped").text(capShipped.toLocaleString());


        /**************** ROUTE TIME CALC *******************/
		// Route distance
		routeDistance = parseInt($("#routeDistance").val());

		// Route time in days in real life
		routeTimeDays = routeDistance/boatSpeed/24;

		// Route time in game (=1/35)
		routeTime = routeTimeDays/35;

		routeTimeSec = routeTime*24*3600;

		$("#routeTime").text(toHour(routeTimeSec));
		$("#routeTimeDays").text(routeTimeDays.toFixed(2));



        /**************** FUEL USED CALC ***************/
        fuelUsedResult = fuelUsed(routeDistance,boatSpeed,boatFuel,boatType,consPourcentage);
        $("#fuelUsed").text(fuelUsedResult.toLocaleString('en-US'));

        fuelCostResult = parseInt(fuelUsedResult*fuelPrice/1000);
        $("#fuelCost").text(fuelCostResult.toLocaleString('en-US', { style: 'currency', currency: 'USD', minimumFractionDigits: '0' }));

        if(boatType == "1") $("#fuelConsPourcentage").text(str2[1]);
        else  $("#fuelConsPourcentage").text(str2[2]);

        $("#fuelCostPerNM").text(parseFloat(fuelUsedResult*fuelPrice/1000/routeDistance).toLocaleString('en-US', { style: 'currency', currency: 'USD', minimumFractionDigits: '2' }));


        /**************** INCOME CALC *******************/
        incomeResult = incomeCalc(routeDistance,capShipped,boatType,fuelPrice);
        $("#income").text(incomeResult.toLocaleString('en-US', { style: 'currency', currency: 'USD', minimumFractionDigits: '0' }));

        incomePerHourResult = parseInt(incomeResult/(routeTime*24));
        $("#incomePerHour").text(incomePerHourResult.toLocaleString('en-US', { style: 'currency', currency: 'USD', minimumFractionDigits: '0' }));

        incomeNetResult = incomeResult-fuelCostResult;
        $("#incomeNet").text(incomeNetResult.toLocaleString('en-US', { style: 'currency', currency: 'USD', minimumFractionDigits: '0' }));

        incomeNetPerHourResult = parseInt(incomeNetResult/(routeTime*24));
        $("#incomeNetPerHour").text(incomeNetPerHourResult.toLocaleString('en-US', { style: 'currency', currency: 'USD', minimumFractionDigits: '0' }));



        //Test
        //alert(loadCap);
	});
});