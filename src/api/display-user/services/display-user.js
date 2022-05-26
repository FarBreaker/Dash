'use strict';

/**
 * display-user service.
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::display-user.display-user');
