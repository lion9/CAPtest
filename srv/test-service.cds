using { personnel.test.db as personnelDB } from '../db/personnel';
using { planets.test.db as planetsDB } from '../db/planets';

service EmployeeService {

    entity Employees as projection on personnelDB.Employees;
    entity Planets as projection on planetsDB.Planets;

}
