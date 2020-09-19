require('dotenv').config();

import multer from "multer";
import path from 'path';
import crypto from 'crypto';
import * as aws from 'aws-sdk'
const multerS3 = require('multer-s3');

const storageTypes = {
  local: multer.diskStorage({
    destination: (req, file, cb) => {
      cb(null, path.resolve(__dirname, '..', '..', 'tmp', 'uploads'),)
    },
    filename: (req, file, cb) => {
      crypto.randomBytes(16, (err, hash) => {
        if (err) cb(err, `${err}`);

        file.key = `${hash.toString('hex')}-${file.originalname}`;

        cb(null, file.key);
      })
    }
  }),

  s3: multerS3({
    s3: new aws.S3(),
    bucket: 'uploadtcchenrique',
    contentType: multerS3.AUTO_CONTENT_TYPE,
    acl: 'public_read',
    key: (req: any, file: { originalname: any; }, cb: (arg0: Error | null, arg1: string) => void) =>{
      crypto.randomBytes(16, (err, hash) => {
        if (err) cb(err, `${err}`);

        const fileName = `${hash.toString('hex')}-${file.originalname}`;

        cb(null, fileName);
      })
    }
  })
}

module.exports = {
  dest: path.resolve(__dirname, '..', '..', 'tmp', 'uploads'),
  storage: storageTypes['local'],
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