const errorOccurred = (err, _req, res) => {
	console.error(err);
	return res.status(500).json({
		message: `${err}`,
	});
};

export default errorOccurred;
