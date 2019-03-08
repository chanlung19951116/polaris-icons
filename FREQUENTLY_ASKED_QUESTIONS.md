# Polaris Icons: frequently asked questions

## Search

### Some icons are in Sketch/Abstract, but not on https://polaris-icons.shopify.com, why?

We’re currently working on making all icons that are available in Sketch / Abstract be also available on https://polaris-icons.shopify.com and in the [`@shopify/polaris-icons` npm package](https://npmjs.com/package/@shopify/polaris-icons).

Thank you for your patience!

If you want to help adding missing icons from Abstract into the polaris-icons project, get in touch in [#polaris-tooling](https://shopify.slack.com/messages/CCNUS0FML) on Slack.

---

## Development

### Can I use `@shopify/polaris-icons` if I’m not using React?

Not yet. Support for other use cases than React, such as vanilla JS, Android, and iOS, are on the roadmap: watch this space!

### How to use `@shopify/polaris-icons` with the `@shopify/polaris` `Icon` component?

You can use `@shopify/polaris`’s [`Icon` component](https://polaris.shopify.com/components/images-and-icons/icon) like so:

1. Make sure your app is using `@shopify/polaris` version [`3.10.0`](https://github.com/Shopify/polaris-react/releases/tag/v3.10.0) or higher
2. Add Polaris Icons as a dependency:

   ```bash
   yarn add @shopify/polaris-icons
   ```

3. Import both the `Icon` component from Polaris and an icon from Polaris Icons:

   ```tsx
   import {Icon} from '@shopify/polaris';
   import {CircleInformationMajorTwotone} from '@shopify/polaris-icons';
   ```

4. Pass the imported icon to the `source` prop of the Icon component:

   ```tsx
   <Icon source={CircleInformationMajorTwotone} />
   ```

---

If you have any other questions or feedback, [open an issue](https://github.com/Shopify/polaris-icons/issues/new?assignees=HYPD&labels=&template=feedback-for-polaris-icons-ui.md&title=%5BFeedback%5D+) or find us in [#polaris-tooling](https://shopify.slack.com/messages/CCNUS0FML) on Slack.