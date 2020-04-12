package beans;

import javax.xml.bind.annotation.XmlRootElement;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import model.Hospital;

@XmlRootElement
public class HospitalBean {
    int id;
    private String hospitalName;
    private String hospitalAddress;
    private String hospitalUsername;
    private String hospitalPassword;
    private String appointmentCharge;
    private String adminID;
    private String hospitalPhone;

    public HospitalBean() {}

    public HospitalBean(String hosp) {

        JsonObject scheduleObject = new JsonParser().parse(hosp).getAsJsonObject();

        if (scheduleObject.get("hospitalID") !=null) {
            this.id = scheduleObject.get("hospitalID").getAsInt();
        }
        this.hospitalName = scheduleObject.get("hospitalName").getAsString();
        this.hospitalAddress = scheduleObject.get("hospitalAddress").getAsString();
        this.hospitalUsername = scheduleObject.get("hospitalUsername").getAsString();
        this.hospitalPassword = scheduleObject.get("hospitalPassword").getAsString();
        this.appointmentCharge = scheduleObject.get("appointmentCharge").getAsString();
        this.adminID = scheduleObject.get("adminID").getAsString();
        this.hospitalPhone = scheduleObject.get("hospitalPhone").getAsString();

    }

    public HospitalBean(int id, String hospitalName, String hospitalAddress, String hospitalUsername, String hospitalPassword, String appointmentCharge, String adminID, String hospitalPhone) {

        this.id = id;
        this.hospitalName = hospitalName;
        this.hospitalAddress = hospitalAddress;
        this.hospitalUsername = hospitalUsername;
        this.hospitalPassword = hospitalPassword;
        this.appointmentCharge = appointmentCharge;
        this.adminID = adminID;
        this.hospitalPhone = hospitalPhone;

    }

    public HospitalBean(String hospitalName, String hospitalAddress, String hospitalUsername, String hospitalPassword, String appointmentCharge, String adminID, String hospitalPhone){

        this.hospitalName = hospitalName;
        this.hospitalAddress = hospitalAddress;
        this.hospitalUsername = hospitalUsername;
        this.hospitalPassword = hospitalPassword;
        this.appointmentCharge = appointmentCharge;
        this.adminID = adminID;
        this.hospitalPhone = hospitalPhone;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getHospitalName() {
        return hospitalName;
    }

    public void setHospitalName(String hospitalName) {
        this.hospitalName = hospitalName;
    }

    public String getHospitalAddress() {
        return hospitalAddress;
    }

    public void setHospitalAddress(String hospitalAddress) {
        this.hospitalAddress = hospitalAddress;
    }

    public String getHospitalUsername() {
        return hospitalUsername;
    }

    public void setHospitalUsername(String hospitalUsername) {
        this.hospitalUsername = hospitalUsername;
    }

    public String getHospitalPassword() {
        return hospitalPassword;
    }

    public void setHospitalPassword(String hospitalPassword) {
        this.hospitalPassword = hospitalPassword;
    }

    public String getAppointmentCharge() {
        return appointmentCharge;
    }

    public void setAppointmentCharge(String appointmentCharge) {
        this.appointmentCharge = appointmentCharge;
    }

    public String getAdminID() {
        return adminID;
    }

    public void setAdminID(String adminID) {
        this.adminID = adminID;
    }

    public String getHospitalPhone() {
        return hospitalPhone;
    }

    public void setHospitalPhone(String hospitalPhone) {
        this.hospitalPhone = hospitalPhone;
    }

}
