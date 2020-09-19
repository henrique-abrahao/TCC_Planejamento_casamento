import styled from 'styled-components';

export const Container = styled.ul`
  margin-top: 20px;

  li{
    display: flex;
    justify-conten: space-between;
    align-items: center;
    color: #444;

    & + li{
      margin-top: 15px;
    }
  }
`;

export const FileInfo = styled.div``;

export const Preview = styled.img``;
