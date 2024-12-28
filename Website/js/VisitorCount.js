const counter = document.querySelector(".counter-number");
async function updateCounter() {
    let response = await fetch('https://qkuj473tlksry23qkjkwe2mtjq0kcpsc.lambda-url.us-east-2.on.aws/');
    let data = await response.json();
    counter.innerHTML = `Views: ${data}`;
}

updateCounter();