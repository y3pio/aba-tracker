package io.y3p.aba_tracker;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.TestPropertySource;

@SpringBootTest
@TestPropertySource(properties = {
	"spring.flyway.enabled=false"
})
class AbaTrackerApplicationTests {

	@Test
	void contextLoads() {
	}

}
