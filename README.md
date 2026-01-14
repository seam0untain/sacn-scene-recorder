## SACN Scene Recorder

💡 This web application is used to record sACN scenes and play them back using HTP merge. Features:

-   Unlimited number of scenes.
-   Scenes can be renamed, color-coded, categorized and reordered.
-   Faders can be enabled on a per-scene basis.
-   Per-scene fade time.
-   Sinus wave generator with shuffled offsets for each channel.
-   Multiple universes.
-   Control via Website UI, WebSockets or MQTT. BitFocus companion (including feedback) is supported via WebSockets.

The project uses Next.js, but with a custom Express.js server to enable the sACN, WebSockets, and MQTT services to run simultaneously. Tailwind is used for styling. State in the back end is managed through redux and stored in a sqlite3 database.

## Yarn commands

Run the development server using:

```
yarn dev
```

Initiate the database using:

```
yarn migrate
```

Format the code before commiting with:

```
yarn format
```

To build and start the server (for deployment):

```
yarn build
yarn start
```

## Configuration

Available configuration i _.env.local_:

```
CATEGORIES_JSON=[JSON list of categories, for example '["Category 1", "Category 2"]']
UNIVERSES_JSON=[JSON list of universes, for example '[1,2,3,4]', defaults to '[1]']
SACN_PRIORITY=[Prio as number, for example 80, defaults to 90]
PORT=[HTTP Port as number, for example 80, defaults to 3000]

MQTT_TOPIC=[MQTT Topic for this service, optional]
MQTT_BROKER=[MQTT broker url including mqtt protocol, optional]
MQTT_BROKER_USER=[MQTT broker username, optional]
MQTT_BROKER_PASSWORD=[MQTT broker password, optional]
MQTT_SOURCE_ID=[MQTT source id for use in messages, optional]
```
