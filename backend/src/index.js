import app from './app'
import config from './config'

app.listen(config.port, ()=>{
    console.log(`🚀 Backend is listening on ${config.port}... 🚀`)
})
