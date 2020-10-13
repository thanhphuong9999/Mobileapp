package company.khanhnd.shopapp.activity.ultil;

public class Server {

    //public static String localhost ="10.224.164.246:90";
    //public static String localhost ="10.226.132.10:90";
    public static String localhost ="192.168.43.92:90";
    //public static String localhost ="calla.ksechain.com";
    public static String duongDanLoaiSanPham ="http://"+ localhost +"/server/getloaisanpham.php";
    public static String duongDanSanPhamMoiNhat="http://"+ localhost+ "/server/getsanphammoinhat.php";
    public static String duongDanGiay = "http://"+ localhost+ "/server/getsanpham.php?page=";
    public static String duongDanSanPhamFlashSale = "http://"+ localhost+ "/server/getsanphamflashsale.php";
    public static String duongDanThongTinKhachHang ="http://"+ localhost +"/server/thongtinkhachhang.php";
    public static String duongDanChiTietDonHang ="http://"+ localhost +"/server/chitietdonhang.php";
    public static String signup ="http://"+ localhost +"/server/signup.php";
    public static String signin ="http://"+ localhost +"/server/signin.php";
    public static String tinnhan ="http://"+ localhost +"/server/tinnhan.php";
    public static String senmail ="http://"+ localhost +"/server/sendmailmuahang.php";
 }
