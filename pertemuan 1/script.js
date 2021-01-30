function checkGrade(nilai){
    if(nilai > 100){
        console.log("anda terlalu cerdas!");
    }else if(nilai <= 100 && nilai >= 79 ) {
        console.log(" A");
        
    } else if( nilai <= 78 && nilai >= 65) {
        console.log(" B");

    }else if(nilai <= 65 && nilai >= 50){
        console.log(" C");

    }else{
        console.log(" D");
    
    }

}
checkGrade(100);
checkGrade(78);
checkGrade(60);
checkGrade(10);
checkGrade(105);