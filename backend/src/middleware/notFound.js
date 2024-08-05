const notFound = (_req, res) => {
    return res.status(404).json({ message: 'not found' });
}

export default notFound
