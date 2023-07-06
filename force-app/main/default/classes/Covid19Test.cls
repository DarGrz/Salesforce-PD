@isTest
public class Covid19Test {

    @isTest
    static void testCovid19() {
        // Test case 1: Valid positive recoveredInArea value
        Integer recoveredInArea1 = 100;
        Covid19 covid19Instance1 = new Covid19(recoveredInArea1);
        Integer expectedRecoveredInArea1 = recoveredInArea1;
        Integer actualRecoveredInArea1 = covid19Instance1.getTreated();
        System.assertEquals(expectedRecoveredInArea1, actualRecoveredInArea1);

        // Test case 2: Zero recoveredInArea value
        Integer recoveredInArea2 = 0;
        Covid19 covid19Instance2 = new Covid19(recoveredInArea2);
        Integer expectedRecoveredInArea2 = recoveredInArea2;
        Integer actualRecoveredInArea2 = covid19Instance2.getTreated();
        System.assertEquals(expectedRecoveredInArea2, actualRecoveredInArea2);

        // Test case 3: Negative recoveredInArea value (should default to 0)
        Integer recoveredInArea3 = -50;
        Covid19 covid19Instance3 = new Covid19(recoveredInArea3);
        Integer expectedRecoveredInArea3 = 0;
        Integer actualRecoveredInArea3 = covid19Instance3.getTreated();
        System.assertEquals(expectedRecoveredInArea3, actualRecoveredInArea3);
    }

    @isTest
    static void testTreatPatient() {
        // Test case 1: Increment recoveredInArea and recoveredInCountry by 1
        Integer recoveredInArea = 100;
        Covid19 covid19Instance = new Covid19(recoveredInArea);
        covid19Instance.treatPatient();
        Integer expectedRecoveredInArea = recoveredInArea + 1;
        Integer actualRecoveredInArea = covid19Instance.getTreated();
        System.assertEquals(expectedRecoveredInArea, actualRecoveredInArea);

        Integer expectedRecoveredInCountry = recoveredInArea + 1;
        Integer actualRecoveredInCountry = Covid19.recoveredInCountry;
        System.assertEquals(expectedRecoveredInCountry, actualRecoveredInCountry);
    }
}