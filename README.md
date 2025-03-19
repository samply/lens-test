Run `./test.bash <app>` to locally run one of the supported [Lens](https://github.com/samply/lens)-based applications, an instance of [Spot](https://github.com/samply/spot), and a [Beam](https://github.com/samply/beam) proxy.

| Application                                                            | Testing URL                   |
| ---------------------------------------------------------------------- | ----------------------------- |
| [ccp-explorer](https://github.com/samply/ccp-explorer)                 | http://localhost:4123/        |
| [bbmri-sample-locator](https://github.com/samply/bbmri-sample-locator) | http://localhost:4124/search/ |

Add the flag `-local-lens` to replace the application's `@samply/lens` dependency with your local Lens repository. Run `npx vite build --watch --emptyOutDir false` in the Lens repository to automatically reload the application when you make changes to Lens.

Add the flag `-dockerfile` to use the `Dockerfile` in the application repository.

## Configuration

Configure the following options in `.env`:

```
# your beam site id, e.g. dev-tim
SITE_ID=
# directory with your beam private key and the beam root certificates, see below for details
PKI_DIR=$HOME/pki
# directory that contains your application repositories
PROJECT_DIR=$HOME/projects
# defaults to <PROJECT_DIR>/lens
LENS_DIR=
```

You can optionally override options per application in `.env.<app>`:

```
# defaults to <PKI_DIR>/<BROKER_ID>/<SITE_ID>.priv.pem
PRIVKEY_FILE=
# defaults to <PKI_DIR>/<BROKER_ID>/root.crt.pem
ROOT_CRT_FILE=
# defaults to <PROJECT_DIR>/<app>
APP_DIR=
```