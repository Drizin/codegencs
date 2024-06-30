﻿namespace SampleProjectWithSourceGenerator
{
    public partial class AnotherSampleClass
    {
        public AnotherSampleClass()
        {
            Initialize(); // Guess what? This method will be generated on the fly!
            var myFirstClass = new MyFirstClass(); // this class is physically generated by Template1.csx (Template1.generated.cs)
            var mySecondClass = new MySecondClass(); // this class is generated in-memory by Template2.csx
        }
    }
}
