package petshop;

import org.junit.jupiter.api.Test;
import com.intuit.karate.Runner;


public class PetShopRunner {

    @Test
    void testParallel(){
        Runner.path("classpath:*").tags("~@ignore").parallel(4);
    }

}
