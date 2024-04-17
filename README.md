<H1 align="center">Flutter screen ratio </H1>
<p align="center">🚀 Development of a screen ratio structure for future references</p>

## Resources Used
Flutter 3.3.5


## Creation of the Sizes class as a singleton

A singleton is an instance of a class that is shared globally throughout the application and can be accessed from anywhere within the code. In other words, a singleton in Flutter is a class that ensures that only a single instance of itself is created and that that single instance is globally accessible.


- The Sizes class is responsible for managing the screen dimensions.
- Sizes._(); declares a private constructor, which means the class cannot be instantiated directly from outside the class.
- _width and _height are private variables to store the screen width and height, respectively, initialized to 0.
- _designSize is a constant representing the default design size, defined as 414.8 x 896.0.
- _instance is a singleton instance of the Sizes class, ensuring that only one instance of the class is created.
- factory Sizes() => _instance; is a factory method that returns the single instance of the Sizes class, accessing the singleton instance and its properties
- init is a static method to initialize dimensions based on design context and size. It gets the device dimensions via - MediaQuery, or uses the default design size if it is not available.

<div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Proporcao/assets/157809964/c8648f82-0984-4a62-8d1b-cb19d08c1542" style="width:80%">
</div>

## SizesExt Extension


- The SizesExt extension allows you to add functionality to number types (num).
- get w is a getter to calculate relative width, taking into account screen width and default design size.
- get h is a getter to calculate relative height taking into account screen height and default design size.

<div align="center">
 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Proporcao/assets/157809964/5c0a7201-836f-4e24-9eec-4f6dc703a11e" style="width:80%">
</div>

## Operating Logic

### Loading Screen
WidgetsBinding.instance.addPostFrameCallback(...) is used to ensure that the Sizes.init(context) method is called after the next Widget is fully rendered, ensuring that the Loading Screen layout context is available and that the init method can perform the desired operations based on that context


<img src="https://github.com/lucasmargui/Flutter_Estrutura_Proporcao/assets/157809964/dd7059ef-7615-424c-ab1f-6dc487aa6e32" style="width:80%">

Based on the Loading Screen context, it executes the init function and stores the dimensions of the current screen through MediaQuery.

<img src="https://github.com/lucasmargui/Flutter_Estrutura_Proporcao/assets/157809964/9673b718-66cc-44e6-8d2b-8a7c94080e73" style="width:80%">

### Home Screen
As Sizes is a singleton class, we can access its properties and we will create an extension by adding functionality to Dart's native Num Class and accessing the properties of the Sizes class that were changed when the Loading Screen was loaded, calculating the positioning proportion.

- this * Sizes._instance._width: size of the device that was passed through init when the loading screen was loaded
- Sizes._designSize.height: predefined size

 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Proporcao/assets/157809964/734bd656-875f-474e-847a-b16f6dff4dbf" style="width:80%">

This way, we can access the functionality added in Dart's num class through extensions and use the calculated proportion between different screen sizes.

 <img src="https://github.com/lucasmargui/Flutter_Estrutura_Proporcao/assets/157809964/39908356-86e5-47b8-ad1e-8e27f73fdc7f" style="width:80%">
