
import os
import sys

video_srt = "MyVideo.srt"
video_txt = "MyVideo.txt"
film_path = "/usr/local/myTomcat/apache-tomcat-8.5.65/webapps/MyLinuxServerForFileTransaction/upload"
def srt2txt(path):

    path1 = path+os.sep+video_srt
    sys.path.append(path1)

    filename = video_srt

    portion = os.path.splitext(filename)
    # 如果后缀是.txt

    try:
        # 重新组合文件名和后缀名
        newname = portion[0] + ".txt"
        filenamedir = path +os.sep+ filename
        newnamedir = path +os.sep+  newname
        os.rename(filenamedir, newnamedir)
        filename = newnamedir
    except:
        print('error')
    return filename


def txt2srt(path):

    path1 = path+os.sep+video_txt
    sys.path.append(path1)

    filename = 'MyVideo.txt'

    portion = os.path.splitext(filename)
    # 如果后缀是.txt

    try:
        # 重新组合文件名和后缀名
        newname = portion[0] + ".srt"
        filenamedir = path + os.sep + filename
        newnamedir = path + os.sep + newname
        os.rename(filenamedir, newnamedir)
        filename = newnamedir
    except:
        print('error')
    return filename


def json(path):
    # [
    #     {"id": 1, "start_time": "00:00:01,536", "end_time": "00:00:02,560", "text": "质量吗"},
    #     {"id": 2, "start_time": "00:00:02,816", "end_time": "00:00:03,584", "text": "好了"}
    # ]
    # path = "Desktop"
    file1 = open(path+os.sep+video_txt, mode='r',encoding= 'utf-8')
    file2 = open(path + os.sep+'subtitle.txt', mode='a')
    contents = file1.readlines()
    j=0
    file2.write("[")
    for i in range(int((len(contents)+1)/4)):
        if i != int((len(contents)+1)/4)-1:
            sentence_id = "    {\"id\": " + contents[j][0:-1] + ", " + "\"start_time\": " + "\"" + contents[j+1][0:12] + "\", " + "\"" + "end_time" + "\": " + "\""+ contents[j+1][17:-1] + "\", "+"\""+"text"+"\": "+ "\"" + contents[j+2][0:-1] + "\"},"
        else:
            sentence_id = "    {\"id\": " + contents[j][0:-1] + ", " + "\"start_time\": " + "\"" + contents[j + 1][
                                                                                                   0:12] + "\", " + "\"" + "end_time" + "\": " + "\"" + \
                          contents[j + 1][17:-1] + "\", " + "\"" + "text" + "\": " + "\"" + contents[j + 2][
                                                                                            0:-1] + "\"}"


        file2.write('\n' + sentence_id)
        j+=4

    file2.write('\n'+"]")
    file1.close()
    file2.close()


    path1 = path + os.sep + 'subtitle.txt'
    sys.path.append(path1)
    filename = 'subtitle.txt'
    portion = os.path.splitext(filename)
    # 如果后缀是.txt
    try:
        # 重新组合文件名和后缀名
        newname = portion[0] + ".json"
        filenamedir = path + os.sep + filename
        newnamedir = path + os.sep + newname
        os.rename(filenamedir, newnamedir)
        filename = newnamedir
    except FileExistsError:
        newname = portion[0] + ".json"
        filenamedir = path + os.sep + filename
        newnamedir = path + os.sep + newname
        os.remove(newnamedir)
        os.rename(filenamedir, newnamedir)
        filename = newnamedir

    return filename


if __name__ == "__main__":

    path = srt2txt(film_path)

    json(film_path)

    path1 = txt2srt(film_path )
