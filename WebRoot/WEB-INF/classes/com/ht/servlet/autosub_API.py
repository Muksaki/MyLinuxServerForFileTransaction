import sys
sys.path.append('/usr/local/myTomcat/apache-tomcat-8.5.65/webapps/MyLinuxServerForFileTransaction/WEB-INF/classes/com/ht')
sys.path.append('/usr/local/myTomcat/apache-tomcat-8.5.65/webapps/MyLinuxServerForFileTransaction/WEB-INF/classes/com/ht/servlet')
# import baidusub3.main as autosub
import main as autosub
videopath = '/usr/local/myTomcat/apache-tomcat-8.5.65/webapps/MyLinuxServerForFileTransaction/upload/MyVideo.mp4'#Notice that the video path should be changable.For different upload videos have different names.


if __name__ == '__main__':
    result = autosub.start(videopath=videopath)
    print(result)

