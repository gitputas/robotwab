import io
import PIL.Image as Image
from pyzbar.pyzbar import decode


def readQrCodeFromQrImage(qrCode):
    imageQrcode = Image.open(io.BytesIO(qrCode))
    decocdeQR = decode(imageQrcode)
    return decocdeQR[0].data.decode('ascii')

# readQrCodeFromQrImage("testqr.png")
if __name__ == "__main__":
    readQrCodeFromQrImage("testqr.png")