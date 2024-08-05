const healthCheck = (_req, res) => {
	res.status(200).json({
		message: "Hello, World!",
		data: null,
	});
};

export default healthCheck;
