package charcters;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import spinnerCalendar.SpinnerEvent;
import spinnerCalendar.Status;
import spinnerClass.SpinnerClass;
import spinnerClass.SpinnerClassUtils;
import utils.DateUtils;

public class PersonsUtils {
	/*public static String addPersonToPersonList(Person p) throws Exception {
		Persons studentInstance = Persons.getPersonsInstance();
		studentInstance.addPerson(p);
		return "Person: <" + p.getId() + "> was added succesfuly to Person List";
	}*/

/*	public static Student addSPersonToPersonList(String pn, String fn, String ln, String add, String e, Date bd) throws Exception {
		Person p = new Person(pn, fn, ln, add, e, bd);
		addPersonToPersonList(p);
		return p;
	}
*/
/*	public static Person addSPersonToPersonList(String pn, String fn, String ln, String add, String e, String bd) throws Exception {
		Date bDate = DateUtils.stringToStudentBirthDate(bd);
		return addSPersonToPersonList(pn, fn, ln, add, e, bDate);
	}*/

/*	public static Person getPerson(int personId) throws Exception {
		Persons personsInstance = Persons.getPersonsInstance();
		Person p = personsInstance.getPerson(personId);
		return p;
	}*/
/*
	public static void assignStudentToClass(int studentId, int classId) throws Exception {
		Persons studentsInstance = Persons.getPersonsInstance();
		Student s = studentsInstance.getPerson(studentId);
		SpinnerClass sc = SpinnerClassUtils.getSpinnerClass(classId);
		s.addToClass(sc);
	}

	public static void unAssignStudentFromClass(int studentId, int classId) throws Exception {
		Persons studentsInstance = Persons.getPersonsInstance();
		studentsInstance.unAssignStudentFromClass(studentId,classId);
		
	}*/

/*	public static HashMap<Integer, SpinnerClass> getPersonSpinnerClasses(int studentId) throws Exception {
		Persons studentsInstance = Persons.getPersonsInstance();
		Student s = studentsInstance.getPerson(studentId);
		return s.getCalssList();
	}*/
}
