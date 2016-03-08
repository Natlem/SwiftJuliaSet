//JuliaSet object file

public class JuliaSet {

    let iteration_number = 200
    let magnitude_threshold = 1000.0 
    let scale = 1.5 //Handle Zoom after
    let c = mComplex(real: -0.8,img: 0.156) // value for our complex system
    var dimx = 100
    var dimy = 100

    func getJuliaValue(ex ix: Int,ey iy: Int) -> Int {
        let realx = scale * Double(dimx / 2 - ix) / Double(dimx / 2)
        let imgy = scale * Double(dimy / 2 - iy) / Double(dimy / 2)
        
        var z = mComplex(real : realx,img: imgy)

        for _ in 1...iteration_number {
            z = z * z + c
            if z.getMagnitudeSqr() > magnitude_threshold {
                return 1
            }
        }
        return 0
    }

    func printFractal() {
        for i in 1...dimy {
            for j in 1...dimx {
                if getJuliaValue(ex : j, ey: i) == 1 {
                    print(" ", terminator:"")
                }
                else {
                    print("X", terminator:"")
                }
            }
            print("")
        }
    }
}
