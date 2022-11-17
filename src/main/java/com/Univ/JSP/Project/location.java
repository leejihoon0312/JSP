package com.Univ.JSP.Project;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.Iterator;

@JsonIgnoreProperties
public class location {

    private static String GEOCODE_URL="https://dapi.kakao.com/v2/local/geo/coord2address.json?";
    private static String GEOCODE_USER_INFO="KakaoAK 111e6bb27d40bdb8fee9064791def867";

    private String x;
    private String y;

    public String loadLocation(){
        URL obj;
        String region_3depth_name = "null";
        try {

            String coordinatesystem = "WGS84";

            obj = new URL(GEOCODE_URL + "x=" + x + "&y=" + y + "&input_coord=" + coordinatesystem);

            HttpURLConnection con = (HttpURLConnection) obj.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("Authorization", GEOCODE_USER_INFO);
            con.setRequestProperty("content-type", "application/json");
            con.setDoOutput(true);
            con.setUseCaches(false);

            Charset charset = Charset.forName("UTF-8");
            BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream(), charset));
            String inputLine;
            StringBuffer response = new StringBuffer();

            while ((inputLine = in .readLine()) != null) {
                response.append(inputLine);
            }

            System.out.println(response.toString());
            JsonParser parser = new JsonParser();
            JsonElement element = parser.parse(response.toString());
            
            JsonArray documents = element.getAsJsonObject().get("documents").getAsJsonArray();
            JsonElement jsonElement = documents.get(0);
            JsonObject address = jsonElement.getAsJsonObject().get("address").getAsJsonObject();
            region_3depth_name = address.getAsJsonObject().get("region_3depth_name").getAsString();
            System.out.println("region_3depth_name1 = " + region_3depth_name);


        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return region_3depth_name;
    }


    public String getX() {
        return x;
    }

    public void setX(String x) {
        this.x = x;
    }

    public String getY() {
        return y;
    }

    public void setY(String y) {
        this.y = y;
    }


}
