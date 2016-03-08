
public struct mComplex {
    var real: Double
    var img: Double

    
    
    func getMagnitudeSqr() -> Double {
        return self.real * self.real + self.img * self.img
    }
}

func + (ilhs : mComplex,irhs: mComplex) -> mComplex {
    return mComplex(real: ilhs.real + irhs.real, img: ilhs.img + irhs.img) 
}

func *(ilhs : mComplex, irhs: mComplex) -> mComplex {
    return mComplex(real: ilhs.real * irhs.real - ilhs.img * irhs.img, img: ilhs.img * irhs.real + ilhs.real * irhs.img) 
}

