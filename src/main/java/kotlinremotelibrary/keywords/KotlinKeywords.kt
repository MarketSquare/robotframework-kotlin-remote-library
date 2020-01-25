package kotlinremotelibrary.keywords
import org.robotframework.javalib.annotation.ArgumentNames
import org.robotframework.javalib.annotation.RobotKeyword
import org.robotframework.javalib.annotation.RobotKeywords
@RobotKeywords
class KotlinKeywords {
  @RobotKeyword("Print Message")
  @ArgumentNames("message")
  fun printMessage(message:String) {
    println(message)
  }
}
