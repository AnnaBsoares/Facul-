// Selecting the clock hand elements using their CSS classes
const hr = document.querySelector('.hand.hour-hand');
const min = document.querySelector('.hand.min-hand');
const sec = document.querySelector('.hand.second-hand');

// Setting up the interval to update clock hands every second
setInterval(() => {
    // Getting the current time using the Date() function
    let day = new Date();
    let hour = day.getHours();
    let minutes = day.getMinutes();
    let seconds = day.getSeconds();

    // Calculating rotations for each clock hand
    let hrrotation = (30 * hour) + (0.5 * minutes);
    let minrotation = 6 * minutes;
    let secrotation = 6 * seconds;

    // Applying rotation transforms to clock hand elements
    hr.style.transform = `translate(-10%,50%) rotate(${hrrotation}deg)`;
    min.style.transform = `translate(-50%,-100%) rotate(${minrotation}deg)`;
    sec.style.transform = `translate(-50%,-85%) rotate(${secrotation}deg)`;
}, 1000); // Update every 1000ms (1 second)
