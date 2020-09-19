import React from 'react';

import Dropzone from 'react-dropzone'

import { DropContainer, UploadMessage } from './styles';


renderDragMessage = (isDragActive, isDragReject) =>{
  if(!isDragActive){
    return <UploadMessage>Arraste arquivos aqui...</UploadMessage>
  }
}

function UploadImage() {
  return(
    <Dropzone accept="image/*" onDropAccepted={() => {}}>
      { ({ getRootProps, getInputProps, isDragActive, isDragReject}) => (
          <DropContainer 
            {...getRootProps()}
            isDragActive={isDragActive}
            isDragReject={isDragReject}>
              <input {...getInputProps()}/>

              {this.renderDragMessage(isDragActive, isDragReject)}
            </DropContainer>
      )}
    </Dropzone>
  );
}

export default UploadImage;