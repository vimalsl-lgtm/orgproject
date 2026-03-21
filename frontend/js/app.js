const API = "http://localhost:3306";

// MOVIES
fetch(`${API}/movies`)
  .then(res => res.json())
  .then(data => {
    const container = document.getElementById("movies");

    if (container) {
      data.forEach(m => {
        container.innerHTML += `
          <div class="card">
            <h3>${m.title}</h3>
            <p>⭐ ${m.rating}</p>
          </div>
        `;
      });
    }
  });

// TV SHOWS
fetch(`${API}/tv_shows`)
  .then(res => res.json())
  .then(data => {
    const container = document.getElementById("tv_shows");

    if (container) {
      data.forEach(t => {
        container.innerHTML += `
          <div class="card">
            <h3>${t.title}</h3>
            <p>⭐ ${t.rating}</p>
          </div>
        `;
      });
    }
  });

// USERS (footer)
fetch(`${API}/users`)
  .then(res => res.json())
  .then(data => {
    const list = document.getElementById("users");

    if (list) {
      data.forEach(u => {
        list.innerHTML += `<li>${u.name} | ${u.email} | ${u.phone}</li>`;
      });
    }
  });