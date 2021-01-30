function printPlugin(num){
    for(num = 1; num <= 10; num++){
        if(num % 2 == 0 && num % 5 == 0){
            console.log("plugin");
        }else if(num % 2 == 0){
            console.log("plug");
        }else if(num % 5 == 0){
            console.log("in");
        }else{
            console.log(num);
        }
    }
}
printPlugin();