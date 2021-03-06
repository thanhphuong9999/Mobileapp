package company.khanhnd.shopapp.activity.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.squareup.picasso.Picasso;

import java.text.DecimalFormat;
import java.util.ArrayList;

import company.khanhnd.shopapp.R;
import company.khanhnd.shopapp.activity.model.Sanpham;

public class PhukienAdapter extends BaseAdapter {
    Context context;
    ArrayList<Sanpham>arrayListdep;
    public PhukienAdapter(Context context, ArrayList<Sanpham> arrayListdep) {
        this.context = context;
        this.arrayListdep = arrayListdep;
    }

    @Override
    public int getCount() {
        return arrayListdep.size();
    }

    @Override
    public Object getItem(int position) {
        return arrayListdep.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }
    public class ViewHolder {
        public TextView txttendep,txtgiadep,txtmotadep;
        public ImageView imgdep;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        PhukienAdapter.ViewHolder viewHolder = null;
        if (convertView==null){
            viewHolder=new PhukienAdapter.ViewHolder();
            LayoutInflater inflater= (LayoutInflater) context.getSystemService(context.LAYOUT_INFLATER_SERVICE);
            convertView=inflater.inflate(R.layout.chitiet_phukien,null);
            viewHolder.txttendep=convertView.findViewById(R.id.textviewtendep);
            viewHolder.txtgiadep=convertView.findViewById(R.id.textviewgiadep);
            viewHolder.txtmotadep=convertView.findViewById(R.id.textviewmotadep);
            viewHolder.imgdep=convertView.findViewById(R.id.imagedep);
            convertView.setTag(viewHolder);
        }else{
            viewHolder= (PhukienAdapter.ViewHolder) convertView.getTag();
        }
        Sanpham sanpham= (Sanpham) getItem(position);
        viewHolder.txttendep.setText(sanpham.getTensanpham());
        DecimalFormat decimalFormat =new DecimalFormat("###,###,###");
        viewHolder.txtgiadep.setText("Giá: "+ decimalFormat.format(sanpham.getGiasanpham())+"Đ");
        viewHolder.txtmotadep.setMaxLines(2);
        viewHolder.txtmotadep.setEllipsize(TextUtils.TruncateAt.END);
        viewHolder.txtmotadep.setText(sanpham.getMotasanpham());
        Picasso.get().load(sanpham.getHinhanhsanpham())
                .placeholder(R.drawable.noimage)
                .error(R.drawable.error)
                .into(viewHolder.imgdep);
        return convertView;
    }
}
