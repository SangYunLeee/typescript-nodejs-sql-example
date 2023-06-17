import express from "express";
import companyRouter from './company.router';
import exampleRouter from './example.router';
import middleware from "../middlewares/middleware";

const router = express.Router();
router.use('/companies', companyRouter);
router.use('/examples', exampleRouter);


router.use(middleware.errorHandler);
export default router;