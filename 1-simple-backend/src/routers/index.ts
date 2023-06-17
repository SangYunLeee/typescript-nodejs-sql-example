import express from "express";
import competitionRouter from './competition.router';
import middleware from "../middlewares/middleware";

const router = express.Router();

router.use('/competitions', competitionRouter);

router.use(middleware.errorHandler);
export default router;
