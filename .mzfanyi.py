#!/usr/bin/python 
#-*- encoding: utf-8 -*- 
"""
# 作者: 启佑 (maoqiyou@163.com)
# 时间: 2013-11-29
# 文件: mzfanyi.py

"""
import sys
import urllib2
import urllib
import json
import argparse
from argparse import RawTextHelpFormatter

reload(sys)
sys.setdefaultencoding('utf-8')


# 查询函数
def queryTranslate(queryStr):
    youdao_url_json ="http://fanyi.youdao.com/openapi.do?keyfrom=" \
            +"mlovez-dev&key=1341364669&type=data&doctype=json&version=1.1&"

    resultJson ="" 
    try:
        response =urllib2.urlopen(youdao_url_json \
                +urllib.urlencode({'q':queryStr}))
        resultJson =response.read()

    except Exception, e:
        print "--> Exception catched :"
        print e

    return resultJson
    

# 主函数
def main(words) :
    KEY_ERRORCODE ='errorCode'
    KEY_BASIC ='basic'
    KEY_PHONETIC ='phonetic'
    KEY_EXPLAINS ='explains'
    KEY_TRANSLATION ='translation'
    
    print "查询：\n    " +words
    jsonObj =json.loads(queryTranslate(words))

    if jsonObj !=None and jsonObj.has_key(KEY_ERRORCODE) \
            and jsonObj[KEY_ERRORCODE] ==0 :
        if jsonObj.has_key(KEY_BASIC) :
            if jsonObj[KEY_BASIC].has_key(KEY_PHONETIC) :
                print u"音标：\n    [" \
                        +jsonObj[KEY_BASIC][KEY_PHONETIC] +"]"
            if jsonObj[KEY_BASIC].has_key(KEY_EXPLAINS) :
                print u"词典：" 
                for v in jsonObj[KEY_BASIC][KEY_EXPLAINS] :
                    print "    " +v
        if jsonObj.has_key(KEY_TRANSLATION) :
            print u"翻译："
            for t in jsonObj[KEY_TRANSLATION] :
                print "    " +t

    else :
        print words
        print u"没有相应的翻译 ..."


if __name__ == "__main__" :
    # 命令行参数解释器
    helpStr =u"要翻译的英文或中文，如果有空格或标点请加引号\n" \
            +u"（因为Bash对于末尾感叹号处理缺陷原因，当末尾\n" \
            +u"有感叹号时最好用单引号）"
    descStr =u"一个简单的命令行翻译程序"
    parser =argparse.ArgumentParser(description=descStr, \
                formatter_class=RawTextHelpFormatter)
    parser.add_argument("words", action="store", help=helpStr)
    args =parser.parse_args()
    # main() 函数
    main(args.words)
    exit(0)


