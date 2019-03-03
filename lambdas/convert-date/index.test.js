const handler = require('./index').handler

test('should throw an error', async () => {
  await expect(handler()).rejects.toThrow('child "date" fails because ["date" is required]')
})

test('should return a converted date', async () => {
  const result = await handler({ date: '2019-03-03' })
  expect(result).toBe('March 3rd 2019, 12:00:00 am')
})
