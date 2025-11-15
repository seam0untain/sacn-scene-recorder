const sqliteConfiguration = {
    client: 'better-sqlite3',
    connection: {
        filename: './config/scenes.sqlite3',
    },
    useNullAsDefault: true,
};

const config = {
    production: sqliteConfiguration,
};

export default config;
