import express from "express";
import healthCheck from "./handlers/health.js";

const router = express.Router();

router.get("/health", healthCheck);

export default router;
