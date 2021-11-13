from pydub import AudioSegment
import os
import shutil
replace_path = "/usr/local/myTomcat/apache-tomcat-8.5.65/webapps/MyLinuxServerForFileTransaction/audioupload/" #Average audio volume
temp_path = "/usr/local/myTomcat/apache-tomcat-8.5.65/webapps/MyLinuxServerForFileTransaction/upload/temp"




def replace(path):  # 传入存储的list
    for file in os.listdir(path):
        file_path = os.path.join(path, file)
        if os.path.splitext(file)[1] == '.wav':
            id = int(os.path.splitext(file)[0][7:])
            print(id)
            temp_wav_path = temp_path+os.sep+"temp"+str(id)+".wav"
            print(temp_wav_path,"  ",file_path)
            os.remove(temp_wav_path)
            shutil.move(file_path, temp_wav_path)



if __name__ == '__main__':
    replace(replace_path)
