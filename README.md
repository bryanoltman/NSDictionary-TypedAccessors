NSDictionary+TypedAccessors
===========================

This category builds upon [`NSDictionary`][NSDictionary]'s `objectForKey:` function to add more specific return types. If the value returned from `objectForKey:` is not of the desired type, this will attempt to coerce that value into the desired type.

I wrote this category because XML does not map directly to JSON. For example, most XML-to-JSON serializers would not convert XML collection with a single value into a JSON array. For example, this:

	<omg-so-many-objects>
		<one-object>some-value</one-object>
	</omg-so-many-objects>

gets converted to this:
	
	omg-so-many-objects:some-value

instead of this:

	omg-so-many-objects:[
		some-value
	]

To solve this problem, you would use `arrayForKey:`, which would place `some-value` into an array.

All objects returned from functions in this category are autoreleasing, so this code works equally well with or without ARC.


[NSDictionary]:https://developer.apple.com/library/mac/#documentation/Cocoa/Reference/Foundation/Classes/nsdictionary_Class/Reference/Reference.html