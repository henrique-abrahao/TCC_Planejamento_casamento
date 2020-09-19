import React from 'react';

import Dropzone from 'react-dropzone'

// import { Container } from './styles';

function UploadImage() {
  return(
    <Dropzone accept="image/*" onDropAccepted={() => {}}>

    </Dropzone>
  );
}

export default UploadImage;