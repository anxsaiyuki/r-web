app.controller("MainController", function ($scope) {

    $scope.headertitle = "Header";


    $scope.bannertitle = "Banner";

// =====================================================================================================================
//===================================  Menu ============================================================================
// =====================================================================================================================
    $scope.menulist = [
        {
            menuName: 'A',
            submenulist: [
                {
                    sublistname: 'A1'
                },
                {
                    sublistname: 'A2'
                },
                {
                    sublistname: 'A3'
                },
                {
                    sublistname: 'A4'
                },
                {
                    sublistname: 'A5'
                }
            ]
        },
        {
            menuName: 'B',
            submenulist: [
                {
                    sublistname: 'B1'
                },
                {
                    sublistname: 'B2'
                },
                {
                    sublistname: 'B3'
                },
                {
                    sublistname: 'B4'
                },
                {
                    sublistname: 'B5'
                }
            ]
        },
        {
            menuName: 'C',
            submenulist: [
                {
                    sublistname: 'C1'
                },
                {
                    sublistname: 'C2'
                },
                {
                    sublistname: 'C3'
                },
                {
                    sublistname: 'C4'
                },
                {
                    sublistname: 'C5'
                }
            ]
        },
        {
            menuName: 'D',
            submenulist: [
                {
                    sublistname: 'D1'
                },
                {
                    sublistname: 'D2'
                },
                {
                    sublistname: 'D3'
                },
                {
                    sublistname: 'D4'
                },
                {
                    sublistname: 'D5'
                }
            ]
        }
    ];
// =====================================================================================================================
// =====================================================================================================================
    
    $scope.footertitle = "Footer";


});