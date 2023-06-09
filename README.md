# Basic CMS Backend
## This project uses Strapi as a backend for basic content pages

* git clone --depth 1 git@github.com:tbcarver/basic-cms-backend.git <new-name> && rm -rf ./<new-name>/.git
* Postgress backend (suggest supabase)
* Docker image with lambda deploy
* Api Gateway for http access
* Find and replace 'basic-cms-backend' for a custom name
* `cp .env.example .env.prod`
* .env.prod
  * Generate keys
  * Set database settings
* `npm i`
* `npm run build:deploy` 

Details on how to do serverless with strapi
https://blog.vikfand.com/posts/serverless-strapi-4-guide/

To develop (development mode)
*Ensure no build directory*
`rm -rf build && rm -rf .cache`
`npm run dev`

To build and deploy to first time to aws:
`npm run build:prod`
`npm run build:docker`
`npm run deploy:prod`

To build and deploy just image and function to aws:
`npm run build:deploy`

To build and run locally:
`npm run build:offline`
`build:docker:offline`
`run:docker`

To send a message locally:
`curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{}'`

To run strapi without serverless:
`strapi develop`

Strapi comes with a full featured [Command Line Interface](https://docs.strapi.io/developer-docs/latest/developer-resources/cli/CLI.html) (CLI) which lets you scaffold and manage your project in seconds.

### `develop`

Start your Strapi application with autoReload enabled. [Learn more](https://docs.strapi.io/developer-docs/latest/developer-resources/cli/CLI.html#strapi-develop)

*Ensure no build directory*
`rm -rf build && rm -rf .cache`

```
npm run develop
# or
yarn develop
```

### `start`

Start your Strapi application with autoReload disabled. [Learn more](https://docs.strapi.io/developer-docs/latest/developer-resources/cli/CLI.html#strapi-start)

```
npm run start
# or
yarn start
```

### `build`

Build your admin panel. [Learn more](https://docs.strapi.io/developer-docs/latest/developer-resources/cli/CLI.html#strapi-build)

```
npm run build
# or
yarn build
```

## ⚙️ Deployment

Strapi gives you many possible deployment options for your project. Find the one that suits you on the [deployment section of the documentation](https://docs.strapi.io/developer-docs/latest/setup-deployment-guides/deployment.html).

## 📚 Learn more

- [Resource center](https://strapi.io/resource-center) - Strapi resource center.
- [Strapi documentation](https://docs.strapi.io) - Official Strapi documentation.
- [Strapi tutorials](https://strapi.io/tutorials) - List of tutorials made by the core team and the community.
- [Strapi blog](https://docs.strapi.io) - Official Strapi blog containing articles made by the Strapi team and the community.
- [Changelog](https://strapi.io/changelog) - Find out about the Strapi product updates, new features and general improvements.

Feel free to check out the [Strapi GitHub repository](https://github.com/strapi/strapi). Your feedback and contributions are welcome!

## ✨ Community

- [Discord](https://discord.strapi.io) - Come chat with the Strapi community including the core team.
- [Forum](https://forum.strapi.io/) - Place to discuss, ask questions and find answers, show your Strapi project and get feedback or just talk with other Community members.
- [Awesome Strapi](https://github.com/strapi/awesome-strapi) - A curated list of awesome things related to Strapi.

---

<sub>🤫 Psst! [Strapi is hiring](https://strapi.io/careers).</sub>
