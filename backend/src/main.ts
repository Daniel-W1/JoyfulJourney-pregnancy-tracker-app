import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { ExpressAdapter } from '@nestjs/platform-express';
import * as express from 'express';

async function bootstrap() {
  const server = express();
  server.use(express.json({ limit: '50mb' }));
  server.use(express.urlencoded({ limit: '50mb', extended: true }));

  const app = await NestFactory.create(AppModule, new ExpressAdapter(server));
  await app.listen(3000);

  // change
}
bootstrap();