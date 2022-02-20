import createGreeting from './crerateGreeting.mjs'

const uniqueName = 'func09'
const message = createGreeting('func09')

if (message.match(uniqueName)) {
  console.log('You are func09!')
} else {
  console.log('Who are you???')
}
