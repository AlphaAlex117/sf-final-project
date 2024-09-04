// const { jestConfig } = require('@salesforce/sfdx-lwc-jest/config');

// module.exports = {
//     ...jestConfig,
//     modulePathIgnorePatterns: ['<rootDir>/.localdevserver']
// };

const { jestConfig } = require('@salesforce/sfdx-lwc-jest/config');
module.exports = {
    ...jestConfig,
    modulePathIgnorePatterns: ['<rootDir>/.localdevserver'],
    testPathIgnorePatterns: ['<rootDir>/node_modules/'],
};
