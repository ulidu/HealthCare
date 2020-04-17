package com.paf;

import beans.HospitalBean;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import model.Hospital;

import javax.annotation.security.RolesAllowed;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

@Path("/Hospitals")
public class HospitalService {

    Hospital hospitalObj = new Hospital();

    @RolesAllowed("admin")
    @GET
    @Path("/")
    @Produces(MediaType.APPLICATION_JSON)
    public List<HospitalBean> readHospital() {
        return hospitalObj.readHospital();
    }

    @POST
    @Path("/")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.TEXT_PLAIN)
    public String insertHospital(String hospitalData) {

        HospitalBean hosp = new HospitalBean(hospitalData);
        String output = hospitalObj.insertHospital(hosp);

        return output;

    }

    @PUT
    @Path("/")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.TEXT_PLAIN)
    public String updateHospital(String hospitalData) {

        HospitalBean hosp = new HospitalBean(hospitalData);
        String output = hospitalObj.updateHospital(hosp);

        return output;

    }

    @DELETE
    @Path("/")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.TEXT_PLAIN)
    public String deleteHospital(String hospitalData) {

        JsonObject hospitalObject = new JsonParser().parse(hospitalData).getAsJsonObject();
        String hospitalID = hospitalObject.get("hospitalID").getAsString();

        String output = hospitalObj.deleteHospital(hospitalID);

        return output;

    }

}
