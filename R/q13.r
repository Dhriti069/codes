








printf("Enter the amount to be withdrawn (in hundreds): ");
    scanf("%d",&amount);
   
    //calculations
    printf("\n\nRequired notes of Rs. 100  :  %d", amount / 100);
    // e.g. if amount entered is 987 then 987 / 100 will answer 9 (because amount is an intiger variable) 
   
    printf("\n\nRequired notes of Rs. 50   :  %d", (amount % 100) / 50);
    //e.g. 987 % 100 will answer 87 and then 87 / 50 will answer 1.
   
    printf("\n\nRequired notes of Rs. 10   :  %d", (((amount % 100) % 50) / 10));
   
    printf("\n\nAmount still remaining Rs. :  %d", (((amount % 100) % 50) % 10));