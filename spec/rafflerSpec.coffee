describe "Raffler Class",  ->
	it "should define an application object", ->
		expect(Raffler).toBeDefined()

	describe "Raffler Model", ->
		entry = new Raffler.Models.Entry
		
		it "should define a basic model", ->
			expect(Raffler.Models).toBeDefined()

		it "should create an Entry model", ->			
			expect( entry).toBeDefined()

		it "should provide the correct defaults for the attributes on the entry model", ->
			expect(entry.attributes.name).toBeDefined()
			expect(entry.attributes.winner).toBeDefined()
		it "should provide appropriate default values to default attributes", ->
			expect(entry.get('name')).toBe('')
			expect(entry.get('winner')).toBeFalsy()

	describe "Raffler Collection", ->
		Entries = new Raffler.Collections.Entries

		it "should be defined", ->
			expect(Raffler.Collections.Entries).toBeDefined()

		it "should use the Entry model", ->
			expect(Entries.model).toEqual(Raffler.Models.Entry)

		it "should use LocalStorage", ->
			expect(Entries.localStorage).toBeDefined();



	describe "Raffler Router", ->
		Router = new Raffler.Routers.Entries

		it "should define a default route as index", ->
			expect(Router.routes['']).toBe('index')
		it "should initialize an internal collection", ->
			expect(Router.collection).toBeDefined()

		





