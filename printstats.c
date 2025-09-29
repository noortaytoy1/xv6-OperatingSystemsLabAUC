#include "types.h"
#include "stat.h"
#include "user.h"



double mean(double arr[], int n){
    double totalSum = 0.0;
    for (int i = 0; i < n; i++) {
        totalSum += arr[i];
    }
    return (double)(totalSum/n);
}
double median(double arr[], int n){
    double median = 0.0;
    if ((n - 1) % 2){
        median = (double) ( (arr[ (int) (n / 2) - 1 ] + arr[ (int)(n / 2)]) / 2.0 );
    }
    else{
        median = arr[ (int) (n) / 2];
    }
    return median;
}
double standardDeviation(double arr[], int n) {
    double m = mean(arr, n);
    double variance = 0;

    for (int i = 0; i < n; i++) {
        variance += (arr[i] - m) * (arr[i] - m);
    }
    variance /= n;  
    return fsqrt(variance);
}

int validNumber(const char *s){
    const char* startPointer = s;
    if (*s == '-'){
        startPointer++;
    }
    int dots = 0;

    while (*startPointer =='.' || (*startPointer >= '0' && *startPointer <= '9') ){
    if (*startPointer == '.'){
        dots +=1;
    }
    startPointer++;
    }
    if ( *startPointer != '\0'  || dots > 1){
        return -1;
    }
    return 1;

}

int main(int argc, char *argv[]){
    double numbers[argc - 1];
    if (argc == 1) {
        printf(1, "No arguments provided.\n");
        exit();
    }
    for (int i = 1; i < argc; i++){
        if (validNumber(argv[i]) == -1){
            printf(1, "wrong value at %s\n", argv[i]);
            exit();
        }
        numbers[i - 1] = atof(argv[i]); 
    }

    insertionSort(numbers, argc - 1);
    double meanValue = mean(numbers, argc - 1);
    double medianValue = median(numbers, argc - 1);
    double standardDeviationValue = standardDeviation(numbers, argc - 1);

    // print each value on its own line
    printf(1, "Mean: %f\n", meanValue);
    printf(1, "Median: %f\n", medianValue);
    printf(1, "Standard Deviation: %f\n", standardDeviationValue);
    return 0;
}
