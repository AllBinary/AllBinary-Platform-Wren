// Generated Code Do Not Modify
// package org.apache.xmlrpc

import "../../../allbinary_java" for JObject, JException, JR

class XmlRpcClient is JObject {
  url { _url }
  url=(value) { _url = value }

  initFields_XmlRpcClient() {
    _url = null
        
  }
    

    construct new(url) {
    super()
    initFields_XmlRpcClient()
        _url = URL.new(url)
    }
    

    getURL() {
        return _url
    }
    

    setBasicAuthentication(user, password) {
    }
    

    execute(method, params) {
        return NullUtil.getInstance().NULL_OBJECT
    }
    

    executeWithCrypt(method, params, cryptInterface) {
        return NullUtil.getInstance().NULL_OBJECT
    }
}

import "../../../java/io/IOException" for IOException
import "../../../java/net/MalformedURLException" for MalformedURLException
import "../../../java/net/URL" for URL
import "../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../org/allbinary/init/crypt/jcehelper/CryptInterface" for CryptInterface
import "../../../org/allbinary/logic/NullUtil" for NullUtil
import "./XmlRpcHandler" for XmlRpcHandler
import "./XmlRpcException" for XmlRpcException

