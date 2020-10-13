package company.khanhnd.shopapp.activity.activity;

import android.app.ProgressDialog;
import android.content.Intent;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import java.util.HashMap;
import java.util.Map;

import company.khanhnd.shopapp.R;
import company.khanhnd.shopapp.activity.ultil.Server;
import company.khanhnd.shopapp.activity.ultil.checkconnect;

public class LienHeActivity extends AppCompatActivity {
    Toolbar lienhe;
    EditText edtenkhachhang,edsdt,edemail, edmessage;
    Button btsend;
    private ProgressDialog pDialog;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_lien_he);
        anhxa();
        ActionToolbar();

        if(checkconnect.isNetworkAvailable(getApplicationContext())){
           eventButton();
        }
        else{
            checkconnect.ShowToast_Short(getApplicationContext(),"Bạn hãy kiểm tra lại kết nối");
        }

    }



    private void eventButton() {
       btsend.setOnClickListener(new View.OnClickListener() {
           @Override
           public void onClick(View v) {
               pDialog.show();
               final String name = edtenkhachhang.getText().toString().trim();
               final String email = edemail.getText().toString().trim();
               final String phone = edsdt.getText().toString().trim();
               final String message = edmessage.getText().toString().trim();
               if(name.length()>0&&email.length()>0&&phone.length()>0&&message.length()>0){
                    RequestQueue requestQueue = Volley.newRequestQueue(getApplicationContext());
                    StringRequest stringRequest = new StringRequest(Request.Method.POST, Server.tinnhan, new Response.Listener<String>() {
                        @Override
                        public void onResponse(String response) {
                            Log.d("khanhnd",response);
                            if(response!=null) {
                                Intent intent = new Intent(getApplicationContext(),MainActivity.class);
                                startActivity(intent);
                                checkconnect.ShowToast_Short(getApplicationContext(),"Mời bạn tiếp tục mua sắm");
                                checkconnect.ShowToast_Short(getApplicationContext(),"Bạn đã gửi tin nhắn thành công");
                            }else{
                                checkconnect.ShowToast_Short(getApplicationContext(),"Du lieu da bi loi");
                            }
                        }
                    }, new Response.ErrorListener() {
                        @Override
                        public void onErrorResponse(VolleyError error) {

                        }
                    }){
                        @Override
                        protected Map<String, String> getParams() throws AuthFailureError {
                            HashMap<String, String> hashMap = new HashMap<String, String>();
                            hashMap.put("name",name);
                            hashMap.put("email",email);
                            hashMap.put("phone",phone);
                            hashMap.put("message",message);
                            return hashMap;
                        }
                    };
                    requestQueue.add(stringRequest);
               }else {
                    checkconnect.ShowToast_Short(getApplicationContext(),"Hãy kiểm tra dữ liệu");
               }
           }
       });
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menuu,menu);
        return true;
    }


    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch(item.getItemId()){
            case R.id.menugiohang:
                Intent intent=new Intent(getApplicationContext(), Giohang.class);
                startActivity(intent);
        }
        return super.onOptionsItemSelected(item);
    }

    private void ActionToolbar() {

        setSupportActionBar(lienhe);
        ActionBar actionBar=getSupportActionBar();
        assert actionBar != null;
        actionBar.setDisplayHomeAsUpEnabled(true);
        lienhe.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
    }
    private void anhxa() {
        lienhe = findViewById(R.id.toolbarlienhe);
        edtenkhachhang=findViewById(R.id.edittexttenkhachhanglienhe);
        edsdt=findViewById(R.id.edittextsodienthoailienhe);
        edemail=findViewById(R.id.edittextemaillienhe);
        edmessage=findViewById(R.id.noidung);
        btsend=findViewById(R.id.buttonsend);
        pDialog = new ProgressDialog(this);
        pDialog.setMessage("Đang gửi...");
        pDialog.setCanceledOnTouchOutside(false);
    }
}

