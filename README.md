微信域名认证工具，输入路径、token、port启动认证服务器，在微信公众号进行填写后认证即可，例如http://example.com/Xweixin_pathX，token007端口80，那么在启动的时候进行相应输入即可path:Xweixin_pathX,token:token00，注意：微信认证只支持80端口，如果绑定了非80端口那么需要使用nginx进行转发到相应端口：）
