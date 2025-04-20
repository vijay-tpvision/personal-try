export default defineEventHandler((event) => {
  if (event.path === '/health') {
    return { status: 'ok' }
  }
})
