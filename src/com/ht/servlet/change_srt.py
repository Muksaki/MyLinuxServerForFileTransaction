import json
import os
import sys


change_path = "/usr/local/myTomcat/apache-tomcat-8.5.65/webapps/MyLinuxServerForFileTransaction/upload/tmp.txt"
video_srt = "MyVideo.srt"
video_txt = "MyVideo.txt"
film_path = "/usr/local/myTomcat/apache-tomcat-8.5.65/webapps/MyLinuxServerForFileTransaction/upload"


def change(path):
    file0 = open(path,mode = 'r',encoding='utf-8')
    dat = file0.readlines()
    id = dat[0]
    text = dat[1]
    file0.close()

    srt2txt(film_path)

    file1 = open(film_path + os.sep + video_txt, mode='r', encoding='utf-8')
    contents = file1.readlines()
    for i in range(len(contents)):
        if contents[i] == id:
            print(contents[i])
            contents[i+2] = text + '\n'
            print(contents[i+2])
    file1.close()
    file1 = open(film_path + os.sep + video_txt, mode='w', encoding='utf-8')
    file1.writelines(contents)
    file1.close()
    txt2srt(film_path)




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
    # sys.path.append(path1)

    filename = 'MyVideo.txt'

    portion = os.path.splitext(filename)
    # 如果后缀是.txt

    # try:
        # 重新组合文件名和后缀名
    newname = portion[0] + ".srt"
    filenamedir = path + os.sep + filename
    newnamedir = path + os.sep + newname
    os.rename(filenamedir, newnamedir)
    filename = newnamedir
    # except:

    # return filename


if __name__ == "__main__":
    path = change_path
    change(path)
    os.remove(change_path)
