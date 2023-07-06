@isTest
public class FitnessTest {

    @isTest
    public static void testCalculateBMI() {
        // Test case 1: Valid inputs
        Decimal weight1 = 68.5;
        Decimal height1 = 1.75;
        Decimal expectedBMI1 = 22.408163265306122448979591836734;
        Decimal actualBMI1 = Fitness.calculateBMI(weight1, height1);
        System.assertEquals(expectedBMI1, actualBMI1);

        // Test case 2: Negative weight
        Decimal weight2 = -65.2;
        Decimal height2 = 1.65;
        Decimal expectedBMI2 = -1;
        Decimal actualBMI2 = Fitness.calculateBMI(weight2, height2);
        System.assertEquals(expectedBMI2, actualBMI2);

        // Test case 3: Zero height
        Decimal weight3 = 75.0;
        Decimal height3 = 0;
        Decimal expectedBMI3 = -1;
        Decimal actualBMI3 = Fitness.calculateBMI(weight3, height3);
        System.assertEquals(expectedBMI3, actualBMI3);
    }

    @isTest
    public static void testCalculatePace() {
        // Test case 1: Valid inputs
        Decimal distance1 = 10.0;
        Decimal minutes1 = 60.0;
        Decimal expectedPace1 = 10.0;
        Decimal actualPace1 = Fitness.calculatePace(distance1, minutes1);
        System.assertEquals(expectedPace1, actualPace1);

        // Test case 2: Negative distance
        Decimal distance2 = -5.5;
        Decimal minutes2 = 45.0;
        Decimal expectedPace2 = -1;
        Decimal actualPace2 = Fitness.calculatePace(distance2, minutes2);
        System.assertEquals(expectedPace2, actualPace2);

        // Test case 3: Zero minutes
        Decimal distance3 = 20.0;
        Decimal minutes3 = 0;
        Decimal expectedPace3 = -1;
        Decimal actualPace3 = Fitness.calculatePace(distance3, minutes3);
        System.assertEquals(expectedPace3, actualPace3);
    }
}