import { View } from './style';
import React from 'react'
import Header from '../Header/index'

export default props =>
    <React.Fragment>
        <Header {...props} />
        <View className="content container-fluid">
            <div className="p-3 mt-3">
                {props.children}
            </div>
        </View>
    </React.Fragment>