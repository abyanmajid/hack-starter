import cookieParser from "cookie-parser";
import cors from "cors";
import express from "express";

import errorOccurred from "./middleware/errorOccurred";
import notFound from "./middleware/notFound";
import router from "./routes";

const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cookieParser());

app.use(
	cors({
		origin: "*",
		methods: ["GET", "POST", "PUT", "DELETE", "OPTIONS", "PATCH"],
		allowedHeaders: [
			"Content-Type",
			"Authorization",
			"X-Requested-With",
			"X-Access-Token",
			"Accept",
		],
		credentials: true,
	}),
);

// Route groups
app.use("/", router);

// Error handling
app.use(notFound);
app.use(errorOccurred);

export default app;
