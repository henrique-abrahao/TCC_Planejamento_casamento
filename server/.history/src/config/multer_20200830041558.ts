import multer from "multer";
import path from 'path';
import crypto from 'crypto';

module.exports = {
  dest: path.resolve(__dirname, '..', '..', 'tmp', 'uploads'),
  storage: multer.diskStorage({
    destination: (req, file, cb) => {
      cb(null, path.resolve(__dirname, '..', '..', 'tmp', 'uploads'),)
    },
    filename: (req, file, cb) => {
      crypto.randomBytes(16, (err, hash) => {
        if (err) cb(err, `${err}`);

        const fileName = `${hash.toString('hex')}-${file.originalname}`;

        cb(null, fileName);
      })
    }
  }),
  limits: {
    fileSize: 25 * 1024 * 1024,
  },
  fileFilter: (req: any, file: { mimetype: string; }, cb: (arg0: Error | null, arg1: boolean | undefined) => void) => {
    const allowedMimes = [
      'image/jpeg',
      'image/pjpeg',
      'image/png',
    ];

    if (allowedMimes.includes(file.mimetype)) {
      cb(null, true);
    } else {
      cb(new Error("Invalid file type."), false)
    }
  }
}