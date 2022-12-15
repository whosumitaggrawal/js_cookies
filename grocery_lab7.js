angular.module("Packages",[]) //This is a module named as packages as under this module only everything will work and its also a view from MVC(model view controller)
.filter("namefilter",function()
{
    return function(input,option)
    {
        if(isNaN(option) ||(option == ""))
        {
            return input;
        }
        else
        {
        return input.substring(0,option).toUpperCase();
    }}
})
.controller("Packagesctrl",function($scope) //This works as a controller
{
    var items = [
        {name:'Meat and Fish',doa:new Date("February 21 2022"),location:"Banerghatta",rating:"4 Star",price:200},
        {name:'Vegatables',doa:new Date("February 22 2022"),location:"Hosur",rating:"4.8 star",price:40},
        {name:'Milk and Dairy',doa:new Date("February 20 2022"),location:"Chikmanglur",rating:"4.5 star",price:60},
        {name:'Bread and Cereals',doa:new Date("February 21 2022"),location:"Bangalore",rating:"5 star",price:50},
        {name:'Fruits',doa:new Date("June 10 2022"),location:"Kempangowda",rating:"4.6 star",price:100},
        {name:'Sweets',doa:new Date("August 22 2022"),location:"Bangalore",rating:"5 star",price:120}
    ];
    $scope.items = items;
    $scope.rowlimit = 6;
});