package kotlinremotelibrary
import org.robotframework.javalib.library.AnnotationLibrary
import org.robotframework.remoteserver.RemoteServer

class KotlinRemoteLibraryServer:AnnotationLibrary("kotlinremotelibrary/keywords/*Keywords.class") {
  override fun getKeywordDocumentation(keywordName:String):String {
    if (keywordName == "__intro__")
    {
      return "Intro"
    }
    return super.getKeywordDocumentation(keywordName)
  }
  companion object {
    @Throws(Exception::class)
    @JvmStatic fun main(args:Array<String>) {
      RemoteServer.configureLogging()
      val server = RemoteServer()
      server.addLibrary(KotlinRemoteLibraryServer::class.java, 8270)
      server.start()
    }
  }
}
