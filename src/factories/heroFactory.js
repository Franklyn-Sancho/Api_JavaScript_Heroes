const HeroRepository = require ('./../repositories/heroRepository')
const HeroService = require('./../services/heroService')

const { join } = require('path')
const filename = join(_dirname, "../../database", 'data.json')

const generateInstance = () => {
	const heroRepository = new HeroRepository({
		file: filename
	})
	const heroService = new HeroService({
		heroRepository
	})

	return heroService
}

module.exports = { generateInstance }
