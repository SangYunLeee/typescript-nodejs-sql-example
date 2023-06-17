import express from 'express';
import dataSource from "./database";

const createCompetitions = async (req: express.Request, res: express.Response) => {
  const examples = await dataSource.query(
    `
      INSERT INTO
        competition
        (competition_name, competition_date, race_type, host_user_id)
      VALUES
        (?,?,?,?)
    `,
    ["서울 대회", '1998-01-23 12:45:56', 1, 1]
  );
  res.status(200).json(examples);
}

const getCompetitions = async (req: express.Request, res: express.Response) => {
  const competitions = await dataSource.query(
    `
      SELECT
        competition_name,
        competition_date,
        race_type,
        host_user_id
      FROM
        competition
    `
  );
  res.status(200).json(competitions);
}

export default {
  createCompetitions,
  getCompetitions,
}
