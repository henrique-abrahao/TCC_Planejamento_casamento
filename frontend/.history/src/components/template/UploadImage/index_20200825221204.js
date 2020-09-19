import React from 'react';

import Dropzone from 'react-dropzone'

import { DropContainer, UploadMessage } from './styles';

function UploadImage() {
  return(
    <Dropzone accept="image/*" onDropAccepted={() => {}}>
      { ({ getRootProps, getInputProps, isDragActive, isDragReject}) => (

      )}
    </Dropzone>
  );
}

export default UploadImage;