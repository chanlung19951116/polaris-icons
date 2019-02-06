/* eslint-disable line-comment-position, camelcase */
const {dirname} = require('path');
const resolve = require('resolve');

const iconsPath = dirname(
  resolve.sync('@shopify/polaris-icons-raw/icons/polaris/add_minor.yml'),
);

module.exports = {
  siteMetadata: {
    title: `Icon Manager`,
    description: ``,
    author: `Shopify`,
  },
  plugins: [
    `gatsby-plugin-sass`,
    `gatsby-plugin-typescript`,
    `gatsby-plugin-react-helmet`,
    `gatsby-transformer-icons`,
    {
      resolve: `gatsby-source-filesystem`,
      options: {
        path: iconsPath,
      },
    },
    {
      resolve: `gatsby-plugin-manifest`,
      options: {
        name: `gatsby-starter-default`,
        short_name: `starter`,
        start_url: `/`,
        background_color: `#663399`,
        theme_color: `#663399`,
        display: `minimal-ui`,
        icon: `static/images/shopify-favicon.png`, // This path is relative to the root of the site.
      },
    },
    // this (optional) plugin enables Progressive Web App + Offline functionality
    // To learn more, visit: https://gatsby.app/offline
    // 'gatsby-plugin-offline',
  ],
};