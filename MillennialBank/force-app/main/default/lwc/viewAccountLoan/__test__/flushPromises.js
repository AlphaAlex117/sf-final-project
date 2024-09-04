// Utility function to flush promises
const flushPromises = () => new Promise((resolve) => process.nextTick(resolve));

