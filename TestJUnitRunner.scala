import org.junit.Assert.assertTrue
import org.junit.runner.RunWith
import org.scalatest.FunSuite
import org.scalatest.junit.JUnitRunner

@RunWith(classOf[JUnitRunner])
class Test extends FunSuite {
  test("This test should not be skipped") {
    assertTrue(true)
  }
}
