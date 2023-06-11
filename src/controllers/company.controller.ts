import express from 'express';
import companySvc from '../services/company.service'

const getCompanies = async (req: express.Request, res: express.Response) => {
  const companies = await companySvc.getCompanies();
  res.status(200).json(companies);
}

export default {
  getCompanies,
}