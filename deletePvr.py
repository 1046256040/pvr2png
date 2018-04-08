#!/usr/bin/python
# -*-coding:utf-8-*-

# 批量把文件中".pvr.png"修改为".png"
import os, sys


# 递归修改路径中的".pvr.png"文件
def recursive_rename_files(path):
    currentFiles = os.listdir(path)  # 获取路径的文件
    for fileName in currentFiles:
        fullFileName = os.path.join(path, fileName)
        if fullFileName.endswith(".pvr.png"):
            rename_delete_pvr(fullFileName)
        if os.path.isdir(fullFileName):
            # 递归调用
            recursive_rename_files(fullFileName)

        # 修改文件名


def rename_delete_pvr(fileName):
    position = fileName.find(".pvr.png")
    # 字符串截取
    resultFileName = fileName[0:position] + fileName[-4:]
    # 文件重命名
    os.rename(fileName, resultFileName)


def main():
    currentPath = os.getcwd()
    recursive_rename_files(currentPath)


if __name__ == '__main__':
    main()