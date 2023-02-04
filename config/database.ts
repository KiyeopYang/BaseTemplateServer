export default ({ env }) => ({
  connection: {
    client: 'postgres',
    connection: {
      host: env('DATABASE_HOST', 'petgpt.cby2xvm9mdjq.ap-northeast-2.rds.amazonaws.com'),
      port: env.int('DATABASE_PORT', 5432),
      database: env('DATABASE_NAME', 'petgpt'),
      user: env('DATABASE_USERNAME', 'postgresql'),
      password: env('DATABASE_PASSWORD', 'dfggv#QhVv4^SZ'),
      ssl: env.bool('DATABASE_SSL', false),
    },
  },
});
