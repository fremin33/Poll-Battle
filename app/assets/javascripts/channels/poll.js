App.chat = App.cable.subscriptions.create(
  {
    channel: "PollChannel",
    poll_id: window.location.href.split("/").pop(),
  },
  {
    connected: function() {
      console.log("[CONNECTED]");
    },
    received: function(data) {
      $('#f_count').text(data.f_count);
      $('#s_count').text(data.s_count);
      $('#f_percent').text(data.f_calcul + " %");
      $('#s_percent').text(data.s_calcul + " %");
    }
  }
)