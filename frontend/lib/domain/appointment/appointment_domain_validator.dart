import 'package:frontend/domain/appointment/appointment_date_domain.dart';
import 'package:frontend/domain/appointment/appointment_desc_domain.dart';
import 'package:frontend/domain/appointment/appointment_gmt_domain.dart';
import 'package:frontend/domain/appointment/appointment_status_domain.dart';
import 'package:frontend/domain/appointment/appointment_time_domain.dart';
import 'package:frontend/domain/appointment/appointment_title_domain.dart';
import 'package:frontend/domain/appointment/appointment_userid_domain.dart';

class AppointmentDomainValidator {
  String? validateAppointmentDate(String? appointmentDate) {
    try {
      // validate the date string
      AppointmentDate(appointment_date: appointmentDate);
      return null;
    } catch (e) {
      return e.toString().substring(10);
    }
  }

  String? validateAppointmentbody(String? appointmentbody) {
    try {
      // validate the body string
      AppointmentBodyDomain(app_body: appointmentbody);
      return null;
    } catch (e) {
      return e.toString().substring(10);
    }
  }

  String? validateAppointmentTitle(String? appointmentTitle) {
    try {
      // validate the time string
      AppointmentTitle(appointment_title: appointmentTitle);
      return null;
    } catch (e) {
      return e.toString().substring(10);
    }
  }

  String? validateAppointmentTime(String? appointmentTime) {
    try {
      // validate the time string
      AppointmentTimeDomain(time: appointmentTime);
      return null;
    } catch (e) {
      return e.toString().substring(10);
    }
  }

  String? validateAppointmentStatus(String appointmentStatus) {
    try {
      // validate the time string
      AppointmentStatusDomain(appointment_status: appointmentStatus);
      return null;
    } catch (e) {
      return e.toString().substring(10);
    }
  }

  String? validateAppointmentGmt(String? appointmentgmt) {
    try {
      AppointmentGmtDomain(appointmentGmt: appointmentgmt);
      return null;
    } catch (e) {
      return e.toString().substring(10);
    }
  }

  String? validateAppointmentuserId(String? appointmentuserid) {
    try {
      // validate the time string
      AppointmentUserId(user_id: appointmentuserid);
      return null;
    } catch (e) {
      return e.toString().substring(10);
    }
  }
}
