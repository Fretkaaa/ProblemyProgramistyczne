const replies = [
    "odp2",
    "odp2",
    "odp3" //i tak dalej...
];

function sendMessage() {
    const messageInput = document.getElementById('messageInput');
    const messageText = messageInput.value;
    const chat = document.querySelector('#chat');
    const newMessage = document.createElement('div');
    newMessage.classList.add('message', 'jolanta');
    newMessage.innerHTML = "<img src='Jolka.jpg' alt='Jolanta Nowak'><p>" + messageText + "</p>";
    chat.appendChild(newMessage);
    newMessage.scrollIntoView();
    messageInput.value = '';
}

function generateRandomReply() {
    const randomIndex = Math.floor(Math.random() * replies.length);
    const replyText = replies[randomIndex];
    const chat = document.querySelector('#chat');
    const newMessage = document.createElement('div');
    newMessage.classList.add('message', 'krzysztof');
    newMessage.innerHTML = "<img src='Krzysiek.jpg' alt='Krzysztof Łukasiński'><p>" + replyText + "</p>";
    chat.appendChild(newMessage);
    newMessage.scrollIntoView();
}

//Made by Chr1skyy
