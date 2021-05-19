namespace planets.test.db;

using {personnel.test.db.Employees as Employees} from '../db/planets';

using {
    cuid,
    managed
} from '@sap/cds/common';

entity Planets : cuid, managed {
    planet_name : String(100);
    star_system : String(100);
    employees   : Association to many Employees
                      on employees.planet = $self;
}
