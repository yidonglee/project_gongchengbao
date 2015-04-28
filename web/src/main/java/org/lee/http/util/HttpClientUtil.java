package org.lee.http.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;

public class HttpClientUtil {
	

	public final static void main(String[] args) throws Exception {long responseLength = 0;       //响应长度
    String responseContent = null; //响应内容
    HttpClient httpClient = new DefaultHttpClient(); //创建默认的httpClient实例
    String reqURL = "http://baike.baidu.com/view/13072803.htm";
    HttpGet httpGet = new HttpGet(reqURL);           //创建org.apache.http.client.methods.HttpGet
    try{
        HttpResponse response = httpClient.execute(httpGet); //执行GET请求
        HttpEntity entity = response.getEntity();            //获取响应实体
        if(null != entity){
            responseLength = entity.getContentLength();
            responseContent = EntityUtils.toString(entity, "UTF-8");
            EntityUtils.consume(entity); //Consume response content
        }
        System.out.println("请求地址: " + httpGet.getURI());
        System.out.println("响应状态: " + response.getStatusLine());
        System.out.println("响应长度: " + responseLength);
        System.out.println("响应内容: " + responseContent);
    }catch(ClientProtocolException e){
    }catch(ParseException e){
    }catch(IOException e){
    }finally{
        httpClient.getConnectionManager().shutdown(); //关闭连接,释放资源
    }
    }
}
