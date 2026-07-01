const ports = {
  optimizer: "3000",
  electrodeSettings: "3003",
  neuroimaging: "3002",
  ...window.DBS_PORTS,
};

document.querySelectorAll("[data-port-label]").forEach((label) => {
  const service = label.getAttribute("data-port-label");
  label.textContent = ports[service];
});

document.querySelectorAll("[data-service]").forEach((button) => {
  button.addEventListener("click", () => {
    const { protocol, hostname } = window.location;
    const service = button.getAttribute("data-service");
    const port = ports[service];
    window.location.href = `${protocol}//${hostname}:${port}`;
  });
});
