// rcc
import React, { Component } from 'react'
import axios from 'axios'
import { Link } from 'react-router-dom'
import styled from 'styled-components'
import ActivityList from './ActivityList'




export default class CityPage extends Component {
    state = {
        city: {},
        activities: [],
    }
    //Tell's us that we are going to grab the above information first, like the array's etc.
    componentWillMount = () => {
            this.showCity()
        //params will take the i.d from above url: city.id match it
        
        // await tell's it to wait to get cityId info first and then set the state
    }

    showCity = async () => {
        try {
            //1st call to the database, cityId will be the id from above url that belong's to that city
            const cityId = this.props.match.params.id

            //Database call
            const response = await axios.get(`/api/cities/${cityId}`)
            // cityId is getting the params from the url and passing it down and saving
            // to the const below and looking it up through the cityId

            //Database Call
            const allActivities = await axios.get(`/api/activities/index`)
            console.log(allActivities)
            // save all activities to the above const from api/activities
            const specificActivity = allActivities.data
            // get all the activities data and save it to the const

            const oneActivity = specificActivity.filter((activity) => {
                return activity.city_id == cityId
            // get the specificActivity and filter it to match the current city-id
            })

            console.log ("Activities went through", allActivities)
            
            this.setState({
                city: response.data,
                //(this.setState is when you are ready to make the change of the state)
                activities: oneActivity,
            })
        }
        catch (err) {
            console.log(err)
        }
    }


    render() {
        return (
            <container>
                <cityContainer>
                    <CityImage src={this.state.city.photo_url} alt={this.state.city.name}></CityImage>
                    <cityName>{this.state.city.name}</cityName>
                    <cityPopulation>Population: {this.state.city.population}</cityPopulation>
                    <citySummary>Summary: {this.state.city.summary}</citySummary>
                    <div>
                    </div>
                    <buttonDiv>
                        <Link to="/"><citiesButton type="button">Back to Cities</citiesButton></Link>
                    </buttonDiv>
                </cityContainer>

                <activityContainer>
                    {this.state.activities.map(activity => (
                        <Link to={`/cities/${activity.id}`}>

                            <city key={activity.id}>
                                <img src={activity.photo_url} alt="picture of city" className="city-img" />
                                <city-name>{activity.name}</city-name>
                            </city>
                        </Link>
                        
                    ))}
                </activityContainer>
          

            </container>


        )
    }
}


const cityPopulation = styled.div`
    font-size:45px;
`

const CityImage = styled.img`
    width: 40vw;
    height: 400px;
    margin: 15px auto;
    overflow: hidden;
    position: relative;
`

const cityName = styled.div`
    margin-right: 50px;
`

// const city = styled.div`
//         display: flex;
//         flex-wrap: wrap;
//         justify-content: center;
//         flex-direction: row;
//     `

//     .container {
//     width: 100 %;
//     display: flex;
//     flex - direction: column;
//     align - items: center;
// }

// .city - container {
//     width: 100 %;
//     height: 400px;
//     display: flex;
//     align - items: center;
//     justify - content: space - between;
// }
// .city - preview {
//     width: 60vw;
//     height: 400px;
//     margin: 15px auto;
//     overflow: hidden;
//     position: relative;
//     text - align: center;
// }
// .city - img {
//     top: 50 %;
//     /* left: 50%; */
//     transform: translate(0, -25 %);
// }
// .city - name {
//     position: absolute;
//     top: 50 %;
//     left: 50 %;
//     transform: translate(-50 %, -50 %);
//     color: #FFC476;
//     font - size: 60px;
// }
// .city - button {
//     border: 1px solid black;
//     max - width: 250px;
//     min - width: 150px;
//     display: flex;
//     justify - content: center;
//     align - items: center;
//     height: 40px;
//     transition: all 0.25s ease;
//     background: #ffb10a;
//     text - decoration: none;
// }
