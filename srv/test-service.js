const cds = require('@sap/cds');

module.exports = (srv) => {

    srv.after('READ', 'Employees', (each) => {
        return each.last_name = 'MR.' + each.last_name.toUpperCase();
    });

    srv.before('CREATE', 'Employees', async (req) => {
        const { first_name, last_name } = req.data;
        if (first_name === 'Darth' && last_name === 'Vader') throw new Error('Name cannot be Darth Vader');
    })
}